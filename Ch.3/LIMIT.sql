USE market_db;

SELECT mem_name, debut_date, height FROM member
	ORDER BY debut_date
    LIMIT 1, 3;