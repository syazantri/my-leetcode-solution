**1729. Find Followers Count**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```COUNT()```
<br>
📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱📱
<br>

ANS:
<br>
```
SELECT user_id, COUNT(follower_id) AS followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id ASC;
```

<br>
EXPLANATION:
<br>
Similar with previous problem I've solved, just this one is quite simpler (you don't have to use HAVING). So first you have to count the follower_id for each user. The question asks us to order the result by user_id in ascending order too. That's why we should use ORDER BY ... ASC too.