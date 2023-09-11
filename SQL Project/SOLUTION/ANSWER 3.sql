-- Disable the only_full_group_BY mode.
SET sql_mode = '';

SELECT fm.film_id, MAX(title) AS title, MAX(rental_rate) AS rental_rate, MAX(replacement_cost) AS replacement_cost, max(rating) AS rating,
       GROUP_CONCAT(inventory_id) AS inventory_ids, GROUP_CONCAT(rating) AS group_ratings, SUM(inventory_id) AS sum_of_inventory
FROM film fm
LEFT JOIN inventory inv ON fm.film_id = inv.film_id
GROUP BY fm.rating;







