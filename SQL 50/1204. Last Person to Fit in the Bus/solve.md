**1204. Last Person to Fit in the Bus**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```SUM(..) OVER(ORDER BY ...)```
<br>
🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌🚌
<br>

ANS:
<br>
```
WITH cte AS (SELECT person_name, SUM(weight) OVER (ORDER BY turn) AS turn_weight
FROM Queue
ORDER BY turn)
SELECT person_name as person_name FROM CTE WHERE turn_weight <= 1000
ORDER BY turn_weight DESC
LIMIT 1
```

<br>
EXPLANATION:
<br>
To solve this problem, first we need to create CTE to save every persons sum of weight until their turn. This can be done by using window functions like SUM(weight) OVER (ORDER BY turn). After that, you can return the person_name. Because the problem asks us to return only last person, we need to order DESC the CTE by the sum of weight (that we got from window function before), and then limit 1 to get only the last person. Yay! we got last person to fit in the bus 🥳