use eCommerce_db;
create database eCommerce_db;
create table user(
id int auto_increment primary key,
name varchar(100),
email varchar(100)
);

create table product(
id int auto_increment primary key,
product_name varchar(100),
product_description varchar(150)
);
show tables;
create table orders(
id int auto_increment primary key,
product_id int Not null,
user_id int Not null,
created_at timestamp default current_timestamp,
foreign key (user_id) references user(id),
foreign key (product_id) references product(id)
);

show tables
