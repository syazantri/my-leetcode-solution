**1321. Restaurant Growth**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```BETWEEN, CTE, HAVING```
<br>
🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭🌭
<br>

ANS:
<br>
```
WITH seven AS (
    SELECT visited_on, SUM(amount) AS amount
    FROM customer
    GROUP BY visited_on
)
SELECT 
c1.visited_on,
SUM(c2.amount) AS amount,
ROUND(AVG(c2.amount), 2) AS average_amount
FROM seven c1 JOIN seven c2
WHERE DATEDIFF(c1.visited_on, c2.visited_on) BETWEEN 0 AND 6
GROUP BY c1.visited_on
HAVING COUNT(c2.visited_on) = 7
ORDER BY visited_on ASC
```

<br>
EXPLANATION:
<br>
Firstly, create a cte to store grouped sum of amount per visited_on. After that, self join the cte with condition that the visited_on difference is between 0 and 6 to get all of the purchase of 7 days, and group it by first cte's visited_on with HAVING count the second cte's visited on = 7 (to ensure that there's 7 days in a group)