-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema youtubeDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema youtubeDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `youtubeDB` ;
USE `youtubeDB` ;

-- -----------------------------------------------------
-- Table `youtubeDB`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`users` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `users_name` VARCHAR(90) NULL,
  `users_dob` DATE NULL COMMENT 'dob = date of bird\n',
  `users_email` VARCHAR(90) NULL,
  `users_password_hash` VARCHAR(255) NULL,
  `users_gender` ENUM("M", "F", "OP") NULL COMMENT 'M: Male\nF: Female\nOP: Other/Prefer not to say',
  `users_country` VARCHAR(45) NULL,
  `users_zip` VARCHAR(10) NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`videos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`videos` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`videos` (
  `videos_id` INT NOT NULL AUTO_INCREMENT,
  `users_user_id` INT NOT NULL,
  `videos_title` VARCHAR(90) NULL,
  `videos_description` TEXT NULL,
  `videos_size` BIGINT NULL,
  `videos_filename` VARCHAR(255) NULL,
  `videos_runtime` TIME NULL,
  `videos_thumbnail` VARCHAR(255) NULL,
  `videos_reproduction_num` BIGINT NULL,
  `videos_total_likes` INT NULL,
  `videos_total_dislakes` INT NULL,
  `videos_state` ENUM("PU", "PR", "H") NULL COMMENT 'PU :Public\nPR : Private\nH: Hidden ',
  `videos_created` DATETIME NULL,
  PRIMARY KEY (`videos_id`),
  INDEX `fk_videos_users_idx` (`users_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_videos_users`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `youtubeDB`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`tags` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`tags` (
  `tags_id` INT NOT NULL AUTO_INCREMENT,
  `tags_name` VARCHAR(45) NULL,
  PRIMARY KEY (`tags_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`videos_has_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`videos_has_tags` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`videos_has_tags` (
  `videos_videos_id` INT NOT NULL,
  `tags_tags_id` INT NOT NULL,
  PRIMARY KEY (`videos_videos_id`, `tags_tags_id`),
  INDEX `fk_videos_has_tags_tags1_idx` (`tags_tags_id` ASC) VISIBLE,
  INDEX `fk_videos_has_tags_videos1_idx` (`videos_videos_id` ASC) VISIBLE,
  CONSTRAINT `fk_videos_has_tags_videos1`
    FOREIGN KEY (`videos_videos_id`)
    REFERENCES `youtubeDB`.`videos` (`videos_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_videos_has_tags_tags1`
    FOREIGN KEY (`tags_tags_id`)
    REFERENCES `youtubeDB`.`tags` (`tags_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`channels`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`channels` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`channels` (
  `channels_id` INT NOT NULL AUTO_INCREMENT,
  `users_user_id` INT NOT NULL,
  `channels_name` VARCHAR(45) NULL,
  `channels_description` TEXT NULL,
  `channels_created` DATE NULL,
  PRIMARY KEY (`channels_id`),
  INDEX `fk_channels_users1_idx` (`users_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_channels_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `youtubeDB`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`channel_has_user_videos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`channel_has_user_videos` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`channel_has_user_videos` (
  `channels_channels_id` INT NOT NULL,
  `videos_videos_id` INT NOT NULL,
  PRIMARY KEY (`channels_channels_id`, `videos_videos_id`),
  INDEX `fk_channel_has_user_videos_channels1_idx` (`channels_channels_id` ASC) VISIBLE,
  CONSTRAINT `fk_channel_has_user_videos_videos1`
    FOREIGN KEY (`videos_videos_id`)
    REFERENCES `youtubeDB`.`videos` (`videos_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_channel_has_user_videos_channels1`
    FOREIGN KEY (`channels_channels_id`)
    REFERENCES `youtubeDB`.`channels` (`channels_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`user_channel_subscription`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`user_channel_subscription` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`user_channel_subscription` (
  `users_user_id` INT NOT NULL,
  `channels_channels_id` INT NOT NULL,
  PRIMARY KEY (`users_user_id`, `channels_channels_id`),
  INDEX `fk_user_channel_subscription_users1_idx` (`users_user_id` ASC) VISIBLE,
  INDEX `fk_user_channel_subscription_channels1_idx` (`channels_channels_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_channel_subscription_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `youtubeDB`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_channel_subscription_channels1`
    FOREIGN KEY (`channels_channels_id`)
    REFERENCES `youtubeDB`.`channels` (`channels_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`video_likes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`video_likes` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`video_likes` (
  `users_user_id` INT NOT NULL,
  `videos_videos_id` INT NOT NULL,
  `video_likes_status` ENUM("L", "D") NULL COMMENT 'L : Likes\nD: Dislikes',
  `video_likes_datatime` DATETIME NULL,
  PRIMARY KEY (`users_user_id`, `videos_videos_id`),
  INDEX `fk_likes_videos1_idx` (`videos_videos_id` ASC) VISIBLE,
  CONSTRAINT `fk_likes_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `youtubeDB`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_likes_videos1`
    FOREIGN KEY (`videos_videos_id`)
    REFERENCES `youtubeDB`.`videos` (`videos_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`playlist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`playlist` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`playlist` (
  `playlist_id` INT NOT NULL AUTO_INCREMENT,
  `users_user_id` INT NOT NULL,
  `videos_videos_id` INT NOT NULL,
  PRIMARY KEY (`playlist_id`, `users_user_id`),
  INDEX `fk_playlist_users1_idx` (`users_user_id` ASC) VISIBLE,
  INDEX `fk_playlist_videos1_idx` (`videos_videos_id` ASC) VISIBLE,
  CONSTRAINT `fk_playlist_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `youtubeDB`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_playlist_videos1`
    FOREIGN KEY (`videos_videos_id`)
    REFERENCES `youtubeDB`.`videos` (`videos_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`comments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`comments` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`comments` (
  `comments_id` INT NOT NULL AUTO_INCREMENT,
  `users_user_id` INT NOT NULL,
  `videos_videos_id` INT NOT NULL,
  `comments_text` TEXT NULL,
  `comments_created` DATETIME NULL,
  PRIMARY KEY (`comments_id`, `users_user_id`, `videos_videos_id`),
  INDEX `fk_comments_users1_idx` (`users_user_id` ASC) VISIBLE,
  INDEX `fk_comments_videos1_idx` (`videos_videos_id` ASC) VISIBLE,
  CONSTRAINT `fk_comments_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `youtubeDB`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_videos1`
    FOREIGN KEY (`videos_videos_id`)
    REFERENCES `youtubeDB`.`videos` (`videos_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtubeDB`.`comments_likes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `youtubeDB`.`comments_likes` ;

CREATE TABLE IF NOT EXISTS `youtubeDB`.`comments_likes` (
  `comments_likes_id` INT NOT NULL,
  `users_user_id` INT NOT NULL,
  `comments_comments_id` INT NOT NULL,
  `comments_users_user_id` INT NOT NULL,
  `comments_videos_videos_id` INT NOT NULL,
  `comments_likes_status` ENUM("L", "D") NULL COMMENT 'L : Likes\nD : Dislikes',
  `comments_likes_created` DATETIME NULL,
  PRIMARY KEY (`comments_likes_id`, `users_user_id`, `comments_comments_id`, `comments_users_user_id`, `comments_videos_videos_id`),
  INDEX `fk_comments_likes_users1_idx` (`users_user_id` ASC) VISIBLE,
  INDEX `fk_comments_likes_comments1_idx` (`comments_comments_id` ASC, `comments_users_user_id` ASC, `comments_videos_videos_id` ASC) VISIBLE,
  CONSTRAINT `fk_comments_likes_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `youtubeDB`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_likes_comments1`
    FOREIGN KEY (`comments_comments_id` , `comments_users_user_id` , `comments_videos_videos_id`)
    REFERENCES `youtubeDB`.`comments` (`comments_id` , `users_user_id` , `videos_videos_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
