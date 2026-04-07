USE employees_xml;

SELECT ExtractValue(document, '//employee[@employeeNumber="1166"]/office/City') AS Ciutat_Oficina
FROM employees;