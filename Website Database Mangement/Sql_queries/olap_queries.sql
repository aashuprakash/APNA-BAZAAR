SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;
-- insert tables

USE Atlas;

-- DROP TABLE IF EXISTS finance;
-- create table Finance AS select I.category_id,C.category_name,I.product_id,P.product_name,
-- I.brand_id,BR.brand_name,I.selling_price,I.quantity,I.cost_price,B.bill_no,B.subtotal,
-- L.date_of_purchase,L.customer_id,CU.cust_name from inventory I ,bills B,ledger L, category C , 
-- product P ,brand BR, customer CU where I.product_id=B.product_id and I.category_id=B.category_id and 
-- I.brand_id=B.brand_id and L.bill_no=B.bill_no and I.product_id=P.product_id and 
-- I.category_id=C.category_id and I.brand_id=BR.brand_id and L.customer_id=CU.customer_id;


-- how many non distinct products were sold in each category each year 
select category_name,Year(date_of_purchase),sum(quantity) as Quantity_sold from finance
group by category_name,Year(date_of_purchase) with rollup;

-- brand-wise profit in RS. each year 
select brand_name,Year(date_of_purchase),((sum(selling_price*quantity)-sum(cost_price*quantity))) as profit  from finance
group by brand_name,Year(date_of_purchase) with rollup;

-- total amount spent by a customer (in RS.) in each month,year for buying stuff
select cust_name, month(date_of_purchase), year(date_of_purchase) , sum(subtotal) from finance
group by  cust_name, month(date_of_purchase), year(date_of_purchase)  with rollup;

-- profit percentage for each brand of every product to decide which brand is beneficial to buy products to stock the store
select product_name, brand_name, ((sum(selling_price)-sum(cost_price))/sum(cost_price))*100 as profit_percentage from finance
group by  product_name, brand_name  with rollup;






