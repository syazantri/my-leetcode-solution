**1517. Find Users With Valid E-Mails**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```REGEXP```
<br>
📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩📩
<br>

ANS:
<br>
```
SELECT user_id, name, mail
FROM USERS
WHERE SUBSTRING(LCASE(mail), 1, 1) REGEXP '^[a-z]$' AND BINARY SUBSTRING_INDEX(mail, '@', -1) LIKE 'leetcode.com' AND SUBSTRING_INDEX(mail, '@', 1) REGEXP '^[a-zA-Z0-9_.-]+$' AND LENGTH(mail) - LENGTH(REPLACE(mail, '@', '')) = 1
```

<br>
EXPLANATION:
<br>
My solution for this problem is kinda not optimized (not the best for the performance). 
<br>
1. I first check if the first character is an alphabet or not by using REGEXP. <br>
2. Second, I use SUBSTRING_INDEEX to locate the last part when the string delimited by @ symbol, to find leetcode.com by using LIKE. <br>
3. After that, I check if the part before @ is a string or symbol or digit by using REGEXP too <br>
4. Lastly, I use LENGTH and REPLACE to count how many @'s in the string <br>
<br>

But then suddenly I realized that we can write all of the 4 conditions in just 1 condition, by using RGEXP like this '^[a-zA-Z]{1}[a-zA-Z0-9-._]*@leetcode\\.com$' hehehe