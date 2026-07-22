-- GimmI Feedback — Database Schema v6 (Reviewer aliases)
-- Run this in the Supabase SQL Editor.
--
-- The 8 scientists who answered the Google Form have their votes and gradings
-- stored under forms_respondent_N. This table lets each of them adopt a reviewer
-- ID of their own choosing, once, from a personal claim link. Typing that ID on
-- any device afterwards resolves back to their existing data, so nobody is tied
-- to the link and nobody is asked to repeat work.

CREATE TABLE reviewer_aliases (
    alias_id TEXT PRIMARY KEY,          -- the ID the reviewer types from now on
    canonical_id TEXT NOT NULL UNIQUE,  -- the ID their existing data is stored under
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- alias_id is the primary key, so one ID can never point at two people.
-- canonical_id is unique, so each claim link can only be used once.

ALTER TABLE reviewer_aliases ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access on reviewer_aliases"
    ON reviewer_aliases FOR SELECT USING (true);

CREATE POLICY "Allow public insert on reviewer_aliases"
    ON reviewer_aliases FOR INSERT WITH CHECK (true);
