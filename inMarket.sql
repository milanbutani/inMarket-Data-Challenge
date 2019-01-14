SELECT device_uuid FROM table_2 WHERE home_state = 'FL';

SELECT device_uuid FROM table_2 WHERE home_state = 'FL' AND home_city = 'Miami';

SELECT device_uuid FROM table_2 WHERE birthdate BETWEEN '1983-01-01' AND '1998-01-01';

SELECT device_uuid FROM table_1 WHERE visited_store_1 = True AND visited_store_2 = False;

SELECT device_uuid FROM table_1 WHERE parent = True AND visited_store_2 = True 
	UNION SELECT device_uuid FROM table_2 WHERE home_city LIKE 'G&';

SELECT home_city, COUNT (device_uuid) FROM table_2 GROUP BY home_city 
	ORDER BY COUNT (device_uuid) DESC;

SELECT device_uuid, income, CASE WHEN visited_store_1 = True and visited_store_2 = True 
	THEN 'Stores 1 and 2' WHEN visited_store_1 = True THEN 'Store 1' WHEN visited_store_2 = True 
	THEN 'Store 2' ELSE 'No stores visited' END FROM table_1 ORDER BY income DESC LIMIT 10;