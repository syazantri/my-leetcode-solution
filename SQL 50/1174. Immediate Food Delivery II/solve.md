**1174. Immediate Food Delivery II**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```MIN, nested select```
<br>
🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒🛒
<br>

ANS:
<br>
```
SELECT ROUND(100*SUM(order_date = customer_pref_delivery_date)/COUNT(*),2) 
AS immediate_percentage
FROM delivery
WHERE (customer_id, order_date) IN
    (SELECT customer_id, MIN(order_date)
    FROM delivery
    GROUP BY customer_id
    ORDER BY order_date ASC);
```

<br>
EXPLANATION:
<br>
I personally think the most important thing for this solution is nested query. This time, we should get every customer_id and their first order_date. How do we get the first order_date? At first, I was thinking if we can use LIMIT 1. But it turns out that LIMIT can't be used in the child select for this mysql version (leetcode it self told me that). The alternative is we use MIN to get the first order_date. After that, using SUM for counting the occurence of order_date = customer_pred_delivery_date, divide it by all lines and then round it to 2 decimal places. Yay, it's all done!