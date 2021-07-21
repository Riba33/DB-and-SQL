SELECT sum(salary) as cost,
c.name as nameProject
FROM mydb.developers as a
INNER JOIN mydb.developers_projects as b
ON a.id = b.developers_id
INNER JOIN mydb.projects as c
ON b.projects_id = c.id
GROUP BY c.name 
ORDER BY cost desc LIMIT 1
;