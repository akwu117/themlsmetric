SELECT
    CAST(week_date AS CHAR) AS snapshot_date,
    COUNT(*) AS total_records,
    COUNT(DISTINCT player_id) AS unique_players
FROM tmm.player_weekly_stats
WHERE week_date IN ('2025-04-07', '2025-04-14')
GROUP BY week_date
ORDER BY week_date;
