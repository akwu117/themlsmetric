SELECT
    CAST(week_date AS CHAR) AS snapshot_date,
    G AS goals,
    GBO AS goal_reward,
    EARNING AS earnings,
    `Value` AS metric_value
FROM tmm.player_weekly_stats
WHERE Baller = 'Brian White'
  AND week_date IN ('2025-04-07', '2025-04-14')
ORDER BY week_date;
