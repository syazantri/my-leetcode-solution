**1935. Maximum Number of Words You Can Type**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character logic: ```comparing words```
<br>
⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️⌨️
<br>

ANS (python):
<br>
```
# First Solution
class Solution(object):
    def canBeTypedWords(self, text, brokenLetters):
        """
        :type text: str
        :type brokenLetters: str
        :rtype: int
        """
        mylist = text.split()
        brokenList = list(brokenLetters)
        num = 0
        for word in mylist:
            notInList = True
            for broken in brokenList:
                if broken in word:
                    notInList = False
                    break
            if notInList: 
                num +=1
        return num    
```
```
# Second Solution
        mylist = text.split()
        mask = 0
        num = 0
        for ch in brokenLetters:
            mask |= 1 << (ord(ch)-97)
        for word in mylist:
            mask2 = 0
            for ch in word:
                mask2 |= 1 << (ord(ch)-97)
            if mask & mask2 == 0:
                num += 1
        return num
```

<br>
<b>EXPLANATION:</b>
<br>
This question asks us to check if a word can be made or not by checking if there's any broken letter in the word. We can solve this by looping every word and every character in brokenletter like my first solution. But after reading other solution, I found that we can also solve this by comparing the bits of brokenletter and the word (by first storing the bitmask using OR bit operation and then comparing it (word and broken letter) by AND operation. If the result of AND operation is zero, then the word is safe from broken letter (there's no same letter between the word and brokenLetter)).