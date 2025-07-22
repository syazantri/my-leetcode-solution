SELECT name, bonus
FROM employee AS E
LEFT JOIN bonus AS B ON E.empId = B.empId
WHERE bonus < 1000 OR bonus IS NULL;