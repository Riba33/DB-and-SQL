SELECT avg(salary) as avgSalary,
	projects.name as projectName,
	avg(projects.cost) as cost
	FROM developers
	INNER JOIN developers_projects
	ON developers.id = developers_projects.developers_id
	INNER JOIN projects
	ON developers_projects.projects_id = projects.id
	GROUP BY projectName 
	ORDER BY cost Limit 1
;
