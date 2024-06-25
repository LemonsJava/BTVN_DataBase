USE techmaster;
SET SQL_SAFE_UPDATES = 0;
create table Product (
product_id int,
product_name varchar(25),
price double,
quantily int
);
insert into Product (product_id, product_name, price, quantily)
values  (1, "Laptop", "1.0", "1"),
		(2, "Iphone", "2.0", "2"),
        (3, "Ipad", "3.0", "3"),
        (4, "Airpods", "4.0", "4"),
        (5, "Watch", "5.0", "5"),
        (6, "PC", "6.0", "6"),
        (7, "Camera", "7.0", "7"),
        (8, "Case", "8.0", "8"),
        (9, "Monitor", "9.0", "9"),
        (10, "Mouse", "10.0", "10");
alter table Product
add description varchar(50);
update Product
set price = 99 where product_id = 1;
update Product
set price = 2.2 where product_id = 2;