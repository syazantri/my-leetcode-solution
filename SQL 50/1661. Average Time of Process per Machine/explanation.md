I start by thinking I should make 2 copy of activity table, it is separated by its ```activity_type```, which is between 'end' or 'start'. 

And then joining both of the tables with a condition, they should have same ```machine_id``` so that I can calculate the ```timestamp``` difference and then calculate the average of it.

***Why we don't need the condition of equaling ```process_id```?***
<br>
If the question is not average, maybe we still need it. But since the question is asking for average, it is the same whether we restrict equaling it or no (the order doesnt matter).

Example:
start: 2, 3
end: 4, 5

((4 - 2) + (5 - 3)) / 2 = ((5 - 2) + (4 - 3)) / 2 