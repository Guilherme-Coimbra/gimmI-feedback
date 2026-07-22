-- GimmI Feedback — Database Schema v8 (Versioned answer length)
-- Run this in the Supabase SQL Editor.
--
-- preferred_length lived only on the submissions row, so reviewers could revise
-- the question and its topics but never switch between a short and a long
-- answer. Editing is append-only — nothing is updated in place — so the length
-- has to travel with the version rather than be overwritten on the submission.
--
-- Nullable on purpose: rows written before this column existed carry NULL, and
-- the dashboard falls back to the most recent version that did record a length,
-- ending at the submissions row (version 1).

ALTER TABLE submission_versions
    ADD COLUMN preferred_length TEXT
    CHECK (preferred_length IN ('short', 'long'));
