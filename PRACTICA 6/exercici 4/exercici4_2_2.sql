SELECT * FROM empresa_json.employees;

SELECT 
    JSON_UNQUOTE(JSON_EXTRACT(data, '$.firstName')) AS nom,
    JSON_UNQUOTE(JSON_EXTRACT(data, '$.extension')) AS extensio
FROM employees
WHERE JSON_EXTRACT(data, '$.extension') LIKE '%23%';