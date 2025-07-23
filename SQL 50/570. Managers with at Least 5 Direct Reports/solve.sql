SELECT e.name 
FROM employee AS e
WHERE e.id IN 
    (
        SELECT m.managerId
        FROM employee AS m
        GROUP BY m.managerId
        HAVING COUNT(m.managerId) > 4
    );