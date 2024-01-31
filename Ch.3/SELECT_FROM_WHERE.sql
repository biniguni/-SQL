USE market_db;
# SELECT * FROM member;
# SELECT mem_name FROM member;
# SELECT addr, debut_date, mem_name FROM member;
# SELECT addr 주소, debut_date 'debut date 데뷔 날짜', mem_name FROM member; --  열 이름에 별칭(alias) 지정. 별칭에 공백이 있으면 따옴표로 묶어줌

# SELECT * FROM member WHERE mem_name = '블랙핑크';
# SELECT * FROM member WHERE mem_number = 4;
#SELECT * FROM member 
#	WHERE height <= 162;
# SELECT * FROM member WHERE height >= 165 AND mem_number >= 4; -- AND/OR

## BETWEEN ~ AND 
#SELECT * FROM member WHERE height >= 163 AND height <= 165; SELECT * FROM member WHERE height BETWEEN 163 AND 165; -- BETWEEN ~ AND와 동일

## IN()
#SELECT mem_name FROM member
#	WHERE addr IN('경기', '전남'); -- CHAR의 경우 IN() 사용 가능

## LIKE()
# SELECT * FROM member WHERE mem_name LIKE '마%'; -- % -> 제일 앞 글자가 '무'이고 그 뒤는 무엇이든 허용한다.
# SELECT * FROM member WHERE mem_name LIKE '__핑크'; -- 언더바 2개 -> 앞 두 글자는 상관없고 뒤는 '핑크'인 회원 검색

## subquery
#SELECT height FROM member WHERE mem_name = '에이핑크';
#SELECT mem_name FROM member WHERE height > 164;
# SQL 문 2개를 하나로 만들기
SELECT mem_name FROM member WHERE height > (SELECT height FROM member WHERE mem_name = '에이핑크');
# 괄호 안에 SQL 문이 164를 써준 것과 동일한 효과
