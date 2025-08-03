**1484. Group Sold Products By The Date**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```GROUP_CONCAT```
<br>
🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️🛍️
<br>

ANS:
<br>
```
SELECT sell_date,
COUNT(DISTINCT product) AS num_sold,
GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM activities
GROUP BY sell_date
```

<br>
EXPLANATION:
<br>
First, we have to group table activities by sell_date. After that, select the needed columns like sell_date, and then count the product (with distinct) as the number product sold, and lastly, new function I learned today (GROUP_CONCAT) with separator comma and from product column.