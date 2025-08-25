**1907. Count Salary Categories**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```cte```
<br>

<br>

ANS:
<br>
```
With low_salary AS (SELECT
"Low Salary" AS category,
COUNT(account_id) AS accounts_count
FROM accounts 
WHERE income < 20000),
avg_salary AS (SELECT
"Average Salary" AS category,
COUNT(account_id) AS accounts_count
FROM accounts 
WHERE income BETWEEN 20000 AND 50000),
high_salary AS (SELECT
"High Salary" AS category,
COUNT(account_id) AS accounts_count
FROM accounts 
WHERE income > 50000 )
SELECT * from low_salary
UNION ALL
SELECT * from avg_salary
UNION ALL
SELECT * from high_salary
```

<br>
EXPLANATION:
<br>
As simple as create CTE for every salary category, with counting how many accounts that are in a category, and then union it all. However, I found that my approach is not very effective. I read a solution from another submission that uses a CASE statement. This approach eliminates the needs to create 3 CTEs (which is much more optimal since it avoids scanning the table three times).