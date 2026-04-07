SELECT * FROM empresa_json.employees;

SELECT 
    JSON_EXTRACT(data, '$.employeeNumber') AS employee_id,
    JSON_UNQUOTE(JSON_EXTRACT(data, '$.lastName')) AS lastName
FROM employees;