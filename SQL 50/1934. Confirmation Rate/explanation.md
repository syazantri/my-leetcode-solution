**1934. Confirmation Rate**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```CASE```
<br>
✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅✅
<br>
1. You must retrieve and provide all users, whether they have confirmed or not, so I used a LEFT JOIN from signups on confirmations
2. If a user hasn't made any actions, return 0, not null. So I made case condition in the SELECT clause (afterreading other solutions, I realized that there's simpler way to write the conditional case (with IFNULL))
3. Then inside the case condition, if the user hasn't made any actions, return 0.00, otherwise, return sum of the confirmed action divided by count of all action, rounded to 2 decimal places.