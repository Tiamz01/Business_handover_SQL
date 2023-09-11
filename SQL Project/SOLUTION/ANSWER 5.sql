SELECT cs.customer_id, st.store_id, first_name, last_name, cs.active as 'active', cs.address_id, address, district, city, postal_code
FROM customer cs
LEFT JOIN store st ON cs.store_id = st.store_id
LEFT JOIN address ad ON cs.address_id = ad.address_id
LEFT JOIN city cty ON ad.city_id = cty.city_id
ORDER BY CASE 
    WHEN active = 1 THEN 'ACTIVE' 
    WHEN active = 0 THEN 'NOT ACTIVE'
    ELSE active
    END;
