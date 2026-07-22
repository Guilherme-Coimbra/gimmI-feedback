#!/usr/bin/env python3
"""
validate_seed.py — Validate supabase-responses-seed.sql against the Excel source.

Run this to see:
1. Every respondent's raw ranking from Excel
2. The pairwise votes generated from that ranking
3. Any rows that look suspicious (duplicate preferences, missing data, etc.)

Usage:
    .venv/bin/python validate_seed.py
"""

import json
import re
import sys

try:
    import pandas as pd
except ImportError:
    print("ERROR: pandas not installed. Run: .venv/bin/pip install pandas openpyxl")
    sys.exit(1)

EXCEL_FILE = "GIMM AI Co-Scientist Feedback Session v2 (Responses).xlsx"
SEED_FILE = "supabase-responses-seed.sql"


def load_excel_rankings():
    df = pd.read_excel(EXCEL_FILE, sheet_name="Form responses 1")

    blocks = [
        (2, 3, 4, "pref_q01"),
        (5, 6, 7, "pref_q02"),
        (9, 10, 11, "pref_q03"),
        (13, 14, 15, "pref_q04"),
        (17, 18, 19, "pref_q05"),
    ]
    label_map = {"Answer A": "A", "Answer B": "B", "Answer C": "C"}

    results = []
    for r_idx in range(8):
        name = df.iloc[r_idx, 1]
        for c1, c2, c3, qid in blocks:
            first = df.iloc[r_idx, c1]
            second = df.iloc[r_idx, c2]
            third = df.iloc[r_idx, c3]
            results.append({
                "respondent": r_idx + 1,
                "name": name,
                "qid": qid,
                "first": first,
                "second": second,
                "third": third,
                "first_label": label_map.get(first, first),
                "second_label": label_map.get(second, second),
                "third_label": label_map.get(third, third),
            })
    return results


def load_seed_votes():
    """Parse INSERT statements from the SQL seed file."""
    votes = []
    pattern = re.compile(
        r"INSERT INTO preference_votes \([^)]+\) VALUES \("  # noqa: E501
        r"'([^']+)',\s*'([^']+)',\s*(\d+),\s*(\d+),\s*'([^']+)',\s*'([^']+)',\s*'([^']+)'\);"
    )
    with open(SEED_FILE, "r") as f:
        for line in f:
            m = pattern.search(line)
            if m:
                votes.append({
                    "qid": m.group(1),
                    "voter": m.group(2),
                    "round": int(m.group(3)),
                    "match": int(m.group(4)),
                    "a": m.group(5),
                    "b": m.group(6),
                    "winner": m.group(7),
                })
    return votes


def validate():
    rankings = load_excel_rankings()
    votes = load_seed_votes()

    issues = []
    total_pairs_generated = 0

    print("=" * 70)
    print("PREFERENCE RANKING VALIDATION")
    print("=" * 70)

    for r in rankings:
        resp = r["respondent"]
        qid = r["qid"]
        first, second, third = r["first_label"], r["second_label"], r["third_label"]

        header = f"\nRespondent {resp} ({r['name']}) — {qid}"
        print(header)
        print(f"  Excel raw: 1st={r['first']}, 2nd={r['second']}, 3rd={r['third']}")
        print(f"  Labels:     1st={first}, 2nd={second}, 3rd={third}")

        # Detect issues
        vals = [v for v in (first, second, third) if pd.notna(v)]
        if len(vals) < 3:
            print("  ⚠️  ISSUE: Missing data (not all 3 preferences filled)")
            issues.append((resp, qid, "missing"))
            continue

        if len(set(vals)) != 3:
            print(f"  ⚠️  ISSUE: Duplicate or invalid ranking — all three must be distinct")
            issues.append((resp, qid, f"duplicate: {first},{second},{third}"))
            # Still show what pairs would be generated if we force it through

        # Compute expected pairs
        rank_map = {}
        for label, pref in [(first, 1), (second, 2), (third, 3)]:
            if pd.notna(label):
                rank_map[label] = pref

        expected = []
        for a, b in [("A", "B"), ("A", "C"), ("B", "C")]:
            if a in rank_map and b in rank_map:
                winner = a if rank_map[a] < rank_map[b] else b
                expected.append((qid, f"forms_respondent_{resp}", a, b, winner))

        print(f"  Expected pairs: {expected}")
        total_pairs_generated += len(expected)

        # Find matching votes in seed
        seed_matches = [
            v for v in votes
            if v["qid"] == qid and v["voter"] == f"forms_respondent_{resp}"
        ]
        print(f"  Seed rows found: {len(seed_matches)}")
        for v in seed_matches:
            print(f"    {v['a']} vs {v['b']} → winner={v['winner']}")

    print("\n" + "=" * 70)
    print("SUMMARY")
    print("=" * 70)
    print(f"Total respondent-question combos: {len(rankings)}")
    print(f"Total expected pairwise votes: {total_pairs_generated}")
    print(f"Total votes in seed file: {len(votes)}")

    if issues:
        print(f"\n⚠️  ISSUES FOUND: {len(issues)}")
        for resp, qid, reason in issues:
            print(f"  Respondent {resp}, {qid}: {reason}")
    else:
        print("\n✅ No issues found in Excel rankings.")

    # Cross-check: are there votes in the seed for which no Excel ranking exists?
    print("\n" + "=" * 70)
    print("SEED-TO-EXCEL CROSS-CHECK")
    print("=" * 70)
    excel_keys = set()
    for r in rankings:
        for a, b in [("A", "B"), ("A", "C"), ("B", "C")]:
            excel_keys.add((r["qid"], f"forms_respondent_{r['respondent']}", a, b))

    orphan_votes = []
    for v in votes:
        key = (v["qid"], v["voter"], v["a"], v["b"])
        if key not in excel_keys:
            orphan_votes.append(v)

    if orphan_votes:
        print(f"⚠️  {len(orphan_votes)} votes in seed have no matching Excel ranking:")
        for v in orphan_votes[:10]:
            print(f"    {v['voter']} {v['qid']}: {v['a']} vs {v['b']} → {v['winner']}")
        if len(orphan_votes) > 10:
            print(f"    ... and {len(orphan_votes) - 10} more")
    else:
        print("✅ All seed votes correspond to an Excel ranking.")

    # Check for wrong winners
    print("\n" + "=" * 70)
    print("WINNER CORRECTNESS CHECK")
    print("=" * 70)
    wrong = []
    for v in votes:
        if v["winner"] not in (v["a"], v["b"]):
            wrong.append(v)
    if wrong:
        print(f"⚠️  {len(wrong)} votes where winner is NOT one of the two answers:")
        for v in wrong[:10]:
            print(f"    {v['voter']} {v['qid']}: pair=({v['a']},{v['b']}), winner={v['winner']}")
    else:
        print("✅ All winners are valid (one of the two answers in the pair).")


if __name__ == "__main__":
    validate()
