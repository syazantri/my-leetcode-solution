**596. Classes With at Least 5 Students**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```HAVING```
<br>
🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒
<br>

ANS:
<br>
```
SELECT class
FROM courses
GROUP BY class
HAVING COUNT(student) > 4;
```

<br>
EXPLANATION:
<br>
This question asks as to retrieve classes that has at least 5 students. You can get this simply by using HAVING, and then select it (the class) like usual.