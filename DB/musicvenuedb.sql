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
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (1, 'Mishawaka Amphitheater', NULL, NULL, 'Bellvu');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (2, 'Fox Theater', NULL, NULL, 'Boulder');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (3, 'The Fillmore Auditorium', NULL, NULL, 'Denver');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (4, 'Bluebird Theater', NULL, NULL, 'Denver');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (5, 'Fiddlers Green Anphitheater', NULL, NULL, 'Greenwood Village');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (6, 'The Black Sheep', NULL, NULL, 'Colorado Springs');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (7, 'Hi-Dive', NULL, NULL, 'Denver');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (8, 'Belly Up', NULL, NULL, 'Aspen');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (9, 'Lulu\'s Downstairs', NULL, NULL, 'Manitou Springs');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (10, 'Washington\'s', NULL, NULL, 'Fort Collins');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (11, 'Telluride Town Park Stage', NULL, NULL, 'Telluride');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (12, 'Mission Ballroom', NULL, NULL, 'Denver');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (13, 'Chautauqua Auditorium', NULL, NULL, 'Boulder');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (14, 'Ogden Theater', NULL, NULL, 'Denver');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (15, 'Lion\'s Lair', NULL, NULL, 'Denver');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (16, 'Dazzle', NULL, NULL, 'Denver');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (17, 'State Bridge Riverside Amphitheater', NULL, NULL, 'Bond');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (18, 'Marquis Theater', NULL, NULL, 'Denver');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (19, 'Summit Music Hall', NULL, NULL, 'Denver');
INSERT INTO `music_venue` (`id`, `name`, `location`, `description`, `image_url`) VALUES (20, 'Red Rocks Amphitheater', NULL, NULL, 'Morrison');

COMMIT;

