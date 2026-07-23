-- GimmI Feedback — Database Schema v10 (Staged release of SFT candidates)
-- Run this in the Supabase SQL Editor, after v9 and its seed.
--
-- Only a first batch of candidates is put in front of reviewers, so the set
-- stays short enough to finish. The rest are seeded but held back.
--
-- To release everything else later:
--   UPDATE sft_candidates SET is_active = TRUE;
--
-- Or release a few at a time:
--   UPDATE sft_candidates SET is_active = TRUE WHERE id IN ('gen_XXXX', ...);

ALTER TABLE sft_candidates
    ADD COLUMN is_active BOOLEAN NOT NULL DEFAULT FALSE;

-- First batch: 20 of the 44, split evenly between the two papers (10 each) and
-- including all 4 deliberately unanswerable questions.
UPDATE sft_candidates SET is_active = TRUE WHERE id IN (
    'gen_0081',
    'gen_0129',
    'gen_0288',
    'gen_0552',
    'gen_0585',
    'gen_0655',
    'gen_0826',
    'gen_0858',
    'gen_0867',
    'gen_0969',
    'gen_1095',
    'gen_1137',
    'gen_1272',
    'gen_1765',
    'gen_1851',
    'gen_2928',
    'gen_3574',
    'gen_3690',
    'gen_4296',
    'gen_6189'
);
