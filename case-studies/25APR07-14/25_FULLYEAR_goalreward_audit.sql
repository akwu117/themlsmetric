SELECT
    source_sheet AS worksheet,
    COUNT(*) AS player_records,
    SUM(G IS NULL) AS missing_goal_counts,
    SUM(G IS NOT NULL AND GBO IS NULL) AS missing_rewards,
    SUM(
        G IS NOT NULL
        AND GBO IS NOT NULL
        AND GBO <> G * 150000
    ) AS incorrect_rewards
FROM tmm.player_weekly_stats
WHERE week_date >= '2025-01-01'
  AND week_date < '2026-01-01'
GROUP BY week_date, source_sheet
HAVING missing_goal_counts > 0
    OR missing_rewards > 0
    OR incorrect_rewards > 0
ORDER BY week_date;
