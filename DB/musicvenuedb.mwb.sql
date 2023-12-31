-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema musicvenuedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `musicvenuedb` ;

-- -----------------------------------------------------
-- Schema musicvenuedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `musicvenuedb` DEFAULT CHARACTER SET utf8 ;
USE `musicvenuedb` ;

-- -----------------------------------------------------
-- Table `music_venue`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `music_venue` ;

CREATE TABLE IF NOT EXISTS `music_venue` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `image_url` VARCHAR(2000) NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS musicvenueuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'musicvenueuser'@'localhost' IDENTIFIED BY 'musicvenueuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'musicvenueuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `music_venue`
-- -----------------------------------------------------
START TRANSACTION;
USE `musicvenuedb`;
INSERT INTO `music_venue` (`id`, `name`, `image_url`, `description`) VALUES (1, 'Mishawaka Amphitheater', '', NULL);
INSERT INTO `music_venue` (`id`, `name`, `image_url`, `description`) VALUES (2, 'Fox Theater', NULL, NULL);
INSERT INTO `music_venue` (`id`, `name`, `image_url`, `description`) VALUES (3, 'The Fillmore Auditorium', NULL, NULL);

COMMIT;

