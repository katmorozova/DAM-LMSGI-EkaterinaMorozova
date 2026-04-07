USE employees_xml;

SELECT ExtractValue(document, 'count(//employee[office/Territory="EMEA"])') AS Empleats_EMEA
FROM employees;