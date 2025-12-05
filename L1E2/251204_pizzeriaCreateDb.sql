-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pizzeriaSch
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pizzeriaSch
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pizzeriaSch` ;
USE `pizzeriaSch` ;

-- -----------------------------------------------------
-- Table `pizzeriaSch`.`pizza_categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`pizza_categories` (
  `pizza_categories_id` INT NOT NULL AUTO_INCREMENT,
  `pizza_categories_name` VARCHAR(45) NULL,
  PRIMARY KEY (`pizza_categories_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`product` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `product_type` ENUM("Pizza", "Hamburger", "Berverage") NULL,
  `product_name` VARCHAR(45) NULL,
  `product_description` TEXT NULL,
  `product_image` VARCHAR(45) NULL,
  `product_price` DECIMAL(10,2) NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`pizza_has_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`pizza_has_category` (
  `product_product_id` INT NOT NULL,
  `pizza_categories_pizza_categories_id` INT NOT NULL,
  PRIMARY KEY (`product_product_id`, `pizza_categories_pizza_categories_id`),
  INDEX `fk_pizza_has_category_pizza_categories1_idx` (`pizza_categories_pizza_categories_id` ASC) VISIBLE,
  CONSTRAINT `fk_pizza_has_category_product`
    FOREIGN KEY (`product_product_id`)
    REFERENCES `pizzeriaSch`.`product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pizza_has_category_pizza_categories1`
    FOREIGN KEY (`pizza_categories_pizza_categories_id`)
    REFERENCES `pizzeriaSch`.`pizza_categories` (`pizza_categories_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`province`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`province` (
  `province_id` INT NOT NULL AUTO_INCREMENT,
  `province_name` VARCHAR(45) NULL,
  PRIMARY KEY (`province_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`city` (
  `city_id` INT NOT NULL AUTO_INCREMENT,
  `province_province_id` INT NOT NULL,
  `city_name` VARCHAR(45) NULL,
  PRIMARY KEY (`city_id`),
  INDEX `fk_city_province1_idx` (`province_province_id` ASC) VISIBLE,
  CONSTRAINT `fk_city_province1`
    FOREIGN KEY (`province_province_id`)
    REFERENCES `pizzeriaSch`.`province` (`province_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `customer_name` VARCHAR(45) NULL,
  `customer_surnames` VARCHAR(90) NULL,
  `customer_address` VARCHAR(90) NULL,
  `customer_zip_code` VARCHAR(10) NULL,
  `city_city_id` INT NOT NULL,
  `customer_phone` VARCHAR(10) NULL,
  PRIMARY KEY (`customer_id`),
  INDEX `fk_customer_city1_idx` (`city_city_id` ASC) VISIBLE,
  CONSTRAINT `fk_customer_city1`
    FOREIGN KEY (`city_city_id`)
    REFERENCES `pizzeriaSch`.`city` (`city_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`pizzeriaShop`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`pizzeriaShop` (
  `pizzeriaShop_id` INT NOT NULL AUTO_INCREMENT,
  `pizzeriaShop_address` VARCHAR(90) NULL,
  `pizzeriaShop_zip_code` VARCHAR(10) NULL,
  `city_city_id` INT NOT NULL,
  PRIMARY KEY (`pizzeriaShop_id`),
  INDEX `fk_pizzeriaShop_city1_idx` (`city_city_id` ASC) VISIBLE,
  CONSTRAINT `fk_pizzeriaShop_city1`
    FOREIGN KEY (`city_city_id`)
    REFERENCES `pizzeriaSch`.`city` (`city_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`employee` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `pizzeriaShop_pizzeriaShop_id` INT NOT NULL,
  `employee_name` VARCHAR(45) NULL,
  `employee_surnames` VARCHAR(45) NULL,
  `employee_nif` VARCHAR(9) NULL,
  `employee_phone` VARCHAR(10) NULL,
  `employee_rol` ENUM("Chef", "Delivery") NULL,
  PRIMARY KEY (`employee_id`, `pizzeriaShop_pizzeriaShop_id`),
  INDEX `fk_employee_pizzeriaShop1_idx` (`pizzeriaShop_pizzeriaShop_id` ASC) VISIBLE,
  CONSTRAINT `fk_employee_pizzeriaShop1`
    FOREIGN KEY (`pizzeriaShop_pizzeriaShop_id`)
    REFERENCES `pizzeriaSch`.`pizzeriaShop` (`pizzeriaShop_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `pizzeriaShop_pizzeriaShop_id` INT NOT NULL,
  `customer_customer_id` INT NOT NULL,
  `order_date` DATETIME NULL,
  `order_type` ENUM("Shop", "Home") NULL,
  `order_total` DECIMAL(10,2) NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_order_pizzeriaShop1_idx` (`pizzeriaShop_pizzeriaShop_id` ASC) VISIBLE,
  INDEX `fk_order_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_pizzeriaShop1`
    FOREIGN KEY (`pizzeriaShop_pizzeriaShop_id`)
    REFERENCES `pizzeriaSch`.`pizzeriaShop` (`pizzeriaShop_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `pizzeriaSch`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`home_delivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`home_delivery` (
  `order_order_id` INT NOT NULL,
  `employee_employee_id` INT NOT NULL,
  `home_delivery_time` DATETIME NULL,
  PRIMARY KEY (`order_order_id`, `employee_employee_id`),
  INDEX `fk_home_delivery_employee1_idx` (`employee_employee_id` ASC) VISIBLE,
  CONSTRAINT `fk_home_delivery_order1`
    FOREIGN KEY (`order_order_id`)
    REFERENCES `pizzeriaSch`.`order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_home_delivery_employee1`
    FOREIGN KEY (`employee_employee_id`)
    REFERENCES `pizzeriaSch`.`employee` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeriaSch`.`order_products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeriaSch`.`order_products` (
  `order_order_id` INT NOT NULL,
  `product_product_id` INT NOT NULL,
  `order_products_quantity` INT NULL,
  PRIMARY KEY (`order_order_id`, `product_product_id`),
  INDEX `fk_order_products_order1_idx` (`order_order_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_products_product1`
    FOREIGN KEY (`product_product_id`)
    REFERENCES `pizzeriaSch`.`product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_products_order1`
    FOREIGN KEY (`order_order_id`)
    REFERENCES `pizzeriaSch`.`order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
