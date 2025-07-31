**1667. Fix Names in a Table**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```SUBSTRING```
<br>
🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠🔠
<br>

ANS:
<br>
```
SELECT user_id, CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM users
ORDER BY user_id
```

<br>
EXPLANATION:
<br>
This is the first time I learned about string functions in SQL! What the instructions ask is to write the names in uppercase only for the first character, and the rest are in lowercase. We can use UPPER and LOWER to make a substring lowercase and uppercase. where did we get the substring? We can use SUBSTRING(string, start, length (optional, if you want all of the string, just leave it in blank)). After that, use CONCAT to combine the substrings.