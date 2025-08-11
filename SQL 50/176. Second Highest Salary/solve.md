**176. Second Highest Salary Solved**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```cte```
<br>
💼💰💼💰💼💰💼💰💼💰💼💰💼💰💼💰💼💰💼💰💼💰💼💰
<br>

ANS:
<br>
```
WITH twoMax AS (
    SELECT DISTINCT salary 
    FROM employee
    ORDER BY salary DESC
    LIMIT 2
)
SELECT 
CASE
    WHEN 2 = (SELECT COUNT(salary) FROM twoMax)
    THEN MIN(salary)
    ELSE NULL
END AS SecondHighestSalary
FROM twoMax

```

<br>
EXPLANATION:
<br>
We can use common table expression to get the two top highest salary (by order salary desc and then limit 2). After that, using CASE, if the length of the cte's result is equal to 2, then return the minimum of salary. Else, (that means that theres only 1 salary retrieved from cte's result), then return null for the result. 
<br><br>
But after I read other solutions, I found out that we can use OFFSET in the limit to skip how many row as we want, so that we won't have to use cte (less comple).