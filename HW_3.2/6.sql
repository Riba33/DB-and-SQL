SELECT avg(salary) as avgSalary,
c.name as nameProject,
avg(c.cost) as cost
FROM mydb.developers as a
INNER JOIN mydb.developers_projects as b
ON a.id = b.developers_id
INNER JOIN mydb.projects as c
ON b.projects_id = c.id
GROUP BY nameProject 
ORDER BY cost Limit 1
;