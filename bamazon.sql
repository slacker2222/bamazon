DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

-- CREATE TABLE products (
-- Food VARCHAR(50) NOT NULL,
-- score INTEGER(10)
-- );

-- CREATE TABLE favorite_songs (
-- Song VARCHAR(100) NOT NULL,
-- Artist VARCHAR(50),
-- Score INTEGER(10)
-- );

CREATE TABLE products (
id INTEGER NOT NULL AUTO_INCREMENT,
product_name VARCHAR (100) NOT NULL,
department_name VARCHAR(100) NOT NULL,
price decimal (8,2) NOT NULL,
stock_quantity integer(10),
PRIMARY KEY (id)

);

insert into products (id, product_name, department_name, price, stock_quantity)
Values (1, "snowboard", "sports", 250.00, 1);


insert into products (id, product_name, department_name, price, stock_quantity)
Values (2, "baeball", "sports", 20.00, 2);


insert into products (id, product_name, department_name, price, stock_quantity)
Values (3, "airfrier", "kitchen", 80.00, 6);


insert into products (id, product_name, department_name, price, stock_quantity)
Values (4, "crockpot", "kitchen", 15.00, 2);

insert into products (id, product_name, department_name, price, stock_quantity)
Values (5, "toaster", "kitchen", 10.00, 30);
