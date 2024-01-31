USE market_db;
#SELECT * FROM member;
#SELECT mem_id, mem_name, debut_date FROM member 
#	ORDER BY debut_date;
#SELECT mem_id, mem_name, debut_date FROM member 
#	ORDER BY debut_date DESC;
#SELECT mem_name, debut_date, height FROM member WHERE height >= 164 
#	ORDER BY height DESC; -- WHERE와 ORDER BY 구문 순서 주의
SELECT mem_name, debut_date, height FROM member 
	WHERE height >= 164
    ORDER BY height DESC, debut_date ASC;