-- GimmI Feedback — Respondent Data Seed from Google Forms
-- Run this AFTER supabase-initial-data-seed.sql (which creates questions, answers, grade_items)
-- This file inserts preference_votes and gradings from the 8 Google Forms respondents

-- ==========================================
-- PREFERENCE VOTES (verified by user)
-- Generated from 1st/2nd/3rd rankings as round-robin pairwise comparisons (round=0, match=0)
-- ==========================================

-- User 1: Q1-BAC Q2-CBA Q3-CAB Q4-ABC Q5-ABC
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_1', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_1', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_1', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_1', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_1', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_1', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_1', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_1', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_1', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_1', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_1', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_1', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_1', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_1', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_1', 0, 0, 'B', 'C', 'B');

-- User 2: Q1-CAB Q2-CAB Q3-ABC Q4-CBA Q5-ACB
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_2', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_2', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_2', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_2', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_2', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_2', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_2', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_2', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_2', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_2', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_2', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_2', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_2', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_2', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_2', 0, 0, 'B', 'C', 'C');

-- User 3: Q1-CAB Q2-BCA Q3-BCA Q4-CBA Q5-ACB
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_3', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_3', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_3', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_3', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_3', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_3', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_3', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_3', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_3', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_3', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_3', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_3', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_3', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_3', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_3', 0, 0, 'B', 'C', 'C');

-- User 4: Q1-CBA Q2-CBA Q3-ABC Q4-CBA Q5-BCA
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_4', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_4', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_4', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_4', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_4', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_4', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_4', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_4', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_4', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_4', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_4', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_4', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_4', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_4', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_4', 0, 0, 'B', 'C', 'B');

-- User 5: Q1-CAB Q2-CAB Q3-BCA Q4-CBA Q5-ABC
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_5', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_5', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_5', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_5', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_5', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_5', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_5', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_5', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_5', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_5', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_5', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_5', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_5', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_5', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_5', 0, 0, 'B', 'C', 'B');

-- User 6: Q1-ABC Q2-ABC Q3-ACB Q4-CBA Q5-ACB
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_6', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_6', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_6', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_6', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_6', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_6', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_6', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_6', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_6', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_6', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_6', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_6', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_6', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_6', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_6', 0, 0, 'B', 'C', 'C');

-- User 7: Q1-CAB Q2-CAB Q3-BAC Q4-CBA Q5-ABC
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_7', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_7', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_7', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_7', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_7', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_7', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_7', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_7', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_7', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_7', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_7', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_7', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_7', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_7', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_7', 0, 0, 'B', 'C', 'B');

-- User 8: Q1-ABC Q2-CAB Q3-ACB Q4-BAC Q5-BCA
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_8', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_8', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q01', 'forms_respondent_8', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_8', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_8', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q02', 'forms_respondent_8', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_8', 0, 0, 'A', 'B', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_8', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q03', 'forms_respondent_8', 0, 0, 'B', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_8', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_8', 0, 0, 'A', 'C', 'A');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q04', 'forms_respondent_8', 0, 0, 'B', 'C', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_8', 0, 0, 'A', 'B', 'B');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_8', 0, 0, 'A', 'C', 'C');
INSERT INTO preference_votes (external_qid, voter_id, round_number, match_in_round, answer_a_label, answer_b_label, winner_label) VALUES ('pref_q05', 'forms_respondent_8', 0, 0, 'B', 'C', 'B');

-- ==========================================
-- GRADINGS (to be filled after user verification)
-- ==========================================
