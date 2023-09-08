SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;

USE AtlasOnline;


-- inserting category 
insert into category (category_id, category_name, category_info) values (1, 'Food', 'This category encompasses all food items');
insert into category (category_id, category_name, category_info) values (2, 'Health', 'This category is aimed for the people trying to live healthier lives');
insert into category (category_id, category_name, category_info) values (3, 'Beauty', 'For those who want to sparkle');
insert into category (category_id, category_name, category_info) values (4, 'Clothes', 'This covers everything that you would need from top to bottom');
insert into category (category_id, category_name, category_info) values (5, 'Furtniture', 'Furniture for both home and work');
insert into category (category_id, category_name, category_info) values (6, 'Daily_Items', 'The items you would use on your daily basis');
insert into category (category_id, category_name, category_info) values (7, 'Appliances', 'The appliances you need');
insert into category (category_id, category_name, category_info) values (8, 'Books', 'All genres available');
insert into category (category_id, category_name, category_info) values (9, 'Beverages', 'Cocktails not available');
insert into category (category_id, category_name, category_info) values (10, 'Ready To Eat', 'When you just wanna enjoy a home cooked meal without going through the effort');
insert into category (category_id, category_name, category_info) values (11, 'Electronics', 'Electronic items');
insert into category (category_id, category_name, category_info) values (12, 'Sports Equipment', 'This category encompasses all you would want to satisfy the athlete within you');
insert into category (category_id, category_name, category_info) values (13, 'Heavy Duty Equipment', 'This category contains industrial and home use heavy duty equipments');
insert into category (category_id, category_name, category_info) values (14, 'Cleaning', 'Cleaning Supplies to keep yourself and your surroundings safe');
insert into category (category_id, category_name, category_info) values (15, 'Office Supplies and Stationary', 'Office Supplies');
insert into category (category_id, category_name, category_info) values (16, 'Medical Supplies', 'Medical Supplies for you');



-- inserting in product
insert into product (product_id, product_name) values (1,'Milk');
insert into product (product_id, product_name) values (2,'Ghee');
insert into product (product_id, product_name) values (3,'Biscuit');
insert into product (product_id, product_name) values (4,'Bread');
insert into product (product_id, product_name) values (5,'Noodles');
insert into product (product_id, product_name) values (6,'Chocolate');
insert into product (product_id, product_name) values (7,'Cornflakes');
insert into product (product_id, product_name) values (8,'Watch');
insert into product (product_id, product_name) values (9,'Cream');
insert into product (product_id, product_name) values (10,'Supplements');
insert into product (product_id, product_name) values (11,'Toothpaste');
insert into product (product_id, product_name) values (12,'Shampoo');
insert into product (product_id, product_name) values (13,'Shaving Cream');
insert into product (product_id, product_name) values (14,'Conditioner');
insert into product (product_id, product_name) values (15,'Soap');
insert into product (product_id, product_name) values (16,'Shoes');
insert into product (product_id, product_name) values (17,'Football');
insert into product (product_id, product_name) values (18,'Bag');
insert into product (product_id, product_name) values (19,'T-shirt');
insert into product (product_id, product_name) values (20,'Cold Drink');
insert into product (product_id, product_name) values (21,'TV');
insert into product (product_id, product_name) values (22,'Honey');
insert into product (product_id, product_name) values (23,'Fridge');
insert into product (product_id, product_name) values (24,'Phone');
insert into product (product_id, product_name) values (25,'AC');
insert into product (product_id, product_name) values (26,'Washing machine');
insert into product (product_id, product_name) values (27,'Sofa');
insert into product (product_id, product_name) values (28,'Earphones');
insert into product (product_id, product_name) values (29,'Bhujia');
insert into product (product_id, product_name) values (30,'Dal');
insert into product (product_id, product_name) values (31,'Jeans');
insert into product (product_id, product_name) values (32,'Innerwear');
insert into product (product_id, product_name) values (33,'Boxers');
insert into product (product_id, product_name) values (34,'Vest');
insert into product (product_id, product_name) values (35,'Trouser');
insert into product (product_id, product_name) values (36,'Mask');
insert into product (product_id, product_name) values (37,'Deo');
insert into product (product_id, product_name) values (38,'Hairoil');
insert into product (product_id, product_name) values (39,'Eyeliner');
insert into product (product_id, product_name) values (40,'COVID test');
insert into product (product_id, product_name) values (41,'Tulsi Drop');
insert into product (product_id, product_name) values (42,'Chips');
insert into product (product_id, product_name) values (43,'Badminton racket');
insert into product (product_id, product_name) values (44,'Tennis racket');
insert into product (product_id, product_name) values (45,'Squash racket');
insert into product (product_id, product_name) values (46,'Tennis ball');
insert into product (product_id, product_name) values (47,'Kettle');
insert into product (product_id, product_name) values (48,'Sandwich Maker');
insert into product (product_id, product_name) values (49,'Mixer');
insert into product (product_id, product_name) values (50,'Toaster');
insert into product (product_id, product_name) values (51,'Grinder');
insert into product (product_id, product_name) values (52,'Hand Blender');
insert into product (product_id, product_name) values (53,'Hair Straightner');
insert into product (product_id, product_name) values (54,'Hair Dryer');
insert into product (product_id, product_name) values (55,'Hair Curler');
insert into product (product_id, product_name) values (56,'Petrol Generator');
insert into product (product_id, product_name) values (57,'Diesel Generator');
insert into product (product_id, product_name) values (58,'Basketball');
insert into product (product_id, product_name) values (59,'Skates');
insert into product (product_id, product_name) values (60,'Wholewheat');
insert into product (product_id, product_name) values (61,'Liquid Soap');
insert into product (product_id, product_name) values (62,'Phenyl');
insert into product (product_id, product_name) values (63,'Toilet cleaner');
insert into product (product_id, product_name) values (64,'Mosquito repellant');
insert into product (product_id, product_name) values (65,'Pen stand');
insert into product (product_id, product_name) values (66,'Desk');
insert into product (product_id, product_name) values (67,'Paper weight');
insert into product (product_id, product_name) values (68,'Bandage');
insert into product (product_id, product_name) values (69,'Bandaid');
insert into product (product_id, product_name) values (70,'Pencil');
insert into product (product_id, product_name) values (71,'Pen');
insert into product (product_id, product_name) values (72,'Eraser');
insert into product (product_id, product_name) values (73,'Sharpener');
insert into product (product_id, product_name) values (74,'Mechanical Pencil');



