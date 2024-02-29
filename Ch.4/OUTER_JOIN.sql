USE market_db;

# OUTER JOIN -- 두 테이블을 조인할 때 필요한 내용이 한쪽 테이블에만 있어도 결과 추출 가능.

SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
	FROM member M 
		LEFT OUTER JOIN buy B -- 왼쪽 테이블(memeber)의 내용은 모두 출력되어야 한다.
        ON M.mem_id = B.mem_id
	ORDER BY M.mem_id;
    
SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
	FROM buy B
		RIGHT OUTER JOIN member M -- 오른쪽에 있는 회원 테이블을 기준으로 외부 조인한다(위와 결과 동일).
        ON M.mem_id = B.mem_id
	ORDER BY M.mem_id;
        
# 외부 조인 활용
SELECT DISTINCT M.mem_id, B.prod_name, M.mem_name, M.addr
	FROM member M
		LEFT OUTER JOIN buy B
        ON M.mem_id = B.mem_id
	WHERE B.prod_name IS NULL
    ORDER BY M.mem_id;