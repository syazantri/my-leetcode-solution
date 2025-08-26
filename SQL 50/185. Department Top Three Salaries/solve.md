**185. Department Top Three Salaries**
<br>
Difficulty: $\color{red}{\textsf{hard}}$

🦸🏻‍♂️🎖️ Main character query: ```DENSE_RANK()```
<br>
🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑🤑
<br>

ANS:
<br>
```
WITH employee_rank AS (SELECT name AS employee, salary, departmentId, DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS rank_salary
FROM Employee)

SELECT name AS department, employee, salary
FROM employee_rank LEFT JOIN department ON employee_rank.departmentId = department.id
WHERE rank_salary <= 3
```

<br>
EXPLANATION:
<br>
First, in my approach, we need to create a CTE that stores salary rank for each department, it can be done by using DENSE_RANK() window function. After that, join the CTE with department table to get the department name, and filter it to only have rank_salary <= 3 as the question asks for only top 3. Later, I realize that we don't really need to make a CTE, we can go straight to joining the department table and return the result, it will be much more optimal! Oh and by the way, this time I learned the differences between these 3 window function:
1. DENSE_RANK(): If values are the same, they share the same rank. The next distinct value will get the next rank (no gaps).
2. RANK(): If values are the same, they share the same rank, but the next distinct value will be next immediate rank + gaps that has been skipped.
3. ROW_NUMBER(): It doesn't care if the value is the same or not, just pure row number (it will always continue incrementing the number)/