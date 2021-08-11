ALTER TABLE developers 
ADD COLUMN salary INT NOT NULL AFTER gender;
UPDATE developers SET salary = '400' WHERE (id = '1');
UPDATE developers SET salary = '500' WHERE (id = '2');
UPDATE developers SET salary = '600' WHERE (id = '3');
UPDATE developers SET salary = '450' WHERE (id = '4');
UPDATE developers SET salary = '600' WHERE (id = '5');
