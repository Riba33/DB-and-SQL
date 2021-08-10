CREATE SCHEMA IF NOT EXISTS `mydb1` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE IF NOT EXISTS `mydb1`.`skils` (
  `id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(45) NOT NULL,
  `level` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE IF NOT EXISTS `mydb1`.`projects` (
  `id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(45) NOT NULL,
  `total_cost` INT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE IF NOT EXISTS `mydb1`.`developers` (
  `id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `gender` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE IF NOT EXISTS `mydb1`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(128) NOT NULL,
  `safer` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE IF NOT EXISTS `mydb1`.`companies` (
  `id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(128) NOT NULL,
  `safer` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE IF NOT EXISTS `mydb1`.`developers_projects` (
  `id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `developers_id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  FOREIGN KEY (developers_id) REFERENCES developers (id),
  FOREIGN KEY (projects_id) REFERENCES projects (id),
  PRIMARY KEY (`id`));
  
  CREATE TABLE IF NOT EXISTS `mydb1`.`customers_projects` (
  `id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `projects_id` INT NOT NULL,
  `customers_id` INT NOT NULL,
  FOREIGN KEY (projects_id) REFERENCES projects (id),
  FOREIGN KEY (customers_id) REFERENCES customers (id),
  PRIMARY KEY (`id`)
  );
  
  CREATE TABLE IF NOT EXISTS `mydb1`.`companies_projects` (
  `id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `projects_id` INT NOT NULL,
  `companies_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (projects_id) REFERENCES projects (id),
  FOREIGN KEY (companies_id) REFERENCES companies (id));
  
  CREATE TABLE IF NOT EXISTS `mydb1`.`developers_skils` (
  `id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `developers_id` INT NOT NULL,
  `skils_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (developers_id) REFERENCES developers (id),
  FOREIGN KEY (skils_id) REFERENCES skils (id));
