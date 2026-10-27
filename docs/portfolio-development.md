# Portfolio development

## Available in this repository

- [April 7–14, 2025 SQL case study](../case-studies/25APR07-14/README.md): six read-only queries with run order, observed findings, and correction status.
- Historical weekly SQL snippets and their [query guide](../sqltables/README.md).
- Two 2026 rule PDFs.

The case study demonstrates a local analysis and data-quality investigation. A database schema and sample dataset are not yet packaged for a fresh installation.

## Recorded local database snapshot

A saved validation report dated October 20, 2026 records:

| Season | Player-week records | Distinct weeks |
| --- | ---: | ---: |
| 2024 | 1,164 | 19 |
| 2025 | 3,162 | 29 |
| 2026 | 3,091 | 24 |

The report recorded zero workbook-field mismatches for the staged reconciliation, zero unlinked player IDs, and zero duplicate player-week keys. These checks validated the import against its source; they did not establish that the source calculations were correct.

The October 27 case study subsequently found goal-reward inconsistencies in the imported source data. Brian White's April 14 source formula and dependent totals were corrected in Excel during the walkthrough. The database synchronization and remaining historical cleanup are deferred. See the case study for the observed results and limits.

These snapshot counts come from a saved local report, not a database recheck performed for this documentation update. The underlying full database and report are not included here.

## Remaining portfolio work

1. Package a portable schema and clearly attributed sample dataset.
2. Complete validation of the selected two-week sample and rerun its analytical queries.
3. Add a Tableau visualization and verified dashboard link.
4. Build a GitHub profile introduction focused on data analyst skills.
5. Investigate and repair the broader historical data separately.

## Source and calculation standards

Use season-appropriate scoring rules, retain source provenance, and distinguish original observations from corrected results. Verify player/statistic alignment before using formulas to repair rewards. Remove credentials and machine-specific paths from any scripts included in a runnable release.
