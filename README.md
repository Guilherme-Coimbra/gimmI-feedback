# GimmI Feedback

A static website for collecting structured feedback from scientists on AI-generated answers to bio research questions. Hosted on GitHub Pages, backed by a Supabase PostgreSQL database.

**Live URL:** [https://guilherme-coimbra.github.io/gimmI-feedback/](https://guilherme-coimbra.github.io/gimmI-feedback/)

---

## Features

1. **Submit a Question** (`submit.html`)
   - Scientists suggest questions for future AI evaluation.
   - They choose the preferred answer length (short or long) and can describe what a good answer should cover.

2. **Compare Answers** (`compare.html`)
   - A question is shown with two answers side by side; the reviewer picks the better one.
   - Questions with 3–4 answers run as a bracket: the reviewer only judges pairs, and a full ranking is derived from the results.
   - Questions already answered through the original Google Form are skipped, so nobody is asked to repeat work.

3. **Grade Answers** (`grade.html`)
   - A single answer is rated against 3 rubric criteria: Scientific Accuracy, Depth of Specialization, Evidence Traceability.
   - Each criterion has 3 score levels (5 / 3 / 1) with descriptive labels, plus optional free-text comments.
   - Each reviewer grades every available answer exactly once.

4. **Dashboard** (`dashboard.html`)
   - Headline counts, score distributions, and preference results.
   - Preference charts show how often each model took each position (1st / 2nd / 3rd), globally and per question, plus a transition matrix of which model tends to place 2nd behind each winner.
   - Submitted questions are listed and can be revised in place by any reviewer; every edit is kept as a new version with a version picker.

### Reviewer identity

There are no accounts. Reviewers type an ID of their choosing, which is kept in `localStorage` and used to track what they have already done.

The 8 scientists who answered the original Google Form already have data stored under `forms_respondent_N`. Each was given a one-time **claim link**:

```
https://guilherme-coimbra.github.io/gimmI-feedback/?claim=forms_respondent_3
```

They pick the ID they want to use, it is recorded in `reviewer_aliases` as an alias for the seeded one, and from then on that ID works on any device without the link. `index.html` is the only page that resolves aliases; every other page just reads `voter_id`.

### Theme

Dark by default, with a toggle in the corner persisted to `localStorage`. Chart colours have separate light and dark ramps, each chosen for its own background.

---

## Tech Stack

- **Frontend:** plain HTML, CSS, vanilla JavaScript — no build step, no framework.
- **Charts:** Chart.js via CDN.
- **Hosting:** GitHub Pages.
- **Database:** Supabase (PostgreSQL, free tier), accessed with the Supabase JS client via CDN.

---

## Project Structure

```
.
├── index.html                       # Reviewer ID entry, claim links, menu
├── submit.html                      # Form to submit new questions
├── compare.html                     # Bracket-based answer comparison
├── grade.html                       # Single-answer rubric grading
├── dashboard.html                   # Results, charts, editable submissions
├── style.css                        # Shared stylesheet, light + dark themes
├── theme.js                         # Theme toggle, applied before first paint
├── answer-format.js                 # Shared answer-text normalisation
│
├── supabase-schema.sql              # v1  questions, votes, submissions
├── supabase-schema-v2.sql           # v2  answers table, revised votes
├── supabase-schema-v3.sql           # v3  pair tracking in votes
├── supabase-schema-v4.sql           # v4  grading tables
├── supabase-schema-v5.sql           # v5  drops votes, adds preference_votes
├── supabase-schema-v6.sql           # v6  reviewer_aliases
├── supabase-schema-v7.sql           # v7  submission_versions
├── supabase-schema-v8.sql           # v8  versioned preferred_length
│
├── supabase-initial-data-seed.sql   # Questions, answers, grade items
├── supabase-responses-seed.sql      # The 8 Google Form respondents
├── supabase-seed-submissions.sql    # 20 collected question suggestions
├── supabase-fix-newlines.sql        # One-off repair of literal \n in answers
├── supabase-test-data.sql           # Sample question + answers
└── supabase-test-data-grading.sql   # Sample grade items
```

Schema files are cumulative migrations — apply them in order on a fresh database.

---

## Database Schema

### `questions`
| Column | Type | Description |
|---|---|---|
| `external_qid` | text | Question ID from your local database (PK) |
| `question_text` | text | The question |

### `answers`
One question has many answers, one per model.

| Column | Type | Description |
|---|---|---|
| `external_qid` | text | References `questions.external_qid` |
| `label` | text | A, B, C, … |
| `answer_text` | text | The generated answer |
| `metadata` | jsonb | `{"model": "..."}`, used to label charts |

### `preference_votes`
One row per pairwise comparison. Replaced the old `votes` table in v5.

| Column | Type | Description |
|---|---|---|
| `external_qid` | text | The question being judged |
| `voter_id` | text | The reviewer's ID |
| `round_number` | int | Bracket round; **0 means a round-robin vote carried over from the Google Form** |
| `match_in_round` | int | Match within the round |
| `answer_a_label` | text | First answer shown |
| `answer_b_label` | text | Second answer shown |
| `winner_label` | text | The one the reviewer picked |

### `submissions`
Questions suggested for future evaluation. This row is **version 1** of a submission.

| Column | Type | Description |
|---|---|---|
| `id` | bigint | PK |
| `voter_id` | text | Who submitted it — never sent to the browser |
| `question_text` | text | The suggested question |
| `answer_aspects` | text | Topics a good answer should cover |
| `preferred_length` | text | `short` or `long` |

### `submission_versions`
Every revision of a submission. Append-only: nothing is updated in place, so there is no UPDATE policy.

| Column | Type | Description |
|---|---|---|
| `submission_id` | bigint | References `submissions(id)` |
| `version` | int | 2 and up; version 1 is the `submissions` row itself |
| `question_text` | text | Revised question |
| `answer_aspects` | text | Revised topics |
| `preferred_length` | text | Revised length; NULL on rows written before v8 |
| `edited_by` | text | Reviewer ID that made the revision |

`UNIQUE(submission_id, version)` makes concurrent edits collide rather than silently overwrite each other.

### `reviewer_aliases`
Maps a chosen reviewer ID to the one their existing data is stored under.

| Column | Type | Description |
|---|---|---|
| `alias_id` | text | The ID the reviewer types (PK — one ID cannot point at two people) |
| `canonical_id` | text | The ID their data lives under (UNIQUE — a claim link works once) |

### `grade_items`
Pool of question+answer pairs available for grading. Independent from `answers`.

| Column | Type | Description |
|---|---|---|
| `id` | bigint | PK |
| `external_qid` | text | Question identifier |
| `answer_id` | text | Answer identifier within that question |
| `question_text` | text | The question |
| `answer_text` | text | The answer to grade |

### `grading_criteria` / `grade_options`
The rubric and its score levels.

| Column | Type | Description |
|---|---|---|
| `id` / `criteria_id` | text | e.g. `scientific_accuracy` |
| `name`, `description` | text | Shown on the grading form |
| `score_value` | int | 5, 3 or 1 |
| `sort_order` | int | Display order |

### `gradings`
| Column | Type | Description |
|---|---|---|
| `grader_id` | text | The reviewer's ID |
| `grade_item_id` | bigint | References `grade_items(id)` |
| `scores` | jsonb | `{criterion_id: score_value, …}` |
| `comments` | text | Optional free-text feedback |

`UNIQUE(grader_id, grade_item_id)` prevents the same person grading an answer twice.

---

## Local Development

```bash
python3 -m http.server 8000
```

Then visit `http://localhost:8000`. The pages talk to the live Supabase project, so **anything you submit locally is written to real data.** Use a throwaway reviewer ID when testing.

---

## Deployment

The site auto-deploys from `main` via GitHub Pages.

1. `git checkout -b my-feature`
2. Commit your changes.
3. `git push origin my-feature`
4. Open a Pull Request, review, merge.
5. Pages updates within ~30 seconds.

`main` is protected — direct pushes are blocked.

**Cache note:** `style.css` and the `.js` files are cached aggressively. After a deploy that changes them, hard-refresh (Ctrl+Shift+R) before concluding something did not work.

---

## Security Notes

- The Supabase **Anon Key** is embedded in the public JavaScript. That is normal for client-side apps: **Row Level Security** limits it to `SELECT` on reference data and `INSERT` on votes, gradings, submissions, revisions and aliases. No table grants public `UPDATE` or `DELETE`.
- The **Service Role Key** must never appear in the frontend.
- **There is no authentication.** A reviewer ID is self-asserted, so anyone with the Anon Key could write rows under someone else's ID. This is accepted for a small, trusted, low-traffic research tool.
- **Claim links are guessable** (`forms_respondent_1` … `_8`) and the alias table accepts public inserts, so an unclaimed link could in principle be claimed by the wrong person. Claim links should be sent individually, and unclaimed ones are worth checking before a session.

---

## Known Gaps

- [ ] `preference_votes` has no uniqueness constraint, so a double submission can insert duplicate votes. The app avoids it, but the database does not enforce it.
- [ ] Grading comments are collected but not shown anywhere in the dashboard.
- [ ] No export or backup of collected responses.
- [ ] No way to restore an older version of a submitted question, only to view it.
- [ ] Bulk import of questions and answers is still manual SQL.
- [ ] No rate limiting.

---

## License

MIT — see [LICENSE](LICENSE).
