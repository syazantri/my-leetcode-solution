**1075. Project Employees I**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```-```
<br>
👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻👨‍💻
<br>
This time, I personally feel like there's no main character query because all of the expressions used are quite basic. Here are the steps how I solve this problem:
1. Deciding what kind of join I'll use. In my opinion we can use basic JOIN because there's no specific requirements for this question.
2. Determine the GROUP BY condition. in this case, project_id from project table is okay because the questions ask for it
3. Lastly, make the expression inside of SELECT clause to fulfill the average_years requirement. We use SUM, COUNT, and ROUND here.

yAY, Finish!