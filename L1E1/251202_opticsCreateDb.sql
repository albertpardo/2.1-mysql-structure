-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema opticsSch
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `opticsSch` ;

-- -----------------------------------------------------
-- Schema opticsSch
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `opticsSch` ;
USE `opticsSch` ;

-- -----------------------------------------------------
-- Table `opticsSch`.`address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `opticsSch`.`address` ;

CREATE TABLE IF NOT EXISTS `opticsSch`.`address` (
  `address_id` INT NOT NULL AUTO_INCREMENT,
  `address_street` VARCHAR(45) NULL,
  `address_number` INT(3) NULL,
  `address_floor` VARCHAR(45) NULL,
  `address_door` VARCHAR(45) NULL,
  `address_city` VARCHAR(45) NULL,
  `address_zip` VARCHAR(45) NULL,
  `address_country` VARCHAR(45) NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `opticsSch`.`supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `opticsSch`.`supplier` ;

CREATE TABLE IF NOT EXISTS `opticsSch`.`supplier` (
  `supplier_id` INT NOT NULL AUTO_INCREMENT,
  `supplier_name` VARCHAR(45) NULL,
  `supplier_phone` VARCHAR(20) NULL,
  `supplier_fax` VARCHAR(20) NULL,
  `supplier_NIF` VARCHAR(9) NULL,
  `address_address_id` INT NOT NULL,
  PRIMARY KEY (`supplier_id`),
  INDEX `fk_supplier_address1_idx` (`address_address_id` ASC) VISIBLE,
  CONSTRAINT `fk_supplier_address1`
    FOREIGN KEY (`address_address_id`)
    REFERENCES `opticsSch`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `opticsSch`.`client`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `opticsSch`.`client` ;

CREATE TABLE IF NOT EXISTS `opticsSch`.`client` (
  `client_id` INT NOT NULL AUTO_INCREMENT,
  `client_recommendedBy_client_id` INT NULL,
  `client_name` VARCHAR(45) NULL,
  `client_e-mail` VARCHAR(45) NULL,
  `client_phone` VARCHAR(20) NULL,
  `client_registation_date` DATETIME NULL,
  `address_address_id` INT NOT NULL,
  PRIMARY KEY (`client_id`),
  INDEX `fk_client_client_idx` (`client_recommendedBy_client_id` ASC) VISIBLE,
  INDEX `fk_client_address1_idx` (`address_address_id` ASC) VISIBLE,
  CONSTRAINT `fk_client_client`
    FOREIGN KEY (`client_recommendedBy_client_id`)
    REFERENCES `opticsSch`.`client` (`client_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_client_address1`
    FOREIGN KEY (`address_address_id`)
    REFERENCES `opticsSch`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `opticsSch`.`glasses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `opticsSch`.`glasses` ;

CREATE TABLE IF NOT EXISTS `opticsSch`.`glasses` (
  `glasses_id` INT NOT NULL AUTO_INCREMENT,
  `supplier_supplier_id` INT NOT NULL,
  `glasses_brand` VARCHAR(45) NULL,
  `glasses_graduation_left` DECIMAL(3,2) NULL,
  `glasses_graduation_right` DECIMAL(3,2) NULL,
  `glasses_lens_color` VARCHAR(45) NULL,
  `glasses_frame_color` VARCHAR(45) NULL,
  `glasses_price` DECIMAL NULL,
  PRIMARY KEY (`glasses_id`),
  INDEX `fk_glasses_supplier1_idx` (`supplier_supplier_id` ASC) VISIBLE,
  CONSTRAINT `fk_glasses_supplier1`
    FOREIGN KEY (`supplier_supplier_id`)
    REFERENCES `opticsSch`.`supplier` (`supplier_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `opticsSch`.`employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `opticsSch`.`employee` ;

CREATE TABLE IF NOT EXISTS `opticsSch`.`employee` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `employee_name` VARCHAR(45) NULL,
  PRIMARY KEY (`employee_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `opticsSch`.`sales`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `opticsSch`.`sales` ;

CREATE TABLE IF NOT EXISTS `opticsSch`.`sales` (
  `sales_id` INT NOT NULL,
  `sales_date` DATETIME NULL,
  `employee_employee_id` INT NOT NULL,
  `client_client_id` INT NOT NULL,
  PRIMARY KEY (`sales_id`),
  INDEX `fk_sales_employee1_idx` (`employee_employee_id` ASC) VISIBLE,
  INDEX `fk_sales_client1_idx` (`client_client_id` ASC) VISIBLE,
  CONSTRAINT `fk_sales_employee1`
    FOREIGN KEY (`employee_employee_id`)
    REFERENCES `opticsSch`.`employee` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_client1`
    FOREIGN KEY (`client_client_id`)
    REFERENCES `opticsSch`.`client` (`client_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `opticsSch`.`sales_has_glasses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `opticsSch`.`sales_has_glasses` ;

CREATE TABLE IF NOT EXISTS `opticsSch`.`sales_has_glasses` (
  `sales_sales_id` INT NOT NULL,
  `glasses_glasses_id` INT NOT NULL,
  PRIMARY KEY (`sales_sales_id`, `glasses_glasses_id`),
  INDEX `fk_sales_has_glasses_glasses1_idx` (`glasses_glasses_id` ASC) VISIBLE,
  INDEX `fk_sales_has_glasses_sales1_idx` (`sales_sales_id` ASC) VISIBLE,
  CONSTRAINT `fk_sales_has_glasses_sales1`
    FOREIGN KEY (`sales_sales_id`)
    REFERENCES `opticsSch`.`sales` (`sales_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_has_glasses_glasses1`
    FOREIGN KEY (`glasses_glasses_id`)
    REFERENCES `opticsSch`.`glasses` (`glasses_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
