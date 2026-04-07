SELECT * FROM empresa_json.offices;

SELECT JSON_UNQUOTE(JSON_EXTRACT(data, '$.phone')) AS office_phone
FROM empresa_json.offices;