SELECT name from sys.databases;
CREATE DATABASE Practice2DB;
USE Practice2DB;

CREATE TABLE product_details(
   product_id    VARCHAR(6) NOT NULL PRIMARY KEY
  ,price         INTEGER  NOT NULL
  ,product_name  VARCHAR(32) NOT NULL
  ,category_id   INTEGER  NOT NULL
  ,segment_id    INTEGER  NOT NULL
  ,style_id      INTEGER  NOT NULL
  ,category_name VARCHAR(6) NOT NULL
  ,segment_name  VARCHAR(6) NOT NULL
  ,style_name    VARCHAR(19) NOT NULL
);
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('c4a632',13,'Navy Oversized Jeans - Womens',1,3,7,'Womens','Jeans','Navy Oversized');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('e83aa3',32,'Black Straight Jeans - Womens',1,3,8,'Womens','Jeans','Black Straight');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('e31d39',10,'Cream Relaxed Jeans - Womens',1,3,9,'Womens','Jeans','Cream Relaxed');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('d5e9a6',23,'Khaki Suit Jacket - Womens',1,4,10,'Womens','Jacket','Khaki Suit');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('72f5d4',19,'Indigo Rain Jacket - Womens',1,4,11,'Womens','Jacket','Indigo Rain');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('9ec847',54,'Grey Fashion Jacket - Womens',1,4,12,'Womens','Jacket','Grey Fashion');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('5d267b',40,'White Tee Shirt - Mens',2,5,13,'Mens','Shirt','White Tee');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('c8d436',10,'Teal Button Up Shirt - Mens',2,5,14,'Mens','Shirt','Teal Button Up');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('2a2353',57,'Blue Polo Shirt - Mens',2,5,15,'Mens','Shirt','Blue Polo');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('f084eb',36,'Navy Solid Socks - Mens',2,6,16,'Mens','Socks','Navy Solid');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('b9a74d',17,'White Striped Socks - Mens',2,6,17,'Mens','Socks','White Striped');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('2feb6b',29,'Pink Fluro Polkadot Socks - Mens',2,6,18,'Mens','Socks','Pink Fluro Polkadot');

CREATE TABLE product_hierarchy(
   id         INTEGER  NOT NULL PRIMARY KEY 
  ,parent_id  INTEGER 
  ,level_text VARCHAR(19) NOT NULL
  ,level_name VARCHAR(8) NOT NULL
);
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (1,NULL,'Womens','Category');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (2,NULL,'Mens','Category');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (3,1,'Jeans','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (4,1,'Jacket','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (5,2,'Shirt','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (6,2,'Socks','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (7,3,'Navy Oversized','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (8,3,'Black Straight','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (9,3,'Cream Relaxed','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (10,4,'Khaki Suit','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (11,4,'Indigo Rain','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (12,4,'Grey Fashion','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (13,5,'White Tee','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (14,5,'Teal Button Up','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (15,5,'Blue Polo','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (16,6,'Navy Solid','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (17,6,'White Striped','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (18,6,'Pink Fluro Polkadot','Style');

CREATE TABLE product_prices(
   id         INTEGER  NOT NULL PRIMARY KEY 
  ,product_id VARCHAR(6) NOT NULL
  ,price      INTEGER  NOT NULL
);
INSERT INTO product_prices(id,product_id,price) VALUES (7,'c4a632',13);
INSERT INTO product_prices(id,product_id,price) VALUES (8,'e83aa3',32);
INSERT INTO product_prices(id,product_id,price) VALUES (9,'e31d39',10);
INSERT INTO product_prices(id,product_id,price) VALUES (10,'d5e9a6',23);
INSERT INTO product_prices(id,product_id,price) VALUES (11,'72f5d4',19);
INSERT INTO product_prices(id,product_id,price) VALUES (12,'9ec847',54);
INSERT INTO product_prices(id,product_id,price) VALUES (13,'5d267b',40);
INSERT INTO product_prices(id,product_id,price) VALUES (14,'c8d436',10);
INSERT INTO product_prices(id,product_id,price) VALUES (15,'2a2353',57);
INSERT INTO product_prices(id,product_id,price) VALUES (16,'f084eb',36);
INSERT INTO product_prices(id,product_id,price) VALUES (17,'b9a74d',17);
INSERT INTO product_prices(id,product_id,price) VALUES (18,'2feb6b',29);

CREATE TABLE sales(
   prod_id        VARCHAR(6) NOT NULL 
  ,qty            INTEGER  NOT NULL
  ,price          INTEGER  NOT NULL
  ,discount       INTEGER  NOT NULL
  ,member         VARCHAR(5) NOT NULL
  ,txn_id         VARCHAR(6) NOT NULL
  ,start_txn_time VARCHAR(24) NOT NULL
);
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',4,13,17,'true','54f307','2021-02-13T01:59:43.296Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',4,40,17,'true','54f307','2021-02-13T01:59:43.296Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',4,17,17,'true','54f307','2021-02-13T01:59:43.296Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',2,29,17,'true','54f307','2021-02-13T01:59:43.296Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',5,13,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',2,10,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',3,19,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',3,57,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',3,36,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',1,13,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',5,32,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',1,23,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',1,19,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',3,40,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',4,36,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',4,17,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',2,13,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',5,10,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',3,54,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',4,36,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',2,29,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',5,13,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',4,10,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',5,19,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',2,36,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',2,17,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',4,32,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',2,23,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',4,10,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',1,57,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',1,36,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',3,19,14,'false','e9a1dd','2021-03-28T20:01:43.133Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',3,54,14,'false','e9a1dd','2021-03-28T20:01:43.133Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',4,57,14,'false','e9a1dd','2021-03-28T20:01:43.133Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',2,36,14,'false','e9a1dd','2021-03-28T20:01:43.133Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',3,13,6,'false','003ea6','2021-01-20T14:21:00.979Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',3,10,6,'false','003ea6','2021-01-20T14:21:00.979Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',3,23,6,'false','003ea6','2021-01-20T14:21:00.979Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',3,54,6,'false','003ea6','2021-01-20T14:21:00.979Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',5,10,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',4,23,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',5,40,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',4,57,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',2,36,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',5,23,14,'false','cf6517','2021-02-21T21:45:33.350Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',1,19,14,'false','cf6517','2021-02-21T21:45:33.350Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',5,40,14,'false','cf6517','2021-02-21T21:45:33.350Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',3,17,14,'false','cf6517','2021-02-21T21:45:33.350Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',5,13,19,'true','48b9d7','2021-02-26T06:49:17.386Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',2,32,19,'true','48b9d7','2021-02-26T06:49:17.386Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',1,10,19,'true','48b9d7','2021-02-26T06:49:17.386Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',2,23,19,'true','48b9d7','2021-02-26T06:49:17.386Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',5,40,19,'true','48b9d7','2021-02-26T06:49:17.386Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',1,10,19,'true','48b9d7','2021-02-26T06:49:17.386Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',3,57,19,'true','48b9d7','2021-02-26T06:49:17.386Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',1,17,19,'true','48b9d7','2021-02-26T06:49:17.386Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',5,29,19,'true','48b9d7','2021-02-26T06:49:17.386Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',3,19,5,'true','47251d','2021-01-27T22:53:10.781Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',5,40,5,'true','47251d','2021-01-27T22:53:10.781Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',5,57,5,'true','47251d','2021-01-27T22:53:10.781Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',2,36,5,'true','47251d','2021-01-27T22:53:10.781Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',4,32,15,'false','c75ea6','2021-03-03T04:17:19.853Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',5,10,15,'false','c75ea6','2021-03-03T04:17:19.853Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',2,19,15,'false','c75ea6','2021-03-03T04:17:19.853Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',4,54,15,'false','c75ea6','2021-03-03T04:17:19.853Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',1,40,15,'false','c75ea6','2021-03-03T04:17:19.853Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',5,36,15,'false','c75ea6','2021-03-03T04:17:19.853Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',4,17,15,'false','c75ea6','2021-03-03T04:17:19.853Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',5,29,15,'false','c75ea6','2021-03-03T04:17:19.853Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',1,13,10,'true','84a0f1','2021-03-19T23:33:38.275Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',4,10,10,'true','84a0f1','2021-03-19T23:33:38.275Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',5,54,10,'true','84a0f1','2021-03-19T23:33:38.275Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',2,17,10,'true','84a0f1','2021-03-19T23:33:38.275Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',1,29,10,'true','84a0f1','2021-03-19T23:33:38.275Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',4,13,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',1,32,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',4,10,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',4,23,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',1,19,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',2,54,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',5,10,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',4,57,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',1,36,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',2,17,9,'false','786c60','2021-01-13T08:41:16.454Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',1,13,13,'true','500bf9','2021-03-08T02:41:15.331Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',1,23,13,'true','500bf9','2021-03-08T02:41:15.331Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',4,54,13,'true','500bf9','2021-03-08T02:41:15.331Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',4,17,13,'true','500bf9','2021-03-08T02:41:15.331Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',4,32,24,'true','034601','2021-01-12T17:35:37.334Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',4,10,24,'true','034601','2021-01-12T17:35:37.334Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',5,54,24,'true','034601','2021-01-12T17:35:37.334Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',3,36,24,'true','034601','2021-01-12T17:35:37.334Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',3,17,24,'true','034601','2021-01-12T17:35:37.334Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',4,32,1,'true','a88a5e','2021-02-15T04:56:13.258Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',4,40,1,'true','a88a5e','2021-02-15T04:56:13.258Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',3,23,19,'false','9a9653','2021-02-08T09:12:50.083Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',1,10,19,'false','9a9653','2021-02-08T09:12:50.083Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',2,36,19,'false','9a9653','2021-02-08T09:12:50.083Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',2,17,19,'false','9a9653','2021-02-08T09:12:50.083Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',2,29,19,'false','9a9653','2021-02-08T09:12:50.083Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',5,13,14,'false','1edc69','2021-03-28T15:32:43.786Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',5,32,14,'false','1edc69','2021-03-28T15:32:43.786Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',3,19,14,'false','1edc69','2021-03-28T15:32:43.786Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',5,54,14,'false','1edc69','2021-03-28T15:32:43.786Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',3,10,14,'false','1edc69','2021-03-28T15:32:43.786Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',4,17,14,'false','1edc69','2021-03-28T15:32:43.786Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',1,32,18,'false','638a7d','2021-03-15T02:24:18.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',2,10,18,'false','638a7d','2021-03-15T02:24:18.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',4,23,18,'false','638a7d','2021-03-15T02:24:18.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',3,19,18,'false','638a7d','2021-03-15T02:24:18.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',3,54,18,'false','638a7d','2021-03-15T02:24:18.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',2,40,18,'false','638a7d','2021-03-15T02:24:18.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',2,10,18,'false','638a7d','2021-03-15T02:24:18.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',3,57,18,'false','638a7d','2021-03-15T02:24:18.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',3,17,18,'false','638a7d','2021-03-15T02:24:18.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',5,13,1,'false','4bdb49','2021-03-03T04:33:15.264Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',2,54,1,'false','4bdb49','2021-03-03T04:33:15.264Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',2,40,1,'false','4bdb49','2021-03-03T04:33:15.264Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',1,10,1,'false','4bdb49','2021-03-03T04:33:15.264Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',5,36,1,'false','4bdb49','2021-03-03T04:33:15.264Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',3,17,1,'false','4bdb49','2021-03-03T04:33:15.264Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',2,29,1,'false','4bdb49','2021-03-03T04:33:15.264Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',2,13,13,'true','8f4908','2021-03-24T21:30:36.259Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',4,32,13,'true','8f4908','2021-03-24T21:30:36.259Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',2,23,13,'true','8f4908','2021-03-24T21:30:36.259Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',3,19,13,'true','8f4908','2021-03-24T21:30:36.259Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',4,40,13,'true','8f4908','2021-03-24T21:30:36.259Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',1,36,13,'true','8f4908','2021-03-24T21:30:36.259Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',5,17,13,'true','8f4908','2021-03-24T21:30:36.259Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',2,10,20,'true','3132fb','2021-02-11T01:59:35.261Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',1,23,20,'true','3132fb','2021-02-11T01:59:35.261Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',4,40,20,'true','3132fb','2021-02-11T01:59:35.261Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',4,57,20,'true','3132fb','2021-02-11T01:59:35.261Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',1,17,20,'true','3132fb','2021-02-11T01:59:35.261Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',5,29,20,'true','3132fb','2021-02-11T01:59:35.261Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',5,13,12,'true','2cf0ed','2021-01-24T00:59:46.291Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',5,10,12,'true','2cf0ed','2021-01-24T00:59:46.291Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',4,23,12,'true','2cf0ed','2021-01-24T00:59:46.291Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',4,57,12,'true','2cf0ed','2021-01-24T00:59:46.291Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',2,36,12,'true','2cf0ed','2021-01-24T00:59:46.291Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',5,29,12,'true','2cf0ed','2021-01-24T00:59:46.291Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',5,10,16,'true','9e0037','2021-01-09T17:25:31.238Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',1,23,16,'true','9e0037','2021-01-09T17:25:31.238Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',1,19,16,'true','9e0037','2021-01-09T17:25:31.238Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',3,36,16,'true','9e0037','2021-01-09T17:25:31.238Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',5,23,7,'true','d1a249','2021-02-07T21:22:19.718Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',4,19,7,'true','d1a249','2021-02-07T21:22:19.718Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',5,54,7,'true','d1a249','2021-02-07T21:22:19.718Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',3,57,7,'true','d1a249','2021-02-07T21:22:19.718Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',3,29,7,'true','d1a249','2021-02-07T21:22:19.718Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',2,13,22,'true','f77cc2','2021-02-08T12:29:27.917Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',5,32,22,'true','f77cc2','2021-02-08T12:29:27.917Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',3,23,22,'true','f77cc2','2021-02-08T12:29:27.917Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',3,54,22,'true','f77cc2','2021-02-08T12:29:27.917Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',3,40,22,'true','f77cc2','2021-02-08T12:29:27.917Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',5,10,22,'true','f77cc2','2021-02-08T12:29:27.917Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',5,57,22,'true','f77cc2','2021-02-08T12:29:27.917Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',2,13,9,'true','1928b1','2021-03-25T08:47:13.286Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',1,10,9,'true','1928b1','2021-03-25T08:47:13.286Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',1,23,9,'true','1928b1','2021-03-25T08:47:13.286Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',1,54,9,'true','1928b1','2021-03-25T08:47:13.286Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',3,40,9,'true','1928b1','2021-03-25T08:47:13.286Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',4,57,9,'true','1928b1','2021-03-25T08:47:13.286Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',1,17,9,'true','1928b1','2021-03-25T08:47:13.286Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',5,29,9,'true','1928b1','2021-03-25T08:47:13.286Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',1,32,5,'true','c228e3','2021-02-03T00:35:29.933Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',3,23,5,'true','c228e3','2021-02-03T00:35:29.933Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',3,19,5,'true','c228e3','2021-02-03T00:35:29.933Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',4,57,5,'true','c228e3','2021-02-03T00:35:29.933Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',2,10,23,'true','870d3b','2021-01-20T14:29:24.691Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',1,54,23,'true','870d3b','2021-01-20T14:29:24.691Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',4,10,23,'true','870d3b','2021-01-20T14:29:24.691Z');

SELECT * FROM sales;
SELECT * from product_details;

-- What was the total quantity sold for all products?
SELECT s.prod_id, pd.product_name, SUM(s.qty) AS 'Total Quantity'
FROM sales s
RIGHT JOIN product_details pd
ON s.prod_id = pd.product_id
GROUP BY s.prod_id, pd.product_name;

-- What is the total generated revenue for all products before discounts?
SELECT s.prod_id, SUM(s.qty * pp.price) AS 'Revenue Generated'
FROM sales s
RIGHT JOIN product_prices pp 
ON s.prod_id = pp.product_id
GROUP BY s.prod_id;

-- How many unique transactions were there?
SELECT COUNT(DISTINCT txn_id) AS 'Number of Unique transactions'FROM sales;

-- What are the average unique products purchased in each transaction?
SELECT AVG(prod_count) AS avg_distinct_prod_count
FROM (
    SELECT COUNT(DISTINCT prod_id) AS prod_count
    FROM sales
    GROUP BY txn_id
) AS per_txn_counts;

-- What are the top 3 products by total revenue before discount?
WITH ProductRevenue AS 
(SELECT prod_id, SUM(qty*price) AS prod_rev
FROM sales
GROUP BY prod_id), 
ProductRanking AS 
(
SELECT prod_id, prod_rev, 
RANK() OVER( ORDER BY prod_rev DESC) AS revenue_rank 
FROM ProductRevenue
)

SELECT pr.prod_id, pd.product_name, pr.prod_rev, pr.revenue_rank
FROM ProductRanking pr
JOIN product_details pd
ON pd.product_id = pr.prod_id
WHERE pr.revenue_rank <= 3
ORDER BY pr.revenue_rank ASC;
