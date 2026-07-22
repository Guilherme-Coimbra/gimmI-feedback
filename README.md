# GimmI Feedback

A simple, static website for collecting structured feedback on AI-generated answers for bio research questions. Hosted on GitHub Pages and backed by a Supabase PostgreSQL database.

**Live URL:** [https://guilherme-coimbra.github.io/gimmI-feedback/](https://guilherme-coimbra.github.io/gimmI-feedback/)

---

## Features

1. **Submit a Question**
   - Scientists can suggest questions for future AI evaluation.
   - They specify the preferred answer length (short or long).
   - They can optionally describe what a good answer should cover, which helps later LLM-based validation.

2. **Compare Answers**
   - Scientists are shown a question and two generated answers side-by-side.
   - They vote for the better answer.
   - The system supports questions with more than two answers by running a full pairwise tournament (e.g., for 3 answers, it compares A vs B, A vs C, and B vs C).

3. **Grade Answers**
   - Scientists read a single answer and rate it against 3 rubric criteria: Scientific Accuracy, Depth of Specialization, and Evidence Traceability.
   - Each criterion has 3 score levels (5 / 3 / 1) with descriptive labels.
   - They can optionally add free-text comments.
   - Each reviewer grades every available answer exactly once.

---

## Tech Stack

- **Frontend:** Plain HTML, CSS, and vanilla JavaScript (no frameworks).
- **Hosting:** GitHub Pages (free, static site hosting).
- **Database:** Supabase (PostgreSQL with a free tier).
- **API:** Supabase JavaScript client loaded via CDN.

---

## Project Structure

```
.
├── index.html                    # Homepage with reviewer ID login
├── submit.html                   # Form to submit new questions
├── compare.html                  # Side-by-side answer comparison & voting
├── grade.html                    # Single-answer rubric grading
├── style.css                     # Shared stylesheet
├── supabase-schema-v2.sql      # Initial schema (questions, answers, votes, submissions)
├── supabase-schema-v3.sql        # Migration: pair-tracking in votes table
├── supabase-schema-v4.sql        # Migration: grading tables (criteria, options, items, gradings)
├── supabase-test-data.sql        # Sample question with 3 answers for testing
├── supabase-test-data-grading.sql # Sample grade items for testing the grading page
└── README.md                     # This file
```

---

## Database Schema

### `questions`
Stores the research questions.

| Column        | Type | Description                           |
|---------------|------|---------------------------------------|
| `external_qid`| text | Your local database question ID (PK)  |
| `question_text`| text| The question text                     |

### `answers`
Stores individual answers for each question. One question can have many answers.

| Column        | Type | Description                           |
|---------------|------|---------------------------------------|
| `external_qid`| text | References `questions.external_qid` |
| `label`       | text | A, B, C, etc.                         |
| `answer_text` | text | The generated answer                  |
| `metadata`    | jsonb| Model info, temperature, etc.         |

### `votes`
Stores each comparison vote, including which pair was shown and which answer won.

| Column          | Type | Description                           |
|-----------------|------|---------------------------------------|
| `external_qid`  | text | The question being evaluated          |
| `voter_id`      | text | The reviewer's ID                     |
| `option_a_label`| text | First answer shown in the pair        |
| `option_b_label`| text | Second answer shown in the pair       |
| `winner_label`  | text | The answer the voter preferred        |

### `submissions`
Stores questions suggested by scientists for future evaluation.

| Column           | Type | Description                           |
|------------------|------|---------------------------------------|
| `voter_id`       | text | Who submitted it                      |
| `question_text`  | text | The suggested question                |
| `answer_aspects` | text | Criteria a good answer should cover   |
| `preferred_length`| text| `short` or `long`                     |

### `grade_items`
Pool of question+answer pairs available for grading. Independent from the `answers` table.

| Column        | Type | Description                           |
|---------------|------|---------------------------------------|
| `id`          | bigint | Auto-generated PK                   |
| `external_qid`| text | Question identifier                   |
| `answer_id`   | text | Answer identifier within that question |
| `question_text`| text| The question text                     |
| `answer_text` | text | The generated answer to grade         |

### `grading_criteria`
The rubric dimensions used for scoring.

| Column        | Type | Description                           |
|---------------|------|---------------------------------------|
| `id`          | text | Short slug (e.g. `scientific_accuracy`) |
| `name`        | text | Human-readable name                   |
| `description` | text | What the criterion measures           |
| `sort_order`  | int  | Display order                         |

### `grade_options`
Score levels for each criterion.

| Column        | Type | Description                           |
|---------------|------|---------------------------------------|
| `criteria_id` | text | References `grading_criteria(id)`     |
| `score_value` | int  | Numeric score (e.g. 5, 3, 1)        |
| `description` | text | Label for that score level            |

### `gradings`
Stores each grader's submission for a given answer.

| Column         | Type   | Description                           |
|----------------|--------|---------------------------------------|
| `grader_id`    | text   | The reviewer's ID                     |
| `grade_item_id`| bigint | References `grade_items(id)`          |
| `scores`       | jsonb  | `{criterion_id: score_value, ...}`  |
| `comments`     | text   | Optional free-text feedback           |

---

## Local Development

You don't need a local server to edit the HTML/CSS, but if you want one:

```bash
python3 -m http.server 8000
```

Then visit `http://localhost:8000`.

---

## Deployment

The site auto-deploys from the `main` branch via GitHub Pages. To publish changes:

1. Create a feature branch: `git checkout -b my-feature`
2. Make your changes and commit.
3. Push the branch: `git push origin my-feature`
4. Open a Pull Request on GitHub.
5. Review and merge the PR into `main`.
6. GitHub Pages will update within ~30 seconds.

**Note:** The `main` branch is protected. Direct pushes are blocked.

---

## Security Notes

- The Supabase **Anon Key** is embedded in the public JavaScript. This is standard for client-side applications and is safe because **Row Level Security (RLS)** policies restrict what it can do (only `SELECT` questions/answers/grade_items/criteria/options, `INSERT` votes/submissions/gradings).
- The **Service Role Key** must never be exposed in the frontend.
- For this MVP, anyone with the Anon Key could technically spam the `votes` or `submissions` tables. This is acceptable for a low-traffic research tool. If abuse becomes an issue, a lightweight serverless validation layer (e.g., Supabase Edge Functions) can be added.

---

## Future Improvements

- [ ] Bulk import questions and answers from the local database.
- [ ] Bulk import grade_items from the local database.
- [ ] Admin dashboard to view vote tallies, grading results, and submission statistics.
- [ ] Rate limiting or simple CAPTCHA to reduce spam.
- [ ] Custom domain mapping.
- [ ] Mobile UI polish.

---

## License

This project is open source and available under the [MIT License](LICENSE).