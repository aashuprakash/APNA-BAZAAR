SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;
-- insert tables

DROP SCHEMA IF EXISTS AtlasOnline;
CREATE SCHEMA AtlasOnline;
USE AtlasOnline;

DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS brand;
DROP TABLE IF EXISTS administrator;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS ledger;
DROP TABLE IF EXISTS bills;

-- table category
CREATE TABLE category (
  category_id INT NOT NULL,
  category_name VARCHAR(45) NOT NULL,
  category_info VARCHAR(200),

  PRIMARY KEY  (category_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- table product
CREATE TABLE product(
  product_id INT NOT NULL,
  product_name VARCHAR(45) NOT NULL,

  PRIMARY KEY  (product_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- table brand
CREATE TABLE brand (
  brand_id INT NOT NULL,
  brand_name VARCHAR(45) NOT NULL,

  PRIMARY KEY  (brand_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- table category to product
CREATE TABLE category_to_product(
  category_id INT NOT NULL,
  product_id INT NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- table product to brand 
CREATE TABLE product_to_brand(
  product_id INT NOT NULL,
  brand_id INT NOT NULL-- max 2 brands for a product

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- table inventory
CREATE TABLE inventory (
  category_id INT NOT NULL,
  product_id INT NOT NULL,
  brand_id INT NOT NULL,
  selling_price DECIMAL NOT NULL CHECK(selling_price>0),
  
  quantity int NOT NULL CHECK(quantity>-1),
  cost_price DECIMAL NOT NULL CHECK(cost_price>0),

  PRIMARY KEY  (category_id,product_id,brand_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id), 
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  FOREIGN KEY (brand_id) REFERENCES brand(brand_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- table admin
CREATE TABLE administrator (
  sno INT NOT NULL,
  username VARCHAR(45) NOT NULL,
  userpass VARCHAR(45) NOT NULL,

  PRIMARY KEY  (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- table customer
CREATE TABLE customer (
  customer_id INT NOT NULL AUTO_INCREMENT,
  cust_name VARCHAR(45) NOT NULL,
  cust_pass VARCHAR(45) NOT NULL,
  cust_type INT CHECK(cust_type<4 and cust_type>0) DEFAULT 1,
  email VARCHAR(45) unique,
  residence VARCHAR(100),

  PRIMARY KEY  (customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- table ledger
CREATE TABLE ledger (
  bill_no INT NOT NULL,
  date_of_purchase DATE NOT NULL,
  customer_id INT NOT NULL,

  PRIMARY KEY  (bill_no),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- table bills(cart, for each order will be made/dropped dynamically and converted to a bill and added to the ledger once order is placed)
CREATE TABLE bills (
  bill_no INT NOT NULL,
  category_id INT NOT NULL,
  product_id INT NOT NULL,
  brand_id INT NOT NULL,
  quantity INT NOT NULL CHECK(quantity>0),
  subtotal DECIMAL,

  PRIMARY KEY  (bill_no,category_id,product_id,brand_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
  FOREIGN KEY (bill_no) REFERENCES ledger(bill_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;