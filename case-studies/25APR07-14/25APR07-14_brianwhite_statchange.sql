SELECT
    w2.Baller AS player,
    w2.G - w1.G AS goal_change,
    w2.A - w1.A AS assist_change,
    w2.SoT - w1.SoT AS shots_on_target_change,
    w2.Shot - w1.Shot AS shot_change,
    w2.KP - w1.KP AS key_pass_change,
    w2.`Value` - w1.`Value` AS value_increase
FROM tmm.player_weekly_stats AS w1
JOIN tmm.player_weekly_stats AS w2
    ON w1.player_id = w2.player_id
WHERE w1.week_date = '2025-04-07'
  AND w2.week_date = '2025-04-14'
  AND w2.Baller = 'Brian White';