-- inserting brands
insert into brand (brand_id,brand_name) values (1,'Amul');
insert into brand (brand_id,brand_name) values (2,'London Dairy');
insert into brand (brand_id,brand_name) values (3,'Britannia');
insert into brand (brand_id,brand_name) values (4,'Nestle');
insert into brand (brand_id,brand_name) values (5,'Kelloggs');
insert into brand (brand_id,brand_name) values (6,'FitBit');
insert into brand (brand_id,brand_name) values (7,'Amway');
insert into brand (brand_id,brand_name) values (8,'Loreal');
insert into brand (brand_id,brand_name) values (9,'Nivea');
insert into brand (brand_id,brand_name) values (10,'Gillette');
insert into brand (brand_id,brand_name) values (11,'Dove');
insert into brand (brand_id,brand_name) values (12,'Adidas');
insert into brand (brand_id,brand_name) values (13,'Nike');
insert into brand (brand_id,brand_name) values (14,'Puma');
insert into brand (brand_id,brand_name) values (15,'Gap');
insert into brand (brand_id,brand_name) values (16,'Coca-Cola');
insert into brand (brand_id,brand_name) values (17,'Dabur');
insert into brand (brand_id,brand_name) values (18,'PepsiCo');
insert into brand (brand_id,brand_name) values (19,'Samsung');
insert into brand (brand_id,brand_name) values (20,'LG');
insert into brand (brand_id,brand_name) values (21,'Whirlpool');
insert into brand (brand_id,brand_name) values (22,'Godrej Interio');
insert into brand (brand_id,brand_name) values (23,'Apple');
insert into brand (brand_id,brand_name) values (24,'JBL');
insert into brand (brand_id,brand_name) values (25,'Haldirams');
insert into brand (brand_id,brand_name) values (26,'Levis');
insert into brand (brand_id,brand_name) values (27,'Lays');
insert into brand (brand_id,brand_name) values (28,'Jockey');
insert into brand (brand_id,brand_name) values (29,'Rupa');
insert into brand (brand_id,brand_name) values (30,'Parachute');
insert into brand (brand_id,brand_name) values (31,'Lakme');
insert into brand (brand_id,brand_name) values (32,'Mylab');
insert into brand (brand_id,brand_name) values (33,'Thumbs Up');
insert into brand (brand_id,brand_name) values (34,'Lifebuoy');
insert into brand (brand_id,brand_name) values (35,'Kinley');
insert into brand (brand_id,brand_name) values (36,'Kurkure');
insert into brand (brand_id,brand_name) values (37,'Yonex');
insert into brand (brand_id,brand_name) values (38,'Wilson');
insert into brand (brand_id,brand_name) values (39,'Head');
insert into brand (brand_id,brand_name) values (40,'Pigeon');
insert into brand (brand_id,brand_name) values (41,'Bajaj');
insert into brand (brand_id,brand_name) values (42,'Philips');
insert into brand (brand_id,brand_name) values (43,'Cosco');
insert into brand (brand_id,brand_name) values (44,'ITC');
insert into brand (brand_id,brand_name) values (45,'Reckitt');
insert into brand (brand_id,brand_name) values (46,'Rasper');
insert into brand (brand_id,brand_name) values (47,'Beiersdorf');
insert into brand (brand_id,brand_name) values (48,'Staedtler Noris Gmbh');
insert into brand (brand_id,brand_name) values (49,'Natraj');



