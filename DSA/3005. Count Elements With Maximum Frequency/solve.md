**3005. Count Elements With Maximum Frequency**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character logic: ```Counter```
<br>
🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢🔢
<br>

ANS (python):
<br>
```
from collections import Counter

class Solution:
    def maxFrequencyElements(self, nums: List[int]) -> int:
        counter = Counter(nums)
        max_count = max(counter.values())
        sum = 0
        for k, v in counter.items():
            if v == max_count:
                sum += max_count

        return sum
```

<br>
<b>EXPLANATION:</b>
<br>
Intuition: using Counter class from python collections module, we count the appearance of each value, and then loops through that list to get all of the value count. But when I read others solution, I realize that we can use reduce function to just multiply (so we can solve this without looping the list).