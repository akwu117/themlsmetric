# Historical weekly SQL queries

These files are short queries against separately maintained weekly tables. They are not database exports, table definitions, or a dataset.

## Requirements

To execute a query, you need access to a database containing the exact table referenced in that file. This repository does not currently include the schema or records required to recreate those tables.

Inspect each query before running it. For example, `akwusm240506.sql` currently selects from `akwusm240520`; its filename and target table do not match. Do not use filenames alone to determine a query's reporting week.

## Naming convention

Most filenames follow `akwusmYYMMDD.sql`. The date appears to identify a weekly snapshot. The table named inside a query is the actual target used by SQL.

## Next improvement

Add a standalone sample with a documented schema, a small clearly identified dataset, and analytical queries. Keep historical snippets available until they can be reconciled against the source records.
