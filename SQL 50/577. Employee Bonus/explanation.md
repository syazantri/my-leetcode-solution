**577. Employee Bonus**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋🦋
<br>
To get employee only with null or < 1000 bonus, I'm just thinking to put that condition in `where`, and then LEFT JOIN-ing both table (employee and bonus) becaue we want to get all of the employee (with bonus or no).