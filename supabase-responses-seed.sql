-- GimmI Feedback — Respondent Data Seed from Google Forms
-- Run this AFTER supabase-initial-data-seed.sql (which creates questions, answers, grade_items)
-- This file inserts preference_votes and gradings from the Google Forms respondents

-- ==========================================
-- PREFERENCE VOTES (generated from 1st/2nd/3rd rankings)
-- Only valid rankings (all three distinct) are included.
-- Stored as round-robin pairwise comparisons (round=0, match=0)
-- ==========================================

-- Respondent 1 (forms_respondent_1) — Mónica Galocha
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_1', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_1', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_1', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_1', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_1', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_1', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_1', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_1', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_1', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_1', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_1', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_1', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_1', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_1', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_1', 0, 0, 'B', 'C', 'B');

-- Respondent 2 (forms_respondent_2) — Ana R
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_2', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_2', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_2', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_2', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_2', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_2', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_2', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_2', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_2', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_2', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_2', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_2', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_2', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_2', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_2', 0, 0, 'B', 'C', 'C');

-- Respondent 3 (forms_respondent_3) — Maria M Mota
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_3', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_3', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_3', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_3', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_3', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_3', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_3', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_3', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_3', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_3', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_3', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_3', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_3', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_3', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_3', 0, 0, 'B', 'C', 'C');

-- Respondent 4 (forms_respondent_4) — Alexandre
--   SKIPPED pref_q01: invalid ranking (A, A, A)
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_4', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_4', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_4', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_4', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_4', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_4', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_4', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_4', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_4', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_4', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_4', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_4', 0, 0, 'B', 'C', 'C');

-- Respondent 5 (forms_respondent_5) — Sofia Marques
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_5', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_5', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_5', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_5', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_5', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_5', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_5', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_5', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_5', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_5', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_5', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_5', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_5', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_5', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_5', 0, 0, 'B', 'C', 'C');

-- Respondent 6 (forms_respondent_6) — Majeed
--   SKIPPED pref_q01: invalid ranking (B, B, B)
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_6', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_6', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_6', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_6', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_6', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_6', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_6', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_6', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_6', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_6', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_6', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_6', 0, 0, 'B', 'C', 'C');

-- Respondent 7 (forms_respondent_7) — Ines Bento
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_7', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_7', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_7', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_7', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_7', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_7', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_7', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_7', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_7', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_7', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_7', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_7', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_7', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_7', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_7', 0, 0, 'B', 'C', 'C');

-- Respondent 8 (forms_respondent_8) — Joana
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_8', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_8', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_8', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_8', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_8', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_8', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_8', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_8', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_8', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_8', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_8', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_8', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_8', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_8', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_8', 0, 0, 'B', 'C', 'B');

-- ==========================================
-- GRADINGS (8 respondents × 5 questions)
-- ==========================================

INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 5, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 5, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 1, "evidence_traceability": 1}', '');

INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 5, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', 'The answer as is is indeed correct as that’s the evidence published so far! But we have data in house showing replication inside the hepatocyte is not as straight forward as its published. ');

INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 5, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 1, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 5, "evidence_traceability": 3}', '');

INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 5, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 1, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 1, "depth_specialization": 3, "evidence_traceability": 3}', '');

INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');

INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', 'It would be nice if citations goes to local articles');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');

INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');

INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 5, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 3}', '');

-- ==========================================
-- END OF RESPONDENT DATA SEED
-- ==========================================