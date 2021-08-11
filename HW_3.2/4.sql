ALTER TABLE projects 
	ADD COLUMN cost INT NOT NULL AFTER name
;
UPDATE projects SET cost = '5000' WHERE (id = '1');
UPDATE projects SET cost = '6000' WHERE (id = '2');
UPDATE projects SET cost = '7000' WHERE (id = '3');
