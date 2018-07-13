-- MySQL Script generated by MySQL Workbench
-- Thu Jul 12 15:38:41 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `idUser` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `password` LONGTEXT NOT NULL,
  `createdAt` DATETIME NULL,
  `isAdmin` TINYINT(1) NOT NULL,
  `isDeleted` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idUser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Team`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Team` (
  `idTeam` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `isDeleted` TINYINT(1) NOT NULL,
  `createdAt` DATETIME NULL,
  PRIMARY KEY (`idTeam`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FixedError`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`FixedError` (
  `idFixedError` INT NOT NULL,
  `errorCode` INT NULL,
  `networkElement` VARCHAR(45) NULL,
  `description` VARCHAR(255) NULL,
  `requestId` VARCHAR(255) NOT NULL,
  `retries` INT NULL,
  `daysInError` INT NULL,
  `startedAt` DATETIME NULL,
  `lastRetryAt` DATETIME NULL,
  `workOrder` INT NULL,
  `status` VARCHAR(45) NULL,
  `isReported` TINYINT(1) NULL,
  `isDeleted` TINYINT(1) NOT NULL,
  `accessId` INT NOT NULL,
  PRIMARY KEY (`idFixedError`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MobileError`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`MobileError` (
  `idFixedError` INT NOT NULL,
  `errorCode` INT NULL,
  `networkElement` VARCHAR(45) NULL,
  `description` VARCHAR(255) NULL,
  `requestId` VARCHAR(255) NOT NULL,
  `retries` INT NULL,
  `daysInError` INT NULL,
  `startedAt` DATETIME NULL,
  `lastRetryAt` DATETIME NULL,
  `workOrder` INT NULL,
  `status` VARCHAR(45) NULL,
  `isReported` TINYINT(1) NULL,
  `isDeleted` TINYINT(1) NOT NULL,
  `msisdn` INT NOT NULL,
  `imsi` INT NOT NULL,
  PRIMARY KEY (`idFixedError`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
