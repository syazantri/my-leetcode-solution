**2356. Number of Unique Subjects Taught by Each Teacher**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```COUNT(DISTINCT ...), DATEDIFF```
<br>
🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛🔛
<br>

ANS:
<br>
```
SELECT
activity_date AS day,
COUNT(DISTINCT user_id) AS active_users
FROM activity
WHERE DATEDIFF('2019-07-27',activity_date) < 30 AND activity_date <= '2019-07-27'
GROUP BY activity_date;
```

<br>
EXPLANATION:
<br>
To solve this question, first, we have to get all the activities that active on 30 days before before ```2019-07-27```. You can get this by using DATEDIFF. Don't forget to add single quotation mark (string sign), because before I forgot to add that and obviously the query wont work even though it cause no error. After you get the list of all activities, you can count distinct of the user_id. Yay, solved! Oh and by the way, you can also use BETWEEN but I won't recommend it because if you use BETWEEN, you have to calculate and determine what date is exactly 29 days before ```2019-07-27```. It will be prone to human error (miscalculations).