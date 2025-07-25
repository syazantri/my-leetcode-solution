**2356. Number of Unique Subjects Taught by Each Teacher**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```COUNT(DISTINCT ...)```
<br>
👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫👩🏻‍🏫
<br>

ANS:
<br>
```
SELECT teacher_id, 
COUNT(DISTINCT subject_id) AS cnt
FROM teacher
GROUP BY teacher_id;
```

<br>
EXPLANATION:
<br>
For this question, you need to first group the table by teacher_id to get every teaher's subject_id. After that, count with distinct since we want if we have more than 1 subject_id that is the same, count as 1.