-- Insert a sample question for testing the comparison page
-- Run this in the Supabase SQL Editor after creating the tables

INSERT INTO questions (external_qid, question_text, answer_a, answer_a_metadata, answer_b, answer_b_metadata)
VALUES (
  'q001',
  'What are the main differences between CRISPR-Cas9 and CRISPR-Cas12a?',
  'CRISPR-Cas9 uses the nuclease SpCas9 guided by a single-guide RNA (sgRNA) to create blunt-ended double-strand breaks (DSBs) at target sites upstream of a PAM sequence (NGG). CRISPR-Cas12a (formerly Cpf1) uses a crRNA and creates staggered DSBs with a 5'' overhang. Cas12a recognizes a TTTV PAM and cleaves DNA distal from the PAM. Additionally, Cas12a exhibits non-specific collateral cleavage of single-stranded DNA after target activation, which has been exploited for diagnostic applications such as SHERLOCK and DETECTR.',
  '{"model": "gpt-4", "temperature": 0.7}',
  'The main differences are: Cas9 needs two RNA molecules (or a fused sgRNA) and makes blunt cuts, while Cas12a needs only one crRNA and makes staggered cuts. Cas9 prefers NGG PAMs; Cas12a prefers TTTV PAMs. Cas12a also cuts ssDNA nearby after it finds its target, which Cas9 does not do. This extra activity makes Cas12a useful for biosensors.',
  '{"model": "claude-3", "temperature": 0.5}'
);
