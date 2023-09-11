SELECT group_concat(cs.customer_id) AS 'customer_id', cs.first_name, cs.last_name, SUM(pt.amount) AS total_payment,
       TIMESTAMPDIFF(HOUR, rt.rental_date, rt.return_date) AS total_rental_time
FROM customer cs
LEFT JOIN rental rt ON cs.customer_id = rt.customer_id
LEFT JOIN payment pt ON rt.rental_id = pt.rental_id
GROUP BY cs.customer_id, cs.first_name, cs.last_name
ORDER BY total_rental_time DESC, total_payment DESC;