-- inserting category to product
insert into category_to_product(category_id,product_id) values(1,1);
insert into category_to_product(category_id,product_id) values(1,2);
insert into category_to_product(category_id,product_id) values(1,3);
insert into category_to_product(category_id,product_id) values(1,4);
insert into category_to_product(category_id,product_id) values(1,5);
insert into category_to_product(category_id,product_id) values(1,6);
insert into category_to_product(category_id,product_id) values(1,7);
insert into category_to_product(category_id,product_id) values(1,22);
insert into category_to_product(category_id,product_id) values(1,29);
insert into category_to_product(category_id,product_id) values(1,30);
insert into category_to_product(category_id,product_id) values(1,42);
insert into category_to_product(category_id,product_id) values(1,60);
insert into category_to_product(category_id,product_id) values(2,10);
insert into category_to_product(category_id,product_id) values(2,41);
insert into category_to_product(category_id,product_id) values(3,9);
insert into category_to_product(category_id,product_id) values(3,39);
insert into category_to_product(category_id,product_id) values(4,31);
insert into category_to_product(category_id,product_id) values(4,19);
insert into category_to_product(category_id,product_id) values(4,32);
insert into category_to_product(category_id,product_id) values(4,33);
insert into category_to_product(category_id,product_id) values(4,34);
insert into category_to_product(category_id,product_id) values(4,35);
insert into category_to_product(category_id,product_id) values(5,27);
insert into category_to_product(category_id,product_id) values(5,66);
insert into category_to_product(category_id,product_id) values(6,11);
insert into category_to_product(category_id,product_id) values(6,12);
insert into category_to_product(category_id,product_id) values(6,13);
insert into category_to_product(category_id,product_id) values(6,14);
insert into category_to_product(category_id,product_id) values(6,15);
insert into category_to_product(category_id,product_id) values(6,37);
insert into category_to_product(category_id,product_id) values(6,38);
insert into category_to_product(category_id,product_id) values(7,21);
insert into category_to_product(category_id,product_id) values(7,23);
insert into category_to_product(category_id,product_id) values(7,25);
insert into category_to_product(category_id,product_id) values(7,26);
insert into category_to_product(category_id,product_id) values(7,47);
insert into category_to_product(category_id,product_id) values(7,48);
insert into category_to_product(category_id,product_id) values(7,49);
insert into category_to_product(category_id,product_id) values(7,50);
insert into category_to_product(category_id,product_id) values(7,51);
insert into category_to_product(category_id,product_id) values(7,52);
insert into category_to_product(category_id,product_id) values(7,53);
insert into category_to_product(category_id,product_id) values(7,54);
insert into category_to_product(category_id,product_id) values(7,55);
insert into category_to_product(category_id,product_id) values(9,20);
insert into category_to_product(category_id,product_id) values(11,24);
insert into category_to_product(category_id,product_id) values(11,28);
insert into category_to_product(category_id,product_id) values(11,8);
insert into category_to_product(category_id,product_id) values(12,43);
insert into category_to_product(category_id,product_id) values(12,16);
insert into category_to_product(category_id,product_id) values(12,44);
insert into category_to_product(category_id,product_id) values(12,45);
insert into category_to_product(category_id,product_id) values(12,46);
insert into category_to_product(category_id,product_id) values(12,58);
insert into category_to_product(category_id,product_id) values(12,59);
insert into category_to_product(category_id,product_id) values(12,18);
insert into category_to_product(category_id,product_id) values(12,17);
insert into category_to_product(category_id,product_id) values(12,64);
insert into category_to_product(category_id,product_id) values(13,56);
insert into category_to_product(category_id,product_id) values(13,57);
insert into category_to_product(category_id,product_id) values(14,61);
insert into category_to_product(category_id,product_id) values(14,62);
insert into category_to_product(category_id,product_id) values(14,63);
insert into category_to_product(category_id,product_id) values(15,65);
insert into category_to_product(category_id,product_id) values(15,67);
insert into category_to_product(category_id,product_id) values(15,70);
insert into category_to_product(category_id,product_id) values(15,71);
insert into category_to_product(category_id,product_id) values(15,72);
insert into category_to_product(category_id,product_id) values(15,73);
insert into category_to_product(category_id,product_id) values(15,74);
insert into category_to_product(category_id,product_id) values(16,36);
insert into category_to_product(category_id,product_id) values(16,40);
insert into category_to_product(category_id,product_id) values(16,68);
insert into category_to_product(category_id,product_id) values(16,69);



