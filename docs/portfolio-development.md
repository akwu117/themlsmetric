# Portfolio development

## Current public contents

The repository contains two 2026 rule PDFs and historical weekly SQL snippets. It does not yet contain a reproducible database setup or dashboard screenshots.

## Evidence available in the local project

A saved validation report dated October 20, 2026 records the following database snapshot:

| Season | Player-week records | Distinct weeks |
| --- | ---: | ---: |
| 2024 | 1,164 | 19 |
| 2025 | 3,162 | 29 |
| 2026 | 3,091 | 24 |

The report records zero workbook-field mismatches for the staged reconciliation, zero unlinked player IDs, and zero duplicate player-week keys. It also records 78 text or placeholder cells retained in source JSON while the corresponding numeric fields use NULL.

These are saved local validation results, not checks rerun against a database for this documentation change. The underlying report, source data, and database are not currently included in this repository. These counts describe that saved snapshot, not complete league coverage or a current-season total.

## Remaining portfolio work

1. Reconcile the applicable scoring rules for each season.
2. Package a portable schema and sample dataset with source attribution and clear coverage.
3. Add analytical queries for weekly rankings, contribution breakdowns, and player trends.
4. Include validation queries that check duplicate keys, missing values, and player links.
5. Add dashboard screenshots and a verified Tableau link.
6. Write a short case study using results reproduced from the packaged sample.
7. Build the GitHub profile introduction around the finished project.

## Publication standard

Document only results supported by source records or reproducible queries. Distinguish sample data from actual player data and custom monetary scores from real compensation. Remove machine-specific paths and credentials from any scripts before packaging them.
