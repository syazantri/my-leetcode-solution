**196. Delete Duplicate Emails**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```DELETE```
<br>
💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌💌
<br>

ANS:
<br>
```
DELETE a FROM person a, person b WHERE a.id > b.id AND a.email = b.email
```

<br>
EXPLANATION:
<br>
This time, the question is a bit special. Instead of SELECT, we should use DELETE to solve this problem. Therefore, I use DELETE, with two aliases to compare if the two aliases have the same email and delete the larger id.