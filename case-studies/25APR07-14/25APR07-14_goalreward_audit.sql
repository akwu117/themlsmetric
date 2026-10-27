SELECT
    CAST(week_date AS CHAR) AS snapshot_date,
    Baller AS player,
    G AS goals,
    GBO AS recorded_reward,
    G * 150000 AS expected_reward,
    CASE
        WHEN G IS NULL THEN 'Missing goal count'
        WHEN GBO IS NULL THEN 'Missing goal reward'
        ELSE 'Incorrect goal reward'
    END AS issue
FROM tmm.player_weekly_stats
WHERE week_date IN ('2025-04-07', '2025-04-14')
  AND (
      G IS NULL
      OR GBO IS NULL
      OR GBO <> G * 150000
  )
ORDER BY week_date, Baller;
