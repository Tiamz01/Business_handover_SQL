SELECT 'investor' as type, investor_id as id, first_name, last_name, company_name, NULL as is_chairmain 
FROM investor
UNION
SELECT 'advisor' as type, advisor_id as id, first_name, last_name, NULL as company_name, is_chairmain
FROM advisor

