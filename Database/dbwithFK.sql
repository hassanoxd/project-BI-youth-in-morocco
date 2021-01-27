-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`mortalite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`mortalite` ;

CREATE TABLE IF NOT EXISTS `mydb`.`mortalite` (
  `idmortalite` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`idmortalite`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`temps`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`temps` ;

CREATE TABLE IF NOT EXISTS `mydb`.`temps` (
  `idtemps` INT NOT NULL AUTO_INCREMENT,
  `year` VARCHAR(45) NULL,
  PRIMARY KEY (`idtemps`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`gender`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`gender` ;

CREATE TABLE IF NOT EXISTS `mydb`.`gender` (
  `idgender` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`idgender`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`milieu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`milieu` ;

CREATE TABLE IF NOT EXISTS `mydb`.`milieu` (
  `idmilieu` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`idmilieu`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`youth`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`youth` ;

CREATE TABLE IF NOT EXISTS `mydb`.`youth` (
  `mortalite_idmortalite` INT NOT NULL,
  `temps_idtemps` INT NOT NULL,
  `gender_idgender` INT NOT NULL,
  `milieu_idmilieu` INT NOT NULL,
  `Adolescent fertility rate` FLOAT NULL,
  `Cause of death` FLOAT NULL,
  `Employment ratio` FLOAT NULL,
  `Labor force participation rate` FLOAT NULL,
  `Literacy rate` FLOAT NULL,
  `Prevalence of HIV` FLOAT NULL,
  `youth_not_education_training` FLOAT NULL,
  `Taux de chômage` FLOAT NULL,
  `Lower secondary completion rate` FLOAT NULL,
  `dependency ratio` FLOAT NULL,
  CONSTRAINT `fk_youth_mortalite`
    FOREIGN KEY (`mortalite_idmortalite`)
    REFERENCES `mydb`.`mortalite` (`idmortalite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_youth_temps1`
    FOREIGN KEY (`temps_idtemps`)
    REFERENCES `mydb`.`temps` (`idtemps`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_youth_gender1`
    FOREIGN KEY (`gender_idgender`)
    REFERENCES `mydb`.`gender` (`idgender`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_youth_milieu1`
    FOREIGN KEY (`milieu_idmilieu`)
    REFERENCES `mydb`.`milieu` (`idmilieu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
