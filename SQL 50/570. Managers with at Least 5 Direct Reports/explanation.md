**570. Managers with at Least 5 Direct Reports**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```IN```
<br>
💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼💼
<br>
To solve this problem, first we must get the managerId that appear at least 5 times. This can be done using GROUP BY with condition of HAVING. After that, we can nest that result (managerIds) with another SELECT to get the names with id matches managerId in the result. Voila! you get exactly what the question ask for.