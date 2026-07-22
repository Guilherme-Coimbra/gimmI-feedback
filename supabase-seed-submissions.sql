-- GimmI Feedback — Seed submitted questions
-- Run this in the Supabase SQL Editor.
--
-- 20 questions collected offline. voter_id is a synthetic anon_* value: the real
-- submitters are not known, the dashboard never exposes voter_id, and the anon_
-- prefix cannot collide with a reviewer ID chosen later.
--
-- All are seeded as 'long'; reviewers can revise them from the dashboard, and
-- each revision is kept as a new version.
--
-- Safe to re-run: each row is skipped if that question text is already present.

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_a19ca768', 'What causes cerebral malaria?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'What causes cerebral malaria?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_fccbf659', 'Is it proven that reticulocytes prevent the establishment of cerebral malaria?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'Is it proven that reticulocytes prevent the establishment of cerebral malaria?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_2acefd16', 'How does the malaria parasite survive the dry season?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'How does the malaria parasite survive the dry season?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_c871dd6f', 'Which people are most susceptible to establishing cerebral malaria?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'Which people are most susceptible to establishing cerebral malaria?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_be7f2b9d', 'Does the reticulocyte''s mitochondria have an impact on the infection by cerebral malaria?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'Does the reticulocyte''s mitochondria have an impact on the infection by cerebral malaria?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_de78f2b8', 'What are the symptoms of malaria?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'What are the symptoms of malaria?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_82f0e459', 'What is the transmission vector of malaria?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'What is the transmission vector of malaria?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_5b9ffb06', 'Why is malaria transmitted by a female mosquito?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'Why is malaria transmitted by a female mosquito?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_7ea0f827', 'Why is the liver-stage silent?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'Why is the liver-stage silent?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_0a7e43c4', 'Which species cause dormant forms?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'Which species cause dormant forms?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_dd3f2855', 'What gene is the Plasmodium nutrient sensor?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'What gene is the Plasmodium nutrient sensor?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_e4dcae2c', 'How do Plasmodium parasites respond to methionine deficiency?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'How do Plasmodium parasites respond to methionine deficiency?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_81981791', 'What host endosomal proteins are co-opted by Plasmodium to prevent its elimination during a hepatocyte infection?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'What host endosomal proteins are co-opted by Plasmodium to prevent its elimination during a hepatocyte infection?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_93e91062', 'How does a high-fat diet impair Plasmodium liver infection?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'How does a high-fat diet impair Plasmodium liver infection?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_12153b8e', 'Are there any transcription factors involved in nutrient sensing in Plasmodium?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'Are there any transcription factors involved in nutrient sensing in Plasmodium?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_fe1c37e5', 'How Plasmodium sporozoites invade hepatocytes?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'How Plasmodium sporozoites invade hepatocytes?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_13988199', 'What role does CSP play in the Plasmodium invasion?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'What role does CSP play in the Plasmodium invasion?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_24f17a7d', 'How does malaria liver stage immunity work?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'How does malaria liver stage immunity work?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_b8b7de91', 'What molecules control Plasmodium replication in hepatocytes?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'What molecules control Plasmodium replication in hepatocytes?');

INSERT INTO submissions (voter_id, question_text, answer_aspects, preferred_length)
SELECT 'anon_d3bd0dc5', 'Why Plasmodium parasites have tropism for the mammalian liver?', NULL, 'long'
WHERE NOT EXISTS (SELECT 1 FROM submissions WHERE question_text = 'Why Plasmodium parasites have tropism for the mammalian liver?');

-- Expect: 20 rows total
-- SELECT count(*) FROM submissions;
