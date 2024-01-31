## INSERT INTO ~ SLELECT -- 다른 테이블의 데이터를 가져와서 한 번에 입력.
SELECT COUNT(*) FROM world.city;
DESC world.city; -- DESC: 테이블의 구조를 출력해주는 기능. r의 summary()와 비슷한 듯.
SELECT * FROM world.city LIMIT 5;

CREATE TABLE city_popul (city_name CHAR(35), population INT);

INSERT INTO city_popul 
	SELECT Name, Population FROM world.city;
    
SELECT * FROM city_popul;