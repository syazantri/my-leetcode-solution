**3021. Alice and Bob Playing Flower Game**
<br>
Difficulty: $\color{yellow}{\textsf{medium}}$

🦸🏻‍♂️🎖️ Main character logic: ```odd combination of two numbers```
<br>
🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷🌸🌷
<br>

ANS (python):
<br>
```
class Solution:
    def flowerGame(self, n: int, m: int) -> int:
        return (n*m)//2
```

<br>
<b>EXPLANATION:</b>
<br>
Hi all, yesterday I completed the Top SQL 50 problems on leetcode and earned the badge. Getting that badge feels like a real achievement, as I had committed myself to solving all of the Top SQL 50 problems every day.
<br><br>
This motivates me to aim for more badges and keep practicing with more leetcode problems. Because of that, starting today and for the next 50 days, I’m committing to do the daily challenges (most of which I’ll solve using Python, my primary programming language).
<br><br>
This is the very first daily challenge I’ve solved. In this problem, we're' asked to calculate the probability of odd combinations of x and y (because Alice will only win if the total number of flowers is odd). The approach is to multiply n and m, then divide the result by 2 (taking the floor), since the total number of combinations is evenly split between odd and even sums.