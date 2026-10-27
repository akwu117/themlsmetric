SELECT
    w2.Baller AS player,
    w2.Squad AS squad,
    w1.`Value` AS value_apr_07,
    w2.`Value` AS value_apr_14,
    w2.`Value` - w1.`Value` AS value_increase
FROM tmm.player_weekly_stats AS w1
JOIN tmm.player_weekly_stats AS w2
    ON w1.player_id = w2.player_id
WHERE w1.week_date = '2025-04-07'
  AND w2.week_date = '2025-04-14'
ORDER BY value_increase DESC, w2.player_id
LIMIT 10;
