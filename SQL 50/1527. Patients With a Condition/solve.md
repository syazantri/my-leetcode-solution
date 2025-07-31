**1527. Patients With a Condition**
<br>
Difficulty: $\color{green}{\textsf{easy}}$

🦸🏻‍♂️🎖️ Main character query: ```LIKE```
<br>
🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥🏥
<br>

ANS:
<br>
```
SELECT patient_id, patient_name, conditions
FROM patients
WHERE conditions LIKE '% DIAB1%' OR conditions LIKE 'DIAB1%'
```

<br>
EXPLANATION:
<br>
To get all of the patient name that has DIAB1 as a prefix in the first word, we can use LIKE 'DIAB1%', and for the rest of the words, use LIKE '% DIAB1%'.