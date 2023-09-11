-- Disable the only_full_group_BY mode.
SET sql_mode = '';

USE sodocomm;

SELECT ac.actor_id, ac.first_name, ac.last_name, count(awards) as total_awards, group_concat(distinct awards) as awards, COUNT(awards) / (SELECT COUNT(DISTINCT awards) FROM actor_award) * 100 AS film_percentage
FROM actor ac
LEFT JOIN actor_award aw ON ac.actor_id = aw.actor_id
GROUP BY awards
ORDER BY awards DESC

-- SELECT 
--     ac.actor_id,
--     COUNT(DISTINCT awards) AS total_awards,
--     GROUP_CONCAT(DISTINCT awards) AS award_received,
--     COUNT(DISTINCT awards) / (SELECT COUNT(DISTINCT awards) FROM actor) * 100 AS film_percentage
-- FROM actor ac
-- LEFT JOIN actor_award aw ON ac.actor_id = aw.actor_id
-- WHERE ac.actor_id IN (
--     SELECT ac.actor_id
--     FROM actor_award aw
--     GROUP BY aw.actor_id
--     HAVING COUNT(DISTINCT awards) = 3
-- )
-- GROUP BY ac.actor_id
-- ORDER BY total_awards DESC;