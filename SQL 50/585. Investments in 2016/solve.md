**585. Investments in 2016**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character query: ```WHERE ... IN.., HAVING```
<br>
📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈
<br>

ANS:
<br>
```
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM insurance
WHERE tiv_2015 in (
    SELECT tiv_2015
    FROM insurance
    GROUP BY tiv_2015
    HAVING COUNT(tiv_2015) > 1
) AND (lat,lon) in (
    SELECT lat,lon
    FROM insurance
    GROUP BY lat,lon
    HAVING COUNT(*) = 1
)
```

<br>
EXPLANATION:
<br>
One thing that's difficult in this problem is understanding what the question asks. Apparently, they are asking to sum the tiv_2016 column with filter:
1. Have same tiv_2015 with other record
2. Have unique lat and lon combination
And we can filter these two conditions by using WHERE(..) in (SELECT...). Ok just like that I think.