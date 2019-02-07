DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

-- CREATE TABLE products (
-- Food VARCHAR(50) NOT NULL,
-- score INTEGER(10)
-- );



CREATE TABLE products (
item_id INTEGER NOT NULL AUTO_INCREMENT,
product_name VARCHAR (100) NOT NULL,
department_name VARCHAR(100) NOT NULL,
price INTEGER (12) NOT NULL,
stock_quantity integer(10) NOT NULL,
product_sales INTEGER (12) NOT NULL DEFAULT 0,
PRIMARY KEY (item_id)

);

insert into products (product_name, department_name, price, stock_quantity)
Values ("snowboard", "sports", 250, 20);


insert into products (product_name, department_name, price, stock_quantity)
Values ("baeball", "sports", 20, 30);


insert into products (product_name, department_name, price, stock_quantity)
Values ("airfrier", "kitchen", 80, 15);


insert into products (product_name, department_name, price, stock_quantity)
Values ("crockpot", "kitchen", 15, 12);

insert into products (product_name, department_name, price, stock_quantity)
Values (
    "toaster", "kitchen", 10, 30);

insert into products (product_name, department_name, price, stock_quantity)
Values ("ski poles", "sports", 80, 50);


insert into products (product_name, department_name, price, stock_quantity)
Values ("basketball", "sports", 40, 40);


insert into products (product_name, department_name, price, stock_quantity)
Values ("cake plate", "kitchen", 15, 20);


insert into products (product_name, department_name, price, stock_quantity)
Values ("coffee mug", "kitchen", 16, 100);

insert into products (product_name, department_name, price, stock_quantity)
Values ("coffee maker", "kitchen", 175, 60);

CREATE TABLE departments (
	department_id INTEGER (11) AUTO_INCREMENT NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    over_head_costs INTEGER(11) NOT NULL,
    PRIMARY KEY (department_id)
);

INSERT INTO departments (department_name, over_head_costs)
VALUES ("kitchen", 9000);

INSERT INTO departments (department_name, over_head_costs)
VALUES ("sports", 30000);
