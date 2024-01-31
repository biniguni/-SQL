USE market_db;

#SELECT * FROM buy ORDER BY amount DESC;
#SELECT mem_id "회원 아이디", SUM(amount) "총 구매 개수" FROM buy GROUP BY mem_id; -- 별칭에는 큰따옴표 사용 권장
#SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액" FROM buy GROUP BY mem_id; 
#SELECT mem_id, AVG(amount) FROM buy GROUP BY mem_id;
#SELECT COUNT(*) FROM member;
#SELECT COUNT(phone1) FROM member; -- COUTN(열_이름)은 NULL을 제외한 행의 개수를 센다.

SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액" FROM buy 
	GROUP BY mem_id
    HAVING SUM(price*amount) > 1000
    ORDER BY SUM(price*amount) DESC;
    
