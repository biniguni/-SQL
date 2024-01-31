USE market_db;

DELETE FROM city_popul
	WHERE city_name LIKE 'New%'; -- New로 시작하는 도시 삭제.
