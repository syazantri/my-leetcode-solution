SELECT s1.user_id, 
CASE 
    WHEN COUNT(c1.action) = 0
        THEN 0.00 
    ELSE ROUND(SUM(c1.action='confirmed')/COUNT(c1.action),2)
END AS confirmation_rate
FROM signups AS s1
LEFT JOIN confirmations AS c1 ON s1.user_id = c1.user_id
GROUP BY s1.user_id;