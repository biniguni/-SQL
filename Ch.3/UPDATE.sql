USE market_db;

## UPDATE 기본
UPDATE city_popul 
	SET city_name = '서울'
    WHERE city_name = 'Seoul';
SELECT * FROM city_popul WHERE city_name = '서울';

UPDATE city_popul
	SET city_name = '뉴욕', population = 0
    WHERE city_name = 'New York';
SELECT * FROM city_popul WHERE city_name IN('서울', '뉴욕');

UPDATE city_popul
	SET population = population/10000; -- UPDATE를 WHERE 없이 사용하면 모든 행이 바뀐다.
SELECT * FROM city_popul LIMIT 5;
UPDATE city_popul
	SET population = population*10000
	WHERE city_name = 'Kabul'; -- 위와 비교해보기. WHERE를 사용하여 Kabul의 인구만 변경.    
SELECT * FROM city_popul LIMIT 5;