-- inserting int product to brand
insert into product_to_brand(product_id,brand_id) values(1,1);
insert into product_to_brand(product_id,brand_id) values(1,2);
insert into product_to_brand(product_id,brand_id) values(1,4);
insert into product_to_brand(product_id,brand_id) values(2,1);
insert into product_to_brand(product_id,brand_id) values(2,2);
insert into product_to_brand(product_id,brand_id) values(2,4);
insert into product_to_brand(product_id,brand_id) values(3,3);
insert into product_to_brand(product_id,brand_id) values(3,17);
insert into product_to_brand(product_id,brand_id) values(4,3);
insert into product_to_brand(product_id,brand_id) values(5,44);
insert into product_to_brand(product_id,brand_id) values(5,4);
insert into product_to_brand(product_id,brand_id) values(6,4);
insert into product_to_brand(product_id,brand_id) values(6,44);
insert into product_to_brand(product_id,brand_id) values(7,5);
insert into product_to_brand(product_id,brand_id) values(8,6);
insert into product_to_brand(product_id,brand_id) values(8,19);
insert into product_to_brand(product_id,brand_id) values(8,23);
insert into product_to_brand(product_id,brand_id) values(9,7);
insert into product_to_brand(product_id,brand_id) values(9,8);
insert into product_to_brand(product_id,brand_id) values(9,9);
insert into product_to_brand(product_id,brand_id) values(9,11);
insert into product_to_brand(product_id,brand_id) values(10,7);
insert into product_to_brand(product_id,brand_id) values(11,17);
insert into product_to_brand(product_id,brand_id) values(12,8);
insert into product_to_brand(product_id,brand_id) values(12,9);
insert into product_to_brand(product_id,brand_id) values(13,10);
insert into product_to_brand(product_id,brand_id) values(14,8);
insert into product_to_brand(product_id,brand_id) values(14,9);
insert into product_to_brand(product_id,brand_id) values(15,11);
insert into product_to_brand(product_id,brand_id) values(15,7);
insert into product_to_brand(product_id,brand_id) values(16,12);
insert into product_to_brand(product_id,brand_id) values(16,13);
insert into product_to_brand(product_id,brand_id) values(16,14);
insert into product_to_brand(product_id,brand_id) values(17,12);
insert into product_to_brand(product_id,brand_id) values(17,13);
insert into product_to_brand(product_id,brand_id) values(17,43);
insert into product_to_brand(product_id,brand_id) values(17,37);
insert into product_to_brand(product_id,brand_id) values(17,38);
insert into product_to_brand(product_id,brand_id) values(18,15);
insert into product_to_brand(product_id,brand_id) values(19,15);
insert into product_to_brand(product_id,brand_id) values(19,28);
insert into product_to_brand(product_id,brand_id) values(20,16);
insert into product_to_brand(product_id,brand_id) values(20,18);
insert into product_to_brand(product_id,brand_id) values(20,33);
insert into product_to_brand(product_id,brand_id) values(21,19);
insert into product_to_brand(product_id,brand_id) values(21,20);
insert into product_to_brand(product_id,brand_id) values(22,17);
insert into product_to_brand(product_id,brand_id) values(23,19);
insert into product_to_brand(product_id,brand_id) values(23,20);
insert into product_to_brand(product_id,brand_id) values(23,21);
insert into product_to_brand(product_id,brand_id) values(23,22);
insert into product_to_brand(product_id,brand_id) values(23,41);
insert into product_to_brand(product_id,brand_id) values(24,19);
insert into product_to_brand(product_id,brand_id) values(24,23);
insert into product_to_brand(product_id,brand_id) values(25,19);
insert into product_to_brand(product_id,brand_id) values(25,20);
insert into product_to_brand(product_id,brand_id) values(25,42);
insert into product_to_brand(product_id,brand_id) values(26,19);
insert into product_to_brand(product_id,brand_id) values(26,20);
insert into product_to_brand(product_id,brand_id) values(26,21);
insert into product_to_brand(product_id,brand_id) values(26,41);
insert into product_to_brand(product_id,brand_id) values(26,42);
insert into product_to_brand(product_id,brand_id) values(27,22);
insert into product_to_brand(product_id,brand_id) values(28,23);
insert into product_to_brand(product_id,brand_id) values(28,24);
insert into product_to_brand(product_id,brand_id) values(29,25);
insert into product_to_brand(product_id,brand_id) values(30,25);
insert into product_to_brand(product_id,brand_id) values(31,12);
insert into product_to_brand(product_id,brand_id) values(31,13);
insert into product_to_brand(product_id,brand_id) values(31,14);
insert into product_to_brand(product_id,brand_id) values(31,15);
insert into product_to_brand(product_id,brand_id) values(32,28);
insert into product_to_brand(product_id,brand_id) values(32,29);
insert into product_to_brand(product_id,brand_id) values(33,28);
insert into product_to_brand(product_id,brand_id) values(33,29);
insert into product_to_brand(product_id,brand_id) values(34,28);
insert into product_to_brand(product_id,brand_id) values(34,29);
insert into product_to_brand(product_id,brand_id) values(35,12);
insert into product_to_brand(product_id,brand_id) values(35,13);
insert into product_to_brand(product_id,brand_id) values(35,14);
insert into product_to_brand(product_id,brand_id) values(35,15);
insert into product_to_brand(product_id,brand_id) values(36,12);
insert into product_to_brand(product_id,brand_id) values(36,13);
insert into product_to_brand(product_id,brand_id) values(36,14);
insert into product_to_brand(product_id,brand_id) values(36,15);
insert into product_to_brand(product_id,brand_id) values(37,6);
insert into product_to_brand(product_id,brand_id) values(37,12);
insert into product_to_brand(product_id,brand_id) values(37,13);
insert into product_to_brand(product_id,brand_id) values(37,14);
insert into product_to_brand(product_id,brand_id) values(38,9);
insert into product_to_brand(product_id,brand_id) values(39,8);
insert into product_to_brand(product_id,brand_id) values(40,32);
insert into product_to_brand(product_id,brand_id) values(41,9);
insert into product_to_brand(product_id,brand_id) values(42,3);
insert into product_to_brand(product_id,brand_id) values(42,4);
insert into product_to_brand(product_id,brand_id) values(42,5);
insert into product_to_brand(product_id,brand_id) values(42,25);
insert into product_to_brand(product_id,brand_id) values(42,27);
insert into product_to_brand(product_id,brand_id) values(42,36);
insert into product_to_brand(product_id,brand_id) values(43,37);
insert into product_to_brand(product_id,brand_id) values(43,38);
insert into product_to_brand(product_id,brand_id) values(43,39);
insert into product_to_brand(product_id,brand_id) values(43,43);
insert into product_to_brand(product_id,brand_id) values(44,37);
insert into product_to_brand(product_id,brand_id) values(44,38);
insert into product_to_brand(product_id,brand_id) values(44,39);
insert into product_to_brand(product_id,brand_id) values(44,43);
insert into product_to_brand(product_id,brand_id) values(45,37);
insert into product_to_brand(product_id,brand_id) values(45,38);
insert into product_to_brand(product_id,brand_id) values(45,39);
insert into product_to_brand(product_id,brand_id) values(45,43);
insert into product_to_brand(product_id,brand_id) values(46,43);
insert into product_to_brand(product_id,brand_id) values(47,40);
insert into product_to_brand(product_id,brand_id) values(48,40);
insert into product_to_brand(product_id,brand_id) values(48,42);
insert into product_to_brand(product_id,brand_id) values(49,40);
insert into product_to_brand(product_id,brand_id) values(49,42);
insert into product_to_brand(product_id,brand_id) values(50,40);
insert into product_to_brand(product_id,brand_id) values(50,42);
insert into product_to_brand(product_id,brand_id) values(51,40);
insert into product_to_brand(product_id,brand_id) values(51,42);
insert into product_to_brand(product_id,brand_id) values(52,40);
insert into product_to_brand(product_id,brand_id) values(52,42);
insert into product_to_brand(product_id,brand_id) values(53,41);
insert into product_to_brand(product_id,brand_id) values(53,42);
insert into product_to_brand(product_id,brand_id) values(54,41);
insert into product_to_brand(product_id,brand_id) values(54,42);
insert into product_to_brand(product_id,brand_id) values(55,41);
insert into product_to_brand(product_id,brand_id) values(55,42);
insert into product_to_brand(product_id,brand_id) values(56,46);
insert into product_to_brand(product_id,brand_id) values(57,46);
insert into product_to_brand(product_id,brand_id) values(58,12);
insert into product_to_brand(product_id,brand_id) values(58,13);
insert into product_to_brand(product_id,brand_id) values(58,43);
insert into product_to_brand(product_id,brand_id) values(59,12);
insert into product_to_brand(product_id,brand_id) values(59,13);
insert into product_to_brand(product_id,brand_id) values(60,3);
insert into product_to_brand(product_id,brand_id) values(60,4);
insert into product_to_brand(product_id,brand_id) values(60,44);
insert into product_to_brand(product_id,brand_id) values(61,9);
insert into product_to_brand(product_id,brand_id) values(61,11);
insert into product_to_brand(product_id,brand_id) values(61,31);
insert into product_to_brand(product_id,brand_id) values(61,34);
insert into product_to_brand(product_id,brand_id) values(62,44);
insert into product_to_brand(product_id,brand_id) values(63,44);
insert into product_to_brand(product_id,brand_id) values(64,7);
insert into product_to_brand(product_id,brand_id) values(65,22);
insert into product_to_brand(product_id,brand_id) values(66,22);
insert into product_to_brand(product_id,brand_id) values(67,22);
insert into product_to_brand(product_id,brand_id) values(68,32);
insert into product_to_brand(product_id,brand_id) values(68,45);
insert into product_to_brand(product_id,brand_id) values(69,32);
insert into product_to_brand(product_id,brand_id) values(69,45);
insert into product_to_brand(product_id,brand_id) values(70,48);
insert into product_to_brand(product_id,brand_id) values(70,49);
insert into product_to_brand(product_id,brand_id) values(71,48);
insert into product_to_brand(product_id,brand_id) values(71,49);
insert into product_to_brand(product_id,brand_id) values(72,48);
insert into product_to_brand(product_id,brand_id) values(72,49);
insert into product_to_brand(product_id,brand_id) values(73,48);
insert into product_to_brand(product_id,brand_id) values(73,49);
insert into product_to_brand(product_id,brand_id) values(74,48);
insert into product_to_brand(product_id,brand_id) values(74,49);



