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
-- GRADINGS (verified by user)
-- ==========================================

-- User 1: Q1-555 Q2-335 Q3-333 Q4-311 Q5-555
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 5, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 1, "evidence_traceability": 1}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_1', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 5, "evidence_traceability": 5}', '');

-- User 2: Q1-535 Q2-535 Q3-535 Q4-535 Q5-533
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', 'The answer as is is indeed correct as that''s the evidence published so far! But we have data in house showing replication inside the hepatocyte is not as straight forward as its published.');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_2', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 3}', 'I feel like sometimes the answers are very repetitive, and also they support their claims on a lot of scientific reviews and it would be nice to have some of the reviews be research papers instead! Overall very good!');

-- User 3: Q1-355 Q2-335 Q3-313 Q4-353 Q5-313
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 5, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 1, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 5, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_3', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 1, "evidence_traceability": 3}', '');

-- User 4: Q1-333 Q2-135 Q3-333 Q4-133 Q5-113
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 1, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 1, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_4', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 1, "depth_specialization": 1, "evidence_traceability": 3}', '');

-- User 5: Q1-333 Q2-333 Q3-535 Q4-333 Q5-333
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_5', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');

-- User 6: Q1-335 Q2-335 Q3-335 Q4-535 Q5-335
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', 'It would be nice if citations goes to local articles');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 5}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_6', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 5}', '');

-- User 7: Q1-333 Q2-333 Q3-333 Q4-333 Q5-333
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_7', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');

-- User 8: Q1-533 Q2-333 Q3-333 Q4-533 Q5-333
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q01' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q02' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q03' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q04' LIMIT 1), '{"scientific_accuracy": 5, "depth_specialization": 3, "evidence_traceability": 3}', '');
INSERT INTO gradings (grader_id, grade_item_id, scores, comments) VALUES ('forms_respondent_8', (SELECT id FROM grade_items WHERE external_qid = 'grade_q05' LIMIT 1), '{"scientific_accuracy": 3, "depth_specialization": 3, "evidence_traceability": 3}', '');

-- ==========================================
-- END OF RESPONDENT DATA SEED
-- ==========================================
