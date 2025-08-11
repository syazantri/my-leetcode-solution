**1327. List the Products Ordered in a Period**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```BETWEEN```
<br>
📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈
<br>

ANS:
<br>
```
SELECT product_name, SUM(unit) AS unit
FROM products JOIN orders ON products.product_id = orders.product_id
WHERE order_date BETWEEN '2020-02-1' AND '2020-02-29'
GROUP BY orders.product_id
HAVING SUM(unit) >= 100
```

<br>
EXPLANATION:
<br>
To solve this problem, first we have to get all order between '2020-02-1' and '2020-02-29' from table joins (product and orders), because the question asks us to get all orders in February. After that, filter it by using HAVING expression, then select all of the columns that need to be shown.