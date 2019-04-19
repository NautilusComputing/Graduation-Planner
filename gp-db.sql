-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema graduation_planner
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema graduation_planner
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `graduation_planner` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `graduation_planner` ;

-- -----------------------------------------------------
-- Table `graduation_planner`.`courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `graduation_planner`.`courses` (
  `course_id` INT(99) NOT NULL,
  `course_name` VARCHAR(45) NOT NULL,
  `course_desc` VARCHAR(250) NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `graduation_planner`.`majors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `graduation_planner`.`majors` (
  `major_id` INT(99) NOT NULL,
  `major_name` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`major_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `graduation_planner`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `graduation_planner`.`users` (
  `uid` INT(99) NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `notes` VARCHAR(250) NULL DEFAULT NULL,
  `major_id` INT(99) NOT NULL,
  PRIMARY KEY (`uid`),
  INDEX `major_id_idx` (`major_id` ASC) VISIBLE,
  CONSTRAINT `users_ibfk_1`
    FOREIGN KEY (`major_id`)
    REFERENCES `graduation_planner`.`majors` (`major_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `graduation_planner`.`enrollments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `graduation_planner`.`enrollments` (
  `enrollments_id` INT(99) NOT NULL,
  `uid` INT(99) NULL DEFAULT NULL,
  `course_id` INT(99) NULL DEFAULT NULL,
  `isComplete` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`enrollments_id`),
  INDEX `course_id_idx` (`course_id` ASC) VISIBLE,
  INDEX `uid_idx` (`uid` ASC) VISIBLE,
  CONSTRAINT `enrollments_ibfk_1`
    FOREIGN KEY (`uid`)
    REFERENCES `graduation_planner`.`users` (`uid`),
  CONSTRAINT `enrollments_ibfk_2`
    FOREIGN KEY (`course_id`)
    REFERENCES `graduation_planner`.`courses` (`course_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `graduation_planner`.`requirements`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `graduation_planner`.`requirements` (
  `req_id` INT(99) NOT NULL,
  `req_name` VARCHAR(45) NULL DEFAULT NULL,
  `fk_major_id` INT(99) NULL DEFAULT NULL,
  `fk_course_id` INT(99) NULL DEFAULT NULL,
  PRIMARY KEY (`req_id`),
  INDEX `major_id_idx` (`fk_major_id` ASC) VISIBLE,
  INDEX `course_id_idx` (`fk_course_id` ASC) VISIBLE,
  CONSTRAINT `course_id`
    FOREIGN KEY (`fk_course_id`)
    REFERENCES `graduation_planner`.`courses` (`course_id`),
  CONSTRAINT `major_id`
    FOREIGN KEY (`fk_major_id`)
    REFERENCES `graduation_planner`.`majors` (`major_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
