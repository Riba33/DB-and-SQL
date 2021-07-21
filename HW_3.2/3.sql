SELECT sum(salary) as totalSalary,
c.name as skil
FROM mydb.developers as a
INNER JOIN mydb.developers_skils as b
ON a.id = b.developers_id
INNER JOIN mydb.skils as c
ON b.skils_id = c.id
WHERE c.name = 'Java'
GROUP BY c.name;