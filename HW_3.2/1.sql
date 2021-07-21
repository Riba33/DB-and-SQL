ALTER TABLE `mydb`.`developers` 
ADD COLUMN `salary` INT NOT NULL AFTER `gender`;
UPDATE `mydb`.`developers` SET `salary` = '400' WHERE (`id` = '1');
UPDATE `mydb`.`developers` SET `salary` = '500' WHERE (`id` = '2');
UPDATE `mydb`.`developers` SET `salary` = '600' WHERE (`id` = '3');
UPDATE `mydb`.`developers` SET `salary` = '450' WHERE (`id` = '4');
UPDATE `mydb`.`developers` SET `salary` = '600' WHERE (`id` = '5');