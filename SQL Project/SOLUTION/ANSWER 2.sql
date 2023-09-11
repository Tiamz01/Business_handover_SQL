SELECT store_id, fm.film_id, title, rental_rate, rating, replacement_cost, inventory_id
FROM film fm
LEFT JOIN  inventory inv ON fm.film_id = inv.film_id

