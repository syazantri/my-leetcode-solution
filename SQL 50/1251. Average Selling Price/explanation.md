**1251. Average Selling Price**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```BETWEEN```
<br>
💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵💵
<br>
As more I practice I kind of realize there's a pattern when I solve these SQL problems. First, if we need to joining tables, I always think of what kind of JOIN I must use, for example, if I need all values of a column that maybe not appear in other table, then I use left/right join. For this case, I use LEFT JOIN. After that, I'm thinking about the join condition. In this case, we must paying attention to the date. To get the correct price, the purchase date should be between start date and end date, that's why we use BETWEEN expression. After we got the table, use IFNULL in the SELECT clause so that we can return 0 for unsold products instead of null. Yayy we solve the problem!