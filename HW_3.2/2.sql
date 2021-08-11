SELECT sum(salary) as cost,
	projects.name as projectName
	FROM developers
	INNER JOIN developers_projects
	ON developers.id = developers_projects.developers_id
	INNER JOIN projects
	ON developers_projects.projects_id = projects.id
	GROUP BY projects.name 
	ORDER BY cost desc LIMIT 1
;
