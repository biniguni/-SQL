USE market_db;
SHOW TABLES;
SHOW COLUMNS FROM buy;
SHOW COLUMNS FROM member;

# INNER JOIN 기본
SELECT * 
	FROM buy 
		INNER JOIN member 
		ON buy.mem_id = member.mem_id -- buy, member 두 개의 테이블을 조인하는 경우 동일한 열 이름이 존재한다면 꼭 테이블_이름.열_이름 형식으로 표기해야한다.
    WHERE buy.mem_id= 'GRL';

# INNER JOIN의 간결한 표현
SELECT mem_id, mem_name, prod_name, addr, CONCAT(phone1, phone2) '연락처'
	FROM buy
		INNER JOIN member
        ON buy.mem_id = member.mem_id; -- 오류 발생, mem_id가 member, buy 테이블 모두에 들어 있어서 어느 테이블의 mem_id인지 헷갈린다는 의미.

SELECT buy.mem_id, mem_name, prod_name, addr, CONCAT(phone1, phone2) '연락처'
	-- 어느 테이블의 mem_id를 추출할지 정확하게 작성.
	FROM buy
		INNER JOIN member
        ON buy.mem_id = member.mem_id; 

SELECT buy.mem_id, member.mem_name, buy.prod_name, member.addr, CONCAT(member.phone1, member.phone2) '연락처'
	FROM buy
		INNER JOIN member
        ON buy.mem_id = member.mem_id; -- 각 컬럼이 어느 테이블에 속하는 것인 명확하지만 코드가 길어짐. FROM 뒤에 alias를 줄 수 있음.

SELECT B.mem_id, M.mem_name, B.prod_name, M.addr, CONCAT(M.phone1, M.phone2) '연락처'
	FROM buy B -- 테이블 이름에 alias를 붙임. 
		INNER JOIN member M -- 테이블 이름에 alias를 붙임.
        ON B.mem_id = M.mem_id;

SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
	FROM buy B
		INNER JOIN member M
        ON B.mem_id = M.mem_id
	ORDER BY M.mem_id; -- INNER JOIN은 두 테이블에 모두 있는 내용만 출력. 만일 양쪽 중에 한곳이라도 내용이 있을 때 조인하려면 외부 조인 이용해야함.

# 중복된 결과 1개만 출력하기
SELECT DISTINCT M.mem_id, M.mem_name, M.addr -- DISTINCT: 중복 데이터 제거
	FROM buy B
		INNER JOIN member M
        ON B.mem_id = M.mem_id
	ORDER BY M.mem_id; -- 중복없이 한 번이라도 구매한 기록이 있는 회원만 조회된다.