-- inserting into inventory
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,1,1,50,5,30);  -- milk one packet(500ml)
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,1,2,45,6,30);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,1,4,60,3,30);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,2,1,150,3,120); -- ghee one litre box 
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,2,2,145,2,120);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,2,4,160,7,120);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,3,3,20,3,20);  -- biscuit one packet small
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,3,17,10,30,10);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,4,3,45,25,35); -- bread one packet
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,5,44,46,26,48);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,5,4,47,27,47);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,6,4,10,33,10); -- chocolate one small packet
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,6,44,10,34,10);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,7,5,200,12,100); --  cornflakes 1kg
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(11,8,6,2000,13,1500); -- watch
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(11,8,19,4000,1,2000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(11,8,23,6000,1,5000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(3,9,7,250,2,300);  -- cream 1 small dibbi
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(3,9,8,300,22,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(3,9,9,400,23,500);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(3,9,11,500,11,600);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(2,10,7,500,3,600);  -- supplements medicine
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,11,17,250,10,150); -- toothpaste 250 ml
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,12,8,800,9,700); -- shampoo 1 bottle 500 ml
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,12,9,800,24,700);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,13,10,250,8,150); -- shaving cream- small box
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,14,8,1000,7,900); -- conditioner 1 bottle 500 ml
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,14,9,990,6,800);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,15,11,240,4,350); -- soap 1 bar
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,15,7,300,5,200);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,16,12,1000,5,900); -- shoes
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,16,13,2000,25,1000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,16,14,3000,4,2500);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,17,12,3199,3,3000); -- football 
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,17,13,3199,26,3000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,17,43,3199,2,3000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,17,37,669,1,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,17,38,669,27,600);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,18,15,599,6,400); -- bag
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,19,15,699,2,300);  -- tshirt
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,19,28,399,28,300);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(9,20,16,35,4,20); -- cold drink
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(9,20,18,35,7,20);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(9,20,33,35,8,20);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,21,19,20000,9,10000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,21,20,49999,7,40000); -- tv
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,22,17,350,12,360); -- HONEY 250 ml
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,23,19,23999,15,25000); -- fridge
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,23,20,23999,29,24000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,23,21,21999,18,15000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,23,22,15699,21,15000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,23,41,17000,24,15000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(11,24,19,60000,8,40000); -- phone
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(11,24,23,11200,19,45000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,25,19,21999,14,20000);  -- AC
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,25,20,19689,9,20000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,25,42,30000,30,20000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,26,19,20000,9,2000); -- Washing machine
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,26,20,20000,5,30000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,26,21,20000,0,20000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,26,41,20000,29,20000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,26,42,20000,2,20000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(5,27,22,24000,10,20000); -- sofa
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(11,28,23,699,4,400); -- earphones
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(11,28,24,599,6,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,29,25,120,8,400); -- bhujia
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,30,25,230,28,200);  -- dal
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,31,12,499,10,400); -- jeans
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,31,13,399,12,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,31,14,299,15,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,31,15,799,19,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,32,28,200,11,400);  -- innerwear
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,32,29,400,27,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,33,28,200,25,400); -- boxers
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,33,29,400,31,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,34,28,400,26,400); -- vest
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,34,29,200,32,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,35,12,799,12,400); -- trouser
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,35,13,899,35,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,35,14,699,36,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(4,35,15,459,37,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(16,36,12,150,13,100); -- mask
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(16,36,13,50,13,40);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(16,36,14,520,25,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(16,36,15,50,17,40);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,37,6,449,21,400); -- deo
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,37,12,349,1,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,37,13,220,3,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,37,14,120,2,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(6,38,9,200,5,100); -- hairoil 200 ml
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(3,39,8,600,4,100); -- eyeliner
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(16,40,32,300,14,100); -- covid test kit
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(2,41,9,300,2,100); -- tulsi drop
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,42,3,20,24,5); -- chips small packet
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,42,4,20,1,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,42,5,20,7,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,42,25,10,15,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,42,27,10,3,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,42,36,10,23,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,43,37,2000,2,1000); -- badminton racket
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,43,38,1900,3,1000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,43,39,1800,5,1000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,43,43,400,9,400);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,44,37,3000,3,4000);  -- tennis racket
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,44,38,2900,16,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,44,39,4500,2,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,44,43,3600,7,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,45,37,4700,7,4000); -- squash racket
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,45,38,4500,22,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,45,39,3700,1,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,45,43,3800,21,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,46,43,300,9,400); -- tennis ball
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,47,40,3000,1,4000); -- kettle
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,48,40,3000,17,4000); -- sandwich maker
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,48,42,3300,4,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,49,40,3600,3,4000); -- mixer
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,49,42,3900,7,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,50,40,4200,3,4000); -- toaster
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,50,42,4500,8,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,51,40,4800,4,4000); -- grinder
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,51,42,5100,20,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,52,40,5400,9,4000); -- hand blender
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,52,42,5700,1,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,53,41,4199,18,4000); -- hair straightner
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,53,42,4299,19,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,54,41,4399,1,4000);  -- hair dryer
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,54,42,4499,1,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,55,41,4599,1,4000); -- hair curler
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(7,55,42,4699,18,4000);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(13,56,46,10000,5,10000); -- petrol generator
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(13,57,46,11000,5,10000); -- diesel generator
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,58,12,600,5,600); -- basket ball
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,58,13,640,5,600);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,58,43,760,5,600);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,59,12,1000,19,600); -- skates
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,59,13,1200,2,600);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,60,3,90,2,100); -- wholeweat
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,60,4,90,17,100);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(1,60,44,90,3,100);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(14,61,9,399,4,100); -- liquid soap
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(14,61,11,419,5,100);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(14,61,31,429,6,100);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(14,61,34,419,7,100);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(14,62,44,439,16,100); -- phenyl
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(14,63,44,339,1,100); -- toilet cleaner
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(12,64,7,300,9,100); -- mosquito repellant
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,65,22,20,4,20); -- pen stand
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(5,66,22,6000,20,5000); -- desk
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,67,22,300,6,100); -- paper weight
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(16,68,32,5,15,5); -- bandage
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(16,68,45,5,9,5); 
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(16,69,32,5,2,5); -- bandaid
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(16,69,45,5,3,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,70,48,29,5,5); -- pencil
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,70,49,39,8,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,71,48,39,14,5); -- pen
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,71,49,49,44,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,72,48,15,12,5); -- eraser
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,72,49,5,21,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,73,48,20,13,5); -- sharpener
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,73,49,10,12,5);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,74,48,20,13,5); -- mechanical pencil
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(15,74,49,80,21,5);

