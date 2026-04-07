USE employees_xml;

SELECT ExtractValue(document, '//employee[jobTitle="VP Sales"]/email') AS Emails_VP_Sales
FROM employees;