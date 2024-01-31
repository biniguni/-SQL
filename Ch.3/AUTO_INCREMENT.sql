USE market_db;

## AUTO_INCREMENT 기본
#CREATE TABLE hongong2 (
#	toy_id INT AUTO_INCREMENT PRIMARY KEY, 
		-- 열을 정의할 때 1부터 증가하는 값을 입력해줌. INSERT에서는 해당 열이 없다고 생각하고 입력하면 된다.
		-- 주의할 점은, AUTO_INCREMENT로 지정하는 열은 반드시 PK로 지정해줘야 한다.
#    toy_name CHAR(4),
#    age INT);
#SELECT * FROM hongong2;

#INSERT INTO hongong2 VALUES (NULL, '보핍', 25); -- AUTO_INCREMENT로 지정된 열은 NULL로 입력하면 된다.
#INSERT INTO hongong2 VALUES (NULL, '슬링키', 22);
#INSERT INTO hongong2 VALUES (NULL, '랙스', 21);
#SELECT * FROM hongong2; 
#SELECT LAST_INSERT_ID(); -- 3

## AUTO_ INCREMENT 시작되는 입력값 변경
#ALTER TABLE hongong2 AUTO_INCREMENT=100; -- 테이블을 변경. 열이름 변경, 새로운 열 정의, 열 삭제등의 작업을 한다.
#INSERT INTO hongong2 VALUES (NULL, '재남', 35);
#SELECT * FROM hongong2;

## 시작값에서 다음 입력값 3씩 증가하도록 설정
CREATE TABLE hongong3 (
	toy_id INT AUTO_INCREMENT PRIMARY KEY,
    toy_name CHAR(4),
    age INT);
ALTER TABLE hongong3 AUTO_INCREMENT = 1000; -- 시작값 1000
SET @@auto_increment_increment = 3; -- 증가값 3으로 지정, 시스템변수 이용.
INSERT INTO hongong3 VALUES (NULL, '토마스', 20); 
INSERT INTO hongong3 VALUES (NULL, '제임스', 23);
INSERT INTO hongong3 VALUES (NULL, '고든', 25);
SELECT * FROM hongong3;
