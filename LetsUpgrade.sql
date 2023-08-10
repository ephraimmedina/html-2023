create database lusql;

show databases;

use lusql;

show tables;

create table products(
 product_id int primary key auto_increment,
 product_name varchar(30) not null,
 price int);
 
 create table soldproducts(
 sold_id int primary key auto_increment,
 product_id int, 
 foreign key(product_id) references products(product_id),
 qty_sold int);
 
 
 desc products;
 desc soldproducts;
 
 /*Comments*/
 
insert into products(product_name, price) values ("Android 14", 2500);
insert into products(product_name, price) values ("Samsung", 280);
insert into products(product_name, price) values ("Poco", 150);
insert into products(product_name, price) values ("Reno Phone", 170);
insert into products(product_name, price) values ("Iphone 14", 1500);

insert into soldproducts(product_id, qty_sold) values (5, 26);
insert into soldproducts(product_id, qty_sold) values (3, 15);
insert into soldproducts(product_id, qty_sold) values (2, 10); 
insert into soldproducts(product_id, qty_sold) values (1, 2);
insert into soldproducts(product_id, qty_sold) values (4, 8);
 
 select * from products;
 select * from soldproducts;
 
 
 /* Answer for MY assignement*/
select products.product_name, products.price, soldproducts.qty_sold, price / qty_sold as AveragePrice from products inner join soldproducts on products.product_id = soldproducts.product_id;
 
 
 /* 
	Description for this Assignment
    1. Created lusql as database
    2. Created two (2) different tables to store different datas
    3. Inserted datas for two tables
    4. Using Inner join Query for two different tables I added additional Column named as Average Price to Compute the Average Price of Sold items 
 
 */
 
 
 
 
 
 