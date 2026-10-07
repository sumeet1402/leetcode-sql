# Write your MySQL query statement below
SELECT x.player_id , MIN(x.event_date) as first_login
FROM Activity x
INNER JOIN Activity y
ON x.player_id = y.player_id
WHERE x.player_id = y.player_id
GROUP BY x.player_id
ORDER BY x.player_id ASC;