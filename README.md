# The MLS Metric

A personal soccer analytics project that uses a custom monetary scoring system to compare tracked Major League Soccer players.

The project turns goals, assists, shooting, and key passes into reward amounts, with deductions defined by the metric's rules. It is a way to explore player performance through a consistent scoring framework and communicate the results through SQL analysis and Tableau.

## The question

How do player rankings change when several attacking contributions are combined into one custom score?

The metric expresses its scores in dollars. These amounts are model outputs, not actual player pay, transfer prices, or independently validated market valuations.

## Project workflow

1. Maintain weekly player statistics and metric calculations in spreadsheets.
2. Prepare and reconcile records for analysis in MySQL.
3. Query player results and weekly trends.
4. Present comparisons through Tableau and written analysis.

The public repository currently contains the rule documents and historical SQL query snippets. The source workbooks, database tables, import workflow, and Tableau dashboards are not packaged here yet, so this repository is not currently a complete runnable release.

## Explore the repository

| Material | Purpose |
| --- | --- |
| [SQL query guide](sqltables/README.md) | Explains the historical weekly queries and their requirements |
| [2026 updated rules](<MLM 2026 Updated Laws copy.pdf>) | Project rule document |
| [Additional 2026 rules](<MXM2026LAWS copy.pdf>) | Additional project rule document |
| [Portfolio development notes](docs/portfolio-development.md) | Documents the remaining work needed for a reproducible project |

## Methodology

The scoring framework includes rewards for goals, assists, shots on target, shots, and key passes, plus drought and absence deductions.

Use the linked rule documents to review the project methodology. Season-specific rules and workbook calculations must be reconciled before treating a single formula as applicable across every season. The previous README listed fixed reward amounts without identifying the applicable rules version; those amounts are not presented here as a universal formula.

Useful questions for analysis include:

- Who leads the tracked player pool in a given week?
- Which contributions account for a player's score?
- How does a player's score change over time?
- How sensitive are rankings to the chosen reward amounts?

## Tools and skills

- **SQL / MySQL:** querying weekly player records and preparing analytical results.
- **Spreadsheets:** maintaining source records and custom calculations.
- **Tableau:** presenting player comparisons and trends; dashboard evidence is still to be added to this repository.

## Scope and limitations

This is an independent personal project. Its custom weights reflect the metric's design choices. Results depend on the tracked players, available weeks, source quality, and rules used for each season.

The historical SQL files reference tables that must already exist. They do not create or populate a database. No full-league coverage, predictive accuracy, or production deployment is claimed.

## Author

Created by [akwu117](https://github.com/akwu117).

[Project commentary on X](https://x.com/akwuchronicles)
