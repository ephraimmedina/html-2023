show databases;

create database lubooksql;

use lubooksql;

create table books(
	book_id int primary key auto_increment,
    title varchar(30),
    Author varchar(30),
    Published_Year YEAR    
);

drop table books;
show tables;
desc books;

insert into books(title, Author, Published_Year) values ('Harry Potter', 'J.K Rowling', '2005');
insert into books(title, Author, Published_Year) values ('The Great Gatsby', 'F. Scott Fitzgerald', '1925');
insert into books(title, Author, Published_Year) values ('To Kill a Mockingbird', ' Harper Lee', '1960 ');

select * from books;