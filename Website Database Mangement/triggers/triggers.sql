SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;
-- insert tables

USE Atlas;

-- trigger one: for generating final bill for a person while chekout

-- create trigger total_finder before insert on bills
-- for each row set @total=@total+ new.subtotal*1.12; -- tax

SET @total=0;
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (19,1,1,1,5,250);
select @total as " total of a customer after taxation ";


-- trigger two:  for preventing invalid customer types: like negatives and zeros

-- delimiter //
-- create trigger default_rype_of_customer before insert on customer
-- for each row
-- begin
--     if new.cust_type <1 then 
--         set new.cust_type=1;
-- 	end if;
-- end; //

-- delimiter ;

insert into customer (customer_id,cust_type, cust_name, cust_pass, email, residence) values (101, -1,'Bruh', 'yWEajIscm', 'bof0@columbia.edu', '775 Dorton Lane');
select * from customer where customer_id=101;

