USE employees_xml;

SELECT ExtractValue(document, '//employee[reportsTo="1056"]/lastName') AS Cognoms_Subordinats
FROM employees;

