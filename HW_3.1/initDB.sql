-- MySQL Script generated by MySQL Workbench
-- Wed Jul 21 17:48:39 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`skils`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`skils` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `level` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`projects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`projects` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `total_cost` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`developers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`developers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `gender` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  `safer` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`companies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`companies` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  `safer` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`developers_projects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`developers_projects` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `developers_id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  PRIMARY KEY (`id`, `developers_id`, `projects_id`),
  INDEX `developers_id_idx` (`developers_id` ASC) VISIBLE,
  INDEX `fk_projects_ia_idx` (`projects_id` ASC) VISIBLE,
  CONSTRAINT `fk_developers_id`
    FOREIGN KEY (`developers_id`)
    REFERENCES `mydb`.`developers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projects_ia`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers_projects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers_projects` (
  `id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  `customers_id` INT NOT NULL,
  PRIMARY KEY (`id`, `projects_id`, `customers_id`),
  INDEX `fk_customers_id_idx` (`customers_id` ASC) VISIBLE,
  INDEX `fk_projects_id_idx` (`projects_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_id`
    FOREIGN KEY (`customers_id`)
    REFERENCES `mydb`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projects_id`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`companies_projects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`companies_projects` (
  `id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  `companies_id` INT NOT NULL,
  INDEX `fk_projects_id_idx` (`projects_id` ASC) INVISIBLE,
  PRIMARY KEY (`id`, `projects_id`, `companies_id`),
  CONSTRAINT `fk_companies_id`
    FOREIGN KEY (`companies_id`)
    REFERENCES `mydb`.`companies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projects1_id`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`developers_skils`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`developers_skils` (
  `iid` INT NOT NULL,
  `developers_id` INT NOT NULL,
  `skils_id` INT NOT NULL,
  PRIMARY KEY (`iid`, `developers_id`, `skils_id`),
  INDEX `fk_developers_id_idx` (`developers_id` ASC) VISIBLE,
  INDEX `fk_skils_id_idx` (`skils_id` ASC) VISIBLE,
  CONSTRAINT `fk_developers1_id`
    FOREIGN KEY (`developers_id`)
    REFERENCES `mydb`.`developers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_skils_id`
    FOREIGN KEY (`skils_id`)
    REFERENCES `mydb`.`skils` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
