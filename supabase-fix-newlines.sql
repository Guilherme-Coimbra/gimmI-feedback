-- GimmI Feedback — Fix literal \n in seeded answer text
-- Run this once in the Supabase SQL Editor.
--
-- The seed files write answer text as '...Summary\n\nSources...'. Postgres
-- standard string literals do NOT interpret \n, so the two characters
-- backslash + n were stored verbatim and show up as "\n" in the browser.
-- These statements replace them with real newlines. Safe to re-run.

UPDATE answers    SET answer_text = replace(answer_text, E'\\n', E'\n');
UPDATE grade_items SET answer_text = replace(answer_text, E'\\n', E'\n');