-- entering data of admin table

insert into administrator values (1,"Abhishek","password1");
insert into administrator values (2,"Arjit","password2");


-- entering data of customer table

insert into customer (customer_id, cust_name, cust_pass, email, residence) values (1, 'Brunhilde', 'yWEajIscm', 'bofielly0@columbia.edu', '775 Dorton Lane');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (2, 'Lisa', 'Lol5vr', 'lkemet1@moonfruit.com', '9234 6th Trail');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (3, 'Gabriele', '3XQfamxmNk3k', 'gbrattan2@so-net.ne.jp', '8 Oak Valley Pass');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (4, 'Natal', 'yExDV32', 'nhuckerby3@vistaprint.com', '8306 Barby Parkway');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (5, 'Huntlee', 'iVqaIYYM', 'hdeniscke4@studiopress.com', '2 Claremont Hill');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (6, 'Brit', 'ciLsgZ', 'bmellows5@myspace.com', '33314 Helena Alley');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (7, 'Constantine', 'h7xI1QEBrydQ', 'cgrayshan6@webnode.com', '1038 Esker Place');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (8, 'Waylon', 'BAVlauFNJ3o', 'wtremethack7@booking.com', '06 Cottonwood Terrace');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (9, 'Sayer', 'k8CrPWI', 'srenzo8@artisteer.com', '01746 Riverside Parkway');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (10, 'Hamid', 'XSCUaU', 'hbishopp9@pen.io', '3 Haas Center');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (11, 'Maddie', 'kWmI3S', 'mviteta@baidu.com', '4768 Maple Wood Circle');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (12, 'Delano', 'CMpyr9dL3n', 'dgrevileb@cam.ac.uk', '8807 Main Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (13, 'Poul', 'TNQqXx', 'pgrutchfieldc@theguardian.com', '893 Brickson Park Junction');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (14, 'Regan', 'p5TLalh', 'rgarryd@posterous.com', '2 Thierer Junction');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (15, 'Jeri', 'nbTEYguP9S5r', 'jbubbe@illinois.edu', '73265 Bonner Drive');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (16, 'Mala', 'LaFMwIjYDk', 'middonf@list-manage.com', '95 Scott Place');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (17, 'Halie', 'Pja2GzCP1GfZ', 'htrowillg@oracle.com', '6377 Sommers Trail');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (18, 'Jeralee', 'QFOtONQ', 'jragborneh@t.co', '91 Mendota Pass');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (19, 'Whittaker', 'h4Zuj5', 'wmacmenamyi@cafepress.com', '3839 Maywood Center');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (20, 'Salvidor', '22ob1A', 'stuffleyj@tripadvisor.com', '1315 Dexter Road');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (21, 'Ulrick', '583fOlu', 'uhenzek@ustream.tv', '004 Rusk Junction');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (22, 'Garwood', 'YFZL1n3wdTo', 'gfreeburnl@cafepress.com', '8050 Oakridge Plaza');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (23, 'Kimberley', 'JtVIuFWe', 'kwhittym@amazon.co.jp', '92 Surrey Alley');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (24, 'Amaleta', 'B3m47G3lh', 'abazeleyn@washington.edu', '13 Nelson Court');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (25, 'Dud', 'VaxPPfUl', 'dtrembletto@ebay.com', '65312 Bowman Court');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (26, 'Andrej', 'TNdMzev72Hk', 'apegdenp@yellowpages.com', '6595 Arrowood Park');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (27, 'Ian', '3Y3Rm95N1', 'idundonq@umich.edu', '8 Tomscot Pass');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (28, 'Florri', 'rJu0yW7vdRc', 'fvalasekr@a8.net', '09359 Randy Drive');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (29, 'Aurie', '5i7WEJtUehc', 'amaffullis@npr.org', '0 Fremont Avenue');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (30, 'Anny', 'rn6J4YTq4', 'aemettt@alibaba.com', '208 Bunker Hill Way');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (31, 'Audrey', '7RALCZw', 'ahariotu@bluehost.com', '77886 Amoth Parkway');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (32, 'Eduino', 'jSG0IE', 'eschuelckev@quantcast.com', '2 Waywood Lane');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (33, 'Grace', 'HH6mO5DG0Hcc', 'gjovasevicw@redcross.org', '73 Old Shore Way');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (34, 'Ellery', 'ucWMSX9r7jl', 'enorreex@seattletimes.com', '268 Schiller Road');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (35, 'Danie', 'ipJS7yWz', 'dhoulistony@ehow.com', '34984 Dorton Trail');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (36, 'Silvie', 'pV6GqFe', 'scampanyz@ibm.com', '64062 Golf View Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (37, 'Hillard', '49m7c7t7ora', 'herrett10@ucoz.com', '717 Chive Road');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (38, 'Cly', 'WIZmtmV4MH0', 'cterrill11@yahoo.com', '53 Welch Park');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (39, 'Cammy', 'OSNdSf0', 'chaines12@un.org', '5265 Monument Road');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (40, 'Kendal', '4zzMIoXteN', 'kfane13@qq.com', '872 Hanson Court');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (41, 'Tony', '77UUCLBsTPUJ', 'tklyn14@ning.com', '87326 Schurz Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (42, 'Rudyard', 'LT91crKM', 'rhancell15@meetup.com', '5 Melody Road');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (43, 'Billi', 'jFnG0q8wmM', 'blockett16@cisco.com', '39 Reindahl Point');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (44, 'Ode', 'ueKBvv', 'otreneer17@hhs.gov', '660 Spaight Hill');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (45, 'Stacie', 'jHfl2a7CKUPu', 'sobruen18@yandex.ru', '7 Mosinee Hill');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (46, 'Marguerite', 'XQ2fAuTLae2', 'mbunyan19@google.com', '0 Fulton Plaza');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (47, 'Saundra', 'NnA5DtM', 'sbaudesson1a@craigslist.org', '548 Hermina Alley');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (48, 'Dagmar', 'fDF3eNTYDVA', 'dwillgress1b@dailymotion.com', '26 Transport Junction');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (49, 'Maisie', 'qxlU0tlG', 'mhuc1c@hc360.com', '57498 Scott Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (50, 'Frazier', 'NhyThq3bqSdn', 'fclowney1d@g.co', '1293 Lukken Point');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (51, 'Josee', 'mb6ElS66A', 'jdonner1e@jalbum.net', '942 Crescent Oaks Parkway');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (52, 'Mattias', 'hB8kxL', 'mraccio1f@telegraph.co.uk', '27 Harper Lane');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (53, 'Steffi', 'totM4EsCtp', 'sshorte1g@spotify.com', '0286 Starling Pass');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (54, 'Tuesday', 'WkRxEyTvZBW', 'tbarck1h@surveymonkey.com', '832 Emmet Park');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (55, 'Felicdad', '33udiuypml', 'fsymms1i@biglobe.ne.jp', '2127 Browning Crossing');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (56, 'Anallise', 'RKnV9tXtU', 'ahann1j@goodreads.com', '79 Nancy Plaza');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (57, 'Jacquetta', 'OqpqbsicqE1', 'jdelagnes1k@springer.com', '6162 Derek Lane');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (58, 'Cello', 'hVZMWhXTkXfy', 'chaw1l@jimdo.com', '63575 Carey Center');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (59, 'Neila', 'y3stKLQBQeB3', 'nbrosio1m@wsj.com', '8402 Gale Pass');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (60, 'Kristos', 'tvbxZa93uj', 'kbeards1n@un.org', '6 Crownhardt Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (61, 'Arleen', 'IX3SvFJK', 'apaget1o@delicious.com', '052 Marcy Alley');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (62, 'Nap', 'Lma5zy5gQtiB', 'nclemo1p@canalblog.com', '2012 Erie Circle');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (63, 'Mariellen', 'DcwSJkmZPJ', 'mtomaselli1q@bandcamp.com', '19 Maple Avenue');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (64, 'Vita', 'ArqrWjSkwSW', 'vblackmuir1r@cdbaby.com', '67 Melody Lane');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (65, 'Abby', 'ImgU4u2ch', 'amaren1s@alibaba.com', '89157 Melvin Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (66, 'Orin', 'HVW3P2E8a4zX', 'osynan1t@mapquest.com', '2165 Pepper Wood Lane');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (67, 'Brod', 'e1havL5PNA', 'bpitkethly1u@pen.io', '83267 Utah Point');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (68, 'Dimitri', 'mJE3Qixlow74', 'dcasaccia1v@edublogs.org', '99 Gateway Plaza');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (69, 'Filip', 'EkRv9qSf5Kc', 'fbaunton1w@umich.edu', '728 Ridgeway Circle');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (70, 'Leola', 'kiql09', 'llarmett1x@theguardian.com', '2 Merrick Circle');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (71, 'Raynell', 'srL2yScgYOO', 'rmetzing1y@hud.gov', '03 Rusk Terrace');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (72, 'Ermin', 'uELnzmY99qSb', 'elunney1z@topsy.com', '23976 South Junction');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (73, 'Shirleen', '7FSPReoUT', 'sdaffey20@cam.ac.uk', '76106 Anderson Terrace');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (74, 'Hastings', 'qYPpx9CT2', 'hbaccas21@ucla.edu', '1 Petterle Crossing');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (75, 'Kelly', 'fIXaoQOYGa28', 'kkubanek22@mapquest.com', '18664 Autumn Leaf Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (76, 'Ives', 'y9G4xA', 'iparham23@archive.org', '79016 Old Shore Alley');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (77, 'Frankie', 'i9mJiqj2lVY', 'fvass24@kickstarter.com', '9353 Dawn Parkway');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (78, 'Osgood', 'GDV5i7hrK6', 'okeston25@china.com.cn', '4302 Miller Drive');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (79, 'Sacha', 'U6djJ1OS', 'sburney26@storify.com', '8 Trailsway Hill');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (80, 'Brande', 'lr9fXnEgT', 'bscotchmur27@samsung.com', '4937 Monument Pass');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (81, 'Noami', 'J1rxhIGup', 'ngreenway28@ed.gov', '72 Portage Place');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (82, 'Ninette', 'SFqtqFA0', 'ndunley29@symantec.com', '7 Vera Trail');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (83, 'Jesselyn', 'vbdr6ycBUc', 'jferryman2a@google.com', '03592 Warner Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (84, 'Eloise', 'Qj0NMEhMiZr', 'ebalam2b@blogspot.com', '06012 Spaight Place');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (85, 'Rori', 'akldF0BnS', 'rswidenbank2c@va.gov', '4657 Spohn Circle');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (86, 'Chaim', 'vhOKNBIwI', 'ctuffield2d@rambler.ru', '91 Prairieview Circle');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (87, 'Lawry', 'Qx90yt1', 'lmalyj2e@1688.com', '8 Holy Cross Plaza');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (88, 'Domingo', 'fpBdZ9y7OZGe', 'ddalligan2f@joomla.org', '8 Kropf Park');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (89, 'Leah', 'OldaJkTeiMpT', 'lclinch2g@drupal.org', '07422 Helena Park');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (90, 'Ker', 'x8G2J22u', 'kcran2h@sun.com', '9921 Waubesa Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (91, 'Marylin', 'R04TcwYg1voq', 'mwringe2i@china.com.cn', '1091 Michigan Street');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (92, 'Ebonee', 'YkJ5r6rNDfxR', 'etomas2j@npr.org', '56 Onsgard Lane');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (93, 'Rubi', 'CT6NW91M', 'rspyvye2k@ameblo.jp', '2707 School Junction');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (94, 'Lawton', 'gxIUoiFEWQFY', 'lisacq2l@bluehost.com', '315 Hagan Alley');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (95, 'Port', 'NYIZy1RIvl', 'pacres2m@berkeley.edu', '61933 Bultman Park');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (96, 'Shaylyn', 'TjdqwvLFGnoY', 'sfebvre2n@utexas.edu', '4 Dakota Avenue');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (97, 'Nelson', 'owhptrbqSiP', 'naffron2o@time.com', '64918 Columbus Parkway');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (98, 'Veradis', 'pIlRIBAdV', 'vtilburn2p@list-manage.com', '40964 Barby Hill');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (99, 'Etti', '3aX8xVWPTtn', 'eblazewski2q@shareasale.com', '452 Muir Hill');
insert into customer (customer_id, cust_name, cust_pass, email, residence) values (100, 'Donielle', 'vaPo2aC', 'dgoncalo2r@dmoz.org', '998 Macpherson Point');


-- enter data of bills

insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (1,1,1,1,5,250);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (1,1,2,1,3,450);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (1,3,9,7,2,500);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (2,1,4,3,2,90);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (2,6,15,11,1,240);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (2,4,31,12,1,499);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (3,4,34,29,3,600);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (3,16,36,12,1,150);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (3,2,41,9,2,600);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (3,1,1,1,5,250);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (4,1,42,3,4,80);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (4,12,44,37,1,3000);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (4,7,54,41,1,4399);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (5,1,4,3,2,90);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (5,6,15,11,1,240);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (5,4,31,12,1,499);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (6,1,1,1,5,250);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (6,1,2,1,3,450);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (6,3,9,7,2,500);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (7,1,4,3,2,90);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (7,6,15,11,1,240);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (7,4,31,12,1,499);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (8,4,34,29,3,600);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (8,1,1,1,5,250);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (8,16,36,12,1,150);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (8,2,41,9,2,600);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (9,1,42,3,4,80);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (9,12,44,37,1,3000);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (9,7,54,41,1,4399);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (10,1,4,3,2,90);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (10,6,15,11,1,240);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (10,4,31,12,1,499);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (11,1,1,1,5,250);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (11,1,2,1,3,450);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (11,3,9,7,2,500);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (12,1,4,3,2,90);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (12,6,15,11,1,240);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (12,4,31,12,1,499);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (13,4,34,29,3,600);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (13,16,36,12,1,150);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (13,1,1,1,5,250);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (13,2,41,9,2,600);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (14,1,42,3,4,80);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (14,12,44,37,1,3000);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (14,7,54,41,1,4399);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (15,1,4,3,2,90);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (15,6,15,11,1,240);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (15,4,31,12,1,499);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (16,1,4,3,2,90);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (16,6,15,11,1,240);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (16,4,31,12,1,499);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (17,1,42,3,4,80);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (17,12,44,37,1,3000);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (17,7,54,41,1,4399);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (18,4,34,29,3,600);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (18,1,1,1,5,250);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (18,16,36,12,1,150);
insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values (18,2,41,9,2,600);



-- data entry of ledger

insert into ledger (bill_no,date_of_purchase,customer_id) values (1,'2021-01-17',10);
insert into ledger (bill_no,date_of_purchase,customer_id) values (2,'2022-08-19',9);
insert into ledger (bill_no,date_of_purchase,customer_id) values (3,'2022-04-30',12);
insert into ledger (bill_no,date_of_purchase,customer_id) values (4,'2022-02-02',11);
insert into ledger (bill_no,date_of_purchase,customer_id) values (5,'2023-01-10',3);
insert into ledger (bill_no,date_of_purchase,customer_id) values (6,'2022-11-20',6);
insert into ledger (bill_no,date_of_purchase,customer_id) values (7,'2022-04-30',90);
insert into ledger (bill_no,date_of_purchase,customer_id) values (8,'2023-02-03',23);
insert into ledger (bill_no,date_of_purchase,customer_id) values (9,'2022-10-10',45);
insert into ledger (bill_no,date_of_purchase,customer_id) values (10,'2023-01-10',22);
insert into ledger (bill_no,date_of_purchase,customer_id) values (11,'2022-06-21',8);
insert into ledger (bill_no,date_of_purchase,customer_id) values (12,'2023-01-20',34);
insert into ledger (bill_no,date_of_purchase,customer_id) values (13,'2022-02-02',55);
insert into ledger (bill_no,date_of_purchase,customer_id) values (14,'2022-12-13',67);
insert into ledger (bill_no,date_of_purchase,customer_id) values (15,'2022-08-19',19);
insert into ledger (bill_no,date_of_purchase,customer_id) values (16,'2020-03-19',2);
insert into ledger (bill_no,date_of_purchase,customer_id) values (17,'2020-03-29',2);
insert into ledger (bill_no,date_of_purchase,customer_id) values (18,'2022-08-20',9);
