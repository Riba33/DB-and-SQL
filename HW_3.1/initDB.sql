CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE IF NOT EXISTS `mydb`.`skils` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `level` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
  CREATE TABLE IF NOT EXISTS `mydb`.`projects` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `total_cost` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
  CREATE TABLE IF NOT EXISTS `mydb`.`developers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `gender` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
  CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  `safer` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
  CREATE TABLE IF NOT EXISTS `mydb`.`companies` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  `safer` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
  CREATE TABLE IF NOT EXISTS `mydb`.`developers_projects` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `developers_id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
  ALTER TABLE `mydb`.`developers_projects` 
ADD INDEX `fk_developers_id_idx` (`developers_id` ASC) VISIBLE,
ADD INDEX `fk_projects_id_idx` (`projects_id` ASC) VISIBLE;
;
ALTER TABLE `mydb`.`developers_projects` 
ADD CONSTRAINT `fk_developers_id`
  FOREIGN KEY (`developers_id`)
  REFERENCES `mydb`.`developers` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_projects_id`
  FOREIGN KEY (`projects_id`)
  REFERENCES `mydb`.`projects` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  CREATE TABLE IF NOT EXISTS `mydb`.`customers_projects` (
  `id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  `customers_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
  ALTER TABLE `mydb`.`customers_projects` 
ADD CONSTRAINT `fk_projects1_id`
  FOREIGN KEY (`projects_id`)
  REFERENCES `mydb`.`projects` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_customers_id`
  FOREIGN KEY (`customers_id`)
  REFERENCES `mydb`.`customers` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  CREATE TABLE IF NOT EXISTS `mydb`.`companies_projects` (
  `id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  `companies_id` INT NOT NULL,
  INDEX `fk_projects_id_idx` (`projects_id` ASC) INVISIBLE,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
 ALTER TABLE `mydb`.`companies_projects` 
ADD CONSTRAINT `fk_projects2_id`
  FOREIGN KEY (`projects_id`)
  REFERENCES `mydb`.`projects` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_companies_id`
  FOREIGN KEY (`companies_id`)
  REFERENCES `mydb`.`companies` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

CREATE TABLE IF NOT EXISTS `mydb`.`developers_skils` (
  `id` INT NOT NULL,
  `developers_id` INT NOT NULL,
  `skils_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
ALTER TABLE `mydb`.`developers_skils` 
ADD CONSTRAINT `fk_developers1_id`
  FOREIGN KEY (`developers_id`)
  REFERENCES `mydb`.`developers` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_skils_id`
  FOREIGN KEY (`skils_id`)
  REFERENCES `mydb`.`skils` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;  
