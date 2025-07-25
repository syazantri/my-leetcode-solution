**2356. Number of Unique Subjects Taught by Each Teacher**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```WHERE... in```
<br>
👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫
<br>

ANS:
<br>
```
SELECT
product_id,
year AS first_year,
quantity,
price
FROM 
 sales 
 WHERE (product_id, year) in
(
    SELECT s.product_id, MIN(s.year) AS year
    FROM sales AS s
    GROUP BY s.product_id
) 
```

<br>
EXPLANATION:
<br>
The one thing we must pay attention to is there might be more than 1 quantity and price for the same product_id. That's why in my solution, we should first get all of the product_id and its first year sales. With that result, we then retrieve all of the quantity and price for corresponding product_id and year. Voila, solve it!