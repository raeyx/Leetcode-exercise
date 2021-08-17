SELECT DISTINCT a.name AS name
FROM employee a
JOIN employee b
ON a.id = b.managerid
GROUP BY a.name
HAVING COUNT(a.id) >= 5

