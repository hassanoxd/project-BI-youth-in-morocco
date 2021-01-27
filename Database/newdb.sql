-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema youth
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema youth
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `youth` DEFAULT CHARACTER SET utf8 ;
USE `youth` ;

-- -----------------------------------------------------
-- Table `youth`.`mortalite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youth`.`mortalite` (
  `idmortalite` INT NOT NULL AUTO_INCREMENT,
  `libelle` VARCHAR(45) NULL,
  PRIMARY KEY (`idmortalite`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youth`.`temps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youth`.`temps` (
  `idtemps` INT NOT NULL AUTO_INCREMENT,
  `year` VARCHAR(45) NULL,
  PRIMARY KEY (`idtemps`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youth`.`milieu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youth`.`milieu` (
  `idmilieu` INT UNSIGNED NOT NULL,
  `libelle` VARCHAR(45) NULL,
  PRIMARY KEY (`idmilieu`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youth`.`sexe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youth`.`sexe` (
  `idsexe` INT NOT NULL AUTO_INCREMENT,
  `libelle` VARCHAR(45) NULL,
  PRIMARY KEY (`idsexe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youth`.`jeune`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youth`.`jeune` (
  `mortalite_idmortalite` INT NOT NULL,
  `temps_idtemps` INT NOT NULL,
  `milieu_idmilieu` INT NOT NULL,
  `sexe_idsexe` INT NOT NULL,
  `cause_of_death` VARCHAR(45) NULL,
  `employment_ratio` VARCHAR(45) NULL,
  `labor_force_participation` VARCHAR(45) NULL,
  `litracy_rate` VARCHAR(45) NULL,
  `prevelance_of_hiv` VARCHAR(45) NULL,
  `youth_not_educated` VARCHAR(45) NULL,
  `taux_de_chomage` VARCHAR(45) NULL,
  `lower_secondary` VARCHAR(45) NULL,
  `dependancy` VARCHAR(45) NULL,
  `jeunecol` VARCHAR(45) NULL,
  `taux_population` VARCHAR(45) NULL,
  PRIMARY KEY (`mortalite_idmortalite`, `temps_idtemps`, `milieu_idmilieu`, `sexe_idsexe`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
