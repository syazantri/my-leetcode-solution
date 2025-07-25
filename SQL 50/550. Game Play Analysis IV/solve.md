**550. Game Play Analysis IV**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```SELECT in a SELECT```
<br>
🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮
<br>

ANS:
<br>
```
SELECT ROUND(COUNT(DISTINCT dayafter.player_id)/COUNT(DISTINCT firstlogin.player_id),2)
AS fraction
FROM 
(
    SELECT firstlogin.player_id, MIN(firstlogin.event_date) AS event_date
    FROM activity AS firstlogin
    GROUP BY firstlogin.player_id
) AS firstlogin
LEFT JOIN activity AS dayafter 
ON dayafter.player_id = firstlogin.player_id AND
DATEDIFF(dayafter.event_date, firstlogin.event_date) = 1 AND 
firstlogin.event_date < dayafter.event_date;
```

<br>
EXPLANATION:
<br>
So far, this is the most complex question I've solved in leetcode SQL 50. I think it's because f the complex explanation f the problem, so that it won't be easy t understand. But I will explain how I solve this problem step-by-step:
    1. SELECTING all the first login date for every player by nested select
    2. After that, LEFT JOIN with another activity table with condition that this second table is 1 day after the date of first login's every player
    3. We got all the table we need. Lastly, calculate the count of dayafter's player id divided by count of first login's player id to get the fraction