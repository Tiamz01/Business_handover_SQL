USE sodocomm;

SELECT str.store_id, manager_staff_id, first_name, last_name, ad.address, district, city, country_id
FROM store str
LEFT JOIN staff ON str.store_id = staff.store_id
LEFT JOIN address ad ON str.address_id = ad.address_id
LEFT JOIN city ct ON ct.city_id = ad.city_id;
