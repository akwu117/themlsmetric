# Weekly value changes and data validation

**The MLS Metric · April 7–14, 2025 · MySQL**

This case study asks which tracked players increased their MLS Metric value the most between two weekly snapshots, then checks whether the underlying goal rewards follow the project's scoring rule.

The work demonstrates self-joins, aggregation, conditional logic, NULL checks, source tracing, and the distinction between an observed result and a validated finding.

## Scope and setup

The two snapshots each contain 85 records and 85 distinct player IDs: 170 player-week records in total. The player counts were checked in MySQL during the walkthrough on October 27, 2026. Equal counts alone do not prove identical player membership; the comparison queries include players matched by `player_id`.

All queries are read-only and target the existing `tmm.player_weekly_stats` table. They were run in a local MySQL 8.4 environment. This folder contains the SQL and analysis notes; it does not include the database schema or data required to run them on a fresh installation.

Required columns used by these queries:

| Columns | Meaning |
| --- | --- |
| `week_date`, `player_id` | Snapshot date and player identifier used for matching |
| `Baller`, `Squad` | Recorded player and team labels |
| `G`, `A`, `SoT`, `Shot`, `KP` | Recorded goals, assists, shots on target, shots, and key passes |
| `GBO` | Goal reward imported from the workbook's `GE` column |
| `EARNING`, `Value` | Recorded earning and total metric value |
| `source_sheet` | Worksheet associated with the source record |

Metric values are expressed in dollars as part of the project's custom scoring system.

## Query order

Open each file in MySQL Workbench and run it against the existing database.

| Step | Query | Purpose |
| --- | --- | --- |
| 1 | [Record check](25APR07-14_recordcheck.sql) | Check record and unique-player counts for both dates |
| 2 | [Largest value increases](25APR07-14_valueincrease.sql) | Match snapshots by player ID and return the ten largest recorded increases |
| 3 | [Brian White's stat changes](25APR07-14_brianwhite_statchange.sql) | Examine changes in his recorded attacking statistics |
| 4 | [Brian White's goal-reward check](25APR07-14_brianwhite_goalreward_check.sql) | Inspect goals, goal rewards, and totals in each snapshot |
| 5 | [Two-week goal-reward audit](25APR07-14_goalreward_audit.sql) | Find missing values and rewards inconsistent with the confirmed rule |
| 6 | [Full-year goal-reward audit](25_FULLYEAR_goalreward_audit.sql) | Summarize flagged records by worksheet for the available 2025 history |

The final audit covers the available 2025 records in the database, extending beyond the two-week comparison. It does not repair any data.

## Initial result and investigation

The original database query ranked Brian White first for recorded value increase:

| Measure | April 7 | April 14 | Change |
| --- | ---: | ---: | ---: |
| Recorded metric value | $2,181,000 | $2,690,500 | $509,500 |
| Goals | 2 | 6 | 4 |
| Goal reward | $300,000 | $750,000 | $450,000 |

His recorded statistics also increased by five shots on target, nine shots, and one key pass, with no change in assists.

The project owner confirmed that **each goal earns $150,000**. Six goals therefore require a $900,000 goal reward. The April 14 source spreadsheet contained a manually entered $750,000 reward, which the database import had preserved correctly.

The investigation traced the discrepancy to the workbook rather than the `GE` → `GBO` column mapping. Replacing Brian White's April 14 goal reward with a formula referencing his six goals produced:

| Field | Original source value | Corrected source value |
| --- | ---: | ---: |
| Goal reward | $750,000 | $900,000 |
| Earning | $2,390,500 | $2,540,500 |
| Metric value | $2,690,500 | $2,840,500 |
| Change from April 7 | $509,500 | $659,500 |

The corrected totals were observed in Excel. The database has not yet been synchronized with this correction, and the complete ranking has not been rerun on a corrected dataset.

## Audit findings and interpretation

For the two selected weeks, the original database audit returned nine flagged records:

- Five goal-reward mismatches.
- Four missing goal rewards, each associated with a recorded goal count of zero.

The full-year query identified 25 worksheets with at least one issue. A separate count of the saved 2025 source records found 75 reward mismatches, 15 missing rewards, and four missing goal counts. Those totals describe the pre-synchronization data and still include Brian White's original record.

A flag identifies a record for investigation; it does not prove that the reward is the incorrect field. Worksheet `250324` contains separate tables for names/rewards and statistics, and neighboring-row patterns suggest possible player/statistic misalignment. Its 26 reward mismatches and four missing goal counts need source verification before correction.

Broader historical cleanup is deferred. The queries and findings are shared as an initial analysis and data-quality investigation; the remaining records are not presented as fully corrected.

## What this analysis demonstrates

- Use a self-join on player IDs to compare dated snapshots.
- Validate totals and uniqueness before interpreting a ranking.
- Turn a confirmed business rule into a reusable SQL audit.
- Preserve the distinction between missing values and zero.
- Trace a suspicious result back to its original spreadsheet cell.
- Document correction status and avoid publishing an unverified final ranking.

## Next steps

Package a documented sample dataset, verify the selected weeks after correction, rerun the ranking, and add a Tableau visualization. The full-season repair can be completed separately.
