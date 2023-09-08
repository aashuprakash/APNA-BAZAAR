-- 1
select product_name, quantity, subtotal from bills , product
where product.product_id=bills.product_id and bill_no in (select bill_no from ledger where customer_id=2 and date_of_purchase like "2020-03%");

-- 2 
select brand_name, selling_price,quantity from product,brand,inventory
where product.product_id=inventory.product_id and brand.brand_id=inventory.brand_id
and product_name="Milk" and selling_price<55;

-- 3
select brand_name, product_name, selling_price from product,brand,inventory
where product.product_id=inventory.product_id and brand.brand_id=inventory.brand_id
and inventory.product_id in (select product_id from bills where bill_no in (select bill_no from ledger where customer_id=2)and category_id=1) and inventory.brand_id in (select brand_id from bills where bill_no in (select bill_no from ledger where customer_id=2)and category_id=1) 
order by selling_price desc;

-- 4
select category_name,product_name,sum(quantity) from inventory,category,product
where product.product_id=inventory.product_id and category.category_id=inventory.category_id
group by product_name
having sum(quantity)<40;

-- 5 
select cust_name,count(bill_no) from ledger,customer
where customer.customer_id=ledger.customer_id 
group by ledger.customer_id 
order by count(bill_no) desc 
Limit 5;

-- 6
select category_name, inventory.product_id, ((sum(selling_price)-sum(cost_price))/sum(cost_price))*100 as profit from inventory, category,product
where product.product_id=inventory.product_id and category.category_id=inventory.category_id
group by category_name
order by ( ((sum(selling_price)-sum(cost_price))/sum(cost_price))*100) desc;


-- 7
select ((sum(selling_price*bills.quantity)-sum(cost_price*bills.quantity))/sum(cost_price*bills.quantity))*100 as profit from inventory,bills
where bills.product_id=inventory.product_id and bills.category_id=inventory.category_id and bills.brand_id=inventory.brand_id 
and bill_no in (select bill_no from ledger where date_of_purchase like "2020-03%");

-- 8
insert into bills(bill_no,category_id,product_id,brand_id,quantity,subtotal)
select (select max(bill_no)+1 from bills),category_id,product_id,brand_id,quantity,subtotal from bills where bill_no=17;

-- 9
select brand_name ,avg(selling_price) from inventory,brand
where brand.brand_id=inventory.brand_id
group by brand_name
order by avg(selling_price);


-- 10  update
update customer
set cust_type=2 where customer_id=2;

-- 11 alter
alter table customer
add cust_status VARCHAR(45) NOT NULL DEFAULT="active";

