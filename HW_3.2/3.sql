SELECT sum(salary) as totalSalary,
	skils.name as skil
	FROM developers
	INNER JOIN developers_skils
	ON developers.id = developers_skils.developers_id
	INNER JOIN skils
	ON developers_skils.skils_id = skils.id
	WHERE skils.name = 'Java'
	GROUP BY skils.name
;
