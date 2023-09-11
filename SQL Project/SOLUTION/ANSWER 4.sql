-- Disable the only_full_group_BY mode.
SET sql_mode = '';
-- category ct 
SELECT fm.film_id , MAX(title) AS title, AVG(replacement_cost) AS Average_replacement_cost, SUM(replacement_cost) AS Total_replacement_cost, MAX(rating) AS rating,
        GROUP_CONCAT(ct.name) AS category_ids, SUM(inventory_id) AS sum_of_inventory
FROM film fm 
LEFT JOIN film_category fctg ON fm.film_id = fctg.film_id
LEFT JOIN inventory inv ON fm.film_id = inv.film_id
LEFT JOIN category ct ON fctg.category_id = fctg.category_id
GROUP BY fm.replacement_cost
ORDER BY SUM(inv.inventory_id) DESC;








