**1633. Percentage of Users Attended a Contest**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```SELECT (in aggregate funct)```
<br>
📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖
<br>

ANS:
<br>
```
SELECT r.contest_id, 
ROUND(100.0 * COUNT(DISTINCT r.user_id)/ (SELECT COUNT(*) FROM users),2)
AS percentage
FROM register AS r
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC;
```

<br>
EXPLANATION:
<br>
The point is, we must calculate user that come to a contest divided by all users. From solving this question, I learned that we can use select in aggregate function, that's very helping! Then just count distinct user that joined a contest, and divide it by using select in aggregate. 