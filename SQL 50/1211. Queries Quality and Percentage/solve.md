**1211. Queries Quality and Percentage**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```SUM for counting```
<br>
🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶🐶
<br>

ANS:
<br>
```
SELECT query_name,
ROUND(AVG(rating/position),2) AS quality,
ROUND(100 * SUM(rating<3)/COUNT(rating),2) AS poor_query_percentage
FROM queries
GROUP BY query_name;
```

<br>
EXPLANATION:
<br>
For this question, one part that make this a bit harder to solve for me is because the instructions is not very clear. But actually when you see the output examples, you will realize that this problem is quite easy to solve. You can use SUM(condition) to count the appearance of something with a condition like in this case, when the rating is less than three. Anything else is quite simple.