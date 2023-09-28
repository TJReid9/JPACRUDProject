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
  `location` VARCHAR(100) NULL,
  `description` TEXT NULL,
  `image_url` VARCHAR(2000) NULL,
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
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (1, 'Mishawaka Amphitheater', 'Bellvu', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (2, 'Fox Theater', 'Boulder', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (3, 'The Fillmore Auditorium', 'Denver', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (4, 'Bluebird Theater', 'Denver', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (5, 'Fiddlers Green Anphitheater', 'Greenwood Village', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (6, 'The Black Sheep', 'Colorado Springs', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (7, 'Hi-Dive', 'Denver', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (8, 'Belly Up', 'Aspen', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (9, 'Lulu\'s Downstairs', 'Manitou Springs', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (10, 'Washington\'s', 'Fort Collins', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (11, 'Telluride Town Park Stage', 'Telluride', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (12, 'Mission Ballroom', 'Denver', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (13, 'Chautauqua Auditorium', 'Boulder', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (14, 'Ogden Theater', 'Denver', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (15, 'Lion\'s Lair', 'Denver', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (16, 'Dazzle', 'Denver', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (17, 'State Bridge Riverside Amphitheater', 'Bond', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (18, 'Marquis Theater', 'Denver', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (19, 'Summit Music Hall', 'Denver', NULL, '');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (20, 'Red Rocks Amphitheater', 'Morrison', NULL, '');

COMMIT;

