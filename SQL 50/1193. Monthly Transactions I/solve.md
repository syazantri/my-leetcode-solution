**1193. Monthly Transactions I**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```DATE_FORMAT, CASE in COUNT```
<br>
🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒
<br>

ANS:
<br>
```
SELECT
DATE_FORMAT(trans_date, '%Y-%m') AS month,
country,
COUNT(*) AS trans_count,
COUNT(CASE 
    WHEN state='approved'
    THEN 1
    ELSE null
END)
AS approved_count,
SUM(amount) AS trans_total_amount,
SUM(CASE 
    WHEN state='approved'
    THEN amount
    ELSE 0
END)
AS approved_total_amount
FROM transactions
GROUP BY country, month;
```

<br>
EXPLANATION:
<br>
A lot of new things that I learned from solving this problem. Not really new, but good enough to refresh my sql memory about date. So, in order to get the dates like the question wanted, we must use DATE_FORMAT. And then, there's a bit tricky part for counting the approved transactions. But I figured out we can use CASE and return 1 if approved for approved count, and return amount if approved for approved amount. 