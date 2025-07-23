**1280. Students and Examinations**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```CROSS JOIN```
<br>
📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖📖
<br>
I first thinking about how I should join 3 tables because I kinda forgot if we can join more than 2 tables. After figuring out that we can joining more than 2 tables (one by one), I realized that we should first perform CROSS JOIN table student and subject so that we can fulfill what the question asks (combination of all students and subjects). Then, we join the result of this operation with the exam table. This allows us to count how many exams each student has taken for each subject, Yay!. 