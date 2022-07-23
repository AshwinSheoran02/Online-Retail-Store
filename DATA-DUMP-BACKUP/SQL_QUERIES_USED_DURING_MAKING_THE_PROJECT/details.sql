SELECT * FROM logintest.authentication_system;
use logintest;
create table user (
user_id int AUTO_INCREMENT , 
Login_Type varchar(50),
PhoneNumber varchar(50) Primary Key,
FOREIGN KEY (PhoneNumber) REFERENCES authentication_system(Phonenumber)

);



create table authentication_System
(
PhoneNumber Varchar(50) Primary Key Not Null,
Password Varchar(255) Not Null
);


select * from authentication_system;

select * from user;

Create table batch
(
Batch_ID varchar(30) NOT NULL,
DOM DATE NOT NULL,
DOE DATE ,
PRIMARY KEY (Batch_ID)
);

CREATE TABLE Product
(
  Product_ID int NOT NULL,
  Price FLOAT NOT NULL,
  Quantity INT NOT NULL,
  Type VARCHAR(30) NOT NULL,
  Category VARCHAR(30) NOT NULL,
  Brand VARCHAR(30) NOT NULL,
  Name VARCHAR(100) NOT NULL,
  Batch_ID VARCHAR(30) NOT NULL,
  Image varchar(255),
  PRIMARY KEY (Product_ID),
  FOREIGN KEY (Batch_ID) REFERENCES Batch(Batch_ID)
);

select * from product; 

CREATE TABLE Customer
(
PhoneNumber VARCHAR(50) NOT NULL,
 F_name VARCHAR(30) NOT NULL,
 L_name VARCHAR(30) NOT NULL,
 H_No VARCHAR(30) NOT NULL,
 Area VARCHAR(30) NOT NULL,
 State VARCHAR(30) NOT NULL,
 Pin VARCHAR(30) NOT NULL,
 PRIMARY KEY (PhoneNumber),
 FOREIGN KEY (PhoneNumber) REFERENCES User(PhoneNumber)
);

select * from customer;
select Cart_id from Cart where PhoneNumber = '001' limit 1 ;


insert into Batch(Batch_ID , DOM , DOE ) values('B000001' , '2022-02-17' , '2022-03-01');
insert into Batch(Batch_ID , DOM , DOE ) values('B000002' , '2022-02-18' , '2022-03-01');

insert into product values (1, 30 , 50 , 'Milk' , 'Dairy' , 'Amul' , 'Amul Tonned 1-Litre' , 'B000001' ,'./assets/products/001.jpg' );
insert into product values (2, 25 , 55 , 'Milk' , 'Dairy' , 'Amul' , 'Amul fullcream 1-Litre' , 'B000001' ,'./assets/products/002.jpg'  );
insert into product values (3, 25 , 55 , 'Milk' , 'Dairy' , 'Amul' , 'Amul Tonned 2-Litre' , 'B000001' ,'./assets/products/003.webp' );

alter table product modify  Product_ID int ;
alter table product rename column Quantity to Stock;

select * from product;


create table cart
(
Cart_id int AUTO_INCREMENT PRIMARY KEY, 
PhoneNumber varchar(50) not null, 
cart_status varchar(50),
foreign key (PhoneNumber) references Customer(PhoneNumber)
);


select * from Cart;
select * from customer;
select * from orders;

insert into Cart (PhoneNumber, cart_status) values ('009' , 'current');



select Cart_id from Cart where PhoneNumber = '003' limit 1 ;

create table added_to
(
quantity int not null,
Product_ID int NOT NULL,
cart_ID INT NOT NULL, 
primary key(Product_ID , cart_ID),
foreign key (product_ID) references Product(product_id),
foreign key (cart_ID) references Cart(cart_ID)

);
select * from added_to;
insert into added_to(quantity , product_ID , cart_ID) values( 5,'P00001' , 4);

SELECT * FROM product join added_to where product.product_id = added_to.Product_id;

CREATE VIEW VWPAB
AS
SELECT *
FROM PRODUCT  natural JOIN BATCH ;

select * from vwpab;

create view VWATP
AS 
SELECT *
from ADDED_TO NATURAL JOIN PRODUCT;

SELECT * FROM VWATP;

insert into authentication_system(PhoneNumber , Password ) values( '911','911'); 
insert into user ( login_type , PhoneNumber) values ( 'employee' , '911');

insert into authentication_system(PhoneNumber , Password ) values( '922','922'); 
insert into user ( login_type , PhoneNumber) values ( 'employee' , '922');

insert into authentication_system(PhoneNumber , Password ) values( '933','933'); 
insert into user ( login_type , PhoneNumber) values ( 'employee' , '933');

insert into authentication_system(PhoneNumber , Password ) values( '900','900'); 
insert into user ( login_type , PhoneNumber) values ( 'employee' , '900');

create table employee(
PhoneNumber varchar(50) Primary key , 
Emp_name varchar(50) , 
H_No Varchar(50) , 
Area varchar(200),
City varchar(200),
State varchar(200),
Pin varchar(100),
Foreign key (PhoneNumber) references User(PhoneNumber)
);

insert into employee(PhoneNumber , Emp_name , H_No , Area , City , State , Pin ) values ('900' ,'Ashwin','IIITD' ,'Ookhla' , 'Delhi','New Delhi' ,'110001'   );
insert into employee(PhoneNumber , Emp_name , H_No , Area , City , State , Pin ) values ('911' ,'Harsh','IIITD' ,'Ookhla' , 'Delhi','New Delhi' ,'110001'   );
insert into employee(PhoneNumber , Emp_name , H_No , Area , City , State , Pin ) values ('922' ,'Harshit','IIITD' ,'Ookhla' , 'Delhi','New Delhi' ,'110001'   );
insert into employee(PhoneNumber , Emp_name , H_No , Area , City , State , Pin ) values ('933' ,'Meghna','IIITD' ,'Ookhla' , 'Delhi','New Delhi' ,'110001'   );

select * from employee;

create table Coupons(
Code Varchar(100) Primary key,
Discount Float 
);
insert into coupons values('FLAT50' , 50);
insert into coupons values('FLAT100' , 100);
insert into coupons values ('FREE10' , 10);
insert into coupons values ('FREE2' , 2);
insert into coupons values ('' , 0);


select * from coupons;

create table orders(
Order_ID int AUTO_INCREMENT PRIMARY KEY,
Total_Cost float,
Order_Status Varchar(40),
Delivery_Date Date,
Order_date date,
Cart_ID int,
PhoneNumber Varchar(50),
Code varchar(40),
foreign key (Cart_ID) references Cart(Cart_ID),
foreign key (PhoneNumber) references Customer(PhoneNumber),
foreign key (Code) references Coupons(Code)
);

select * from orders;


create table payment(
Payment_ID int AUTO_INCREMENT PRIMARY KEY,
Payment_Type Varchar(40),
PhoneNumber Varchar(40),
Order_ID int,
foreign key (PhoneNumber) references Customer(PhoneNumber),
foreign key (Order_ID) references orders(Order_ID)
);

select * from payment;


create table Receipt(
Receipt_ID int AUTO_INCREMENT PRIMARY KEY,
Payment_date date ,
Final_cost float, 
PhoneNumber varchar(40) , 
Order_ID int,
foreign key (PhoneNumber) references Customer(PhoneNumber),
foreign key (Order_ID) references orders(Order_ID)
);

SELECT * FROM RECEIPT;

show tables;

select * from product;
update product set stock= 100 where product_id = 1;

DELIMITER //
CREATE PROCEDURE VIEWCART(PhoneNumberc varchar(30))
Begin
select * from CART where PhoneNumber = PhoneNumberc and Cart_status = "current";
end// 
DELIMITER ;

call viewcart('003');

select * from user;

DELIMITER //
CREATE PROCEDURE VIEWPROD(iproduct_id int)
begin
declare p_id int;
set p_id = iproduct_id;
select * from product where product_id = p_id;
end// 
DELIMITER ;

call viewprod(3);

DELIMITER //
CREATE PROCEDURE CHECKPROD(i int)
begin
declare j int;
set j = 0;
label: LOOP
    SET j = j +1;
select * from product where product_id = j;
IF j =i THEN
     LEAVE label;
    END IF;
 END LOOP label;
end// 
DELIMITER ;

call checkprod(3);

DELIMITER //
CREATE PROCEDURE VIEWALLPROD()
begin
select * from product;
end //
DELIMITER ;

call viewallprod();


create table Supplier(
Supplier_ID int AUTO_INCREMENT PRIMARY KEY,
Supplier_Name varchar(50),
Office_No varchar(30),
Building varchar(30),
Area varchar(30),
State varchar(30),
Pin varchar(30)
);
select * from Supplier;


INSERT INTO `supplier` VALUES (01,'Iyappan Co','A56','Embassy Centre','Andheri','Maharashtra','400053')
,(02,'Vision Agro Foods','229','Doshi Chambers','Niti Bagh','Delhi','110049')
,(03,'EKA International','C70','Tulsi Dham','Ghatkoper','Maharashtra','400606')
,(04,'Kamdhenu Foods','335','D-Mall','Uttam Nagar','Delhi','110059')
,(05,'Rahul Co','D78','Khidderpore','Howrah','West Bengal','700023')
,(06,'Vipro Walls','11','Pachpakhadi','Bandra','Maharashtra','400601')
,(07,'Swati Foods Co','17C','Sant Extension','Vadodara','Gujrat','390001')
,(08,'Hiren Traders','K34','Girgaon','Juhu','Maharashtra','400004')
,(09,'Rathna Foods','C55','Egmore Extensions','Adyar','Tamil Nadu','600008')
,(10,'Deluxe Mart','G69','Fragine buildings','Frazer Town','Karnataka','560054')
,(11,'GL Foods','D20','Nora Centre','Pahadganj','Delhi','110069')
,(12,'Rani Foods','T29','Goregaon Towers','Rajendra Nagar','Delhi','110029')
,(13,'HH Energy Pvt. Ltd.','445','Kashmira Centre','Andheri','Maharashtra','400001')
,(14,'Rahul Foods','12T','Misha Tower','Kolar','Karnataka','560012')
,(15,'Apley Co','T69','Shefali Buildings','Borivali','Maharashtra','400601')
,(16,'RaniRaj Foods','224','Pulkit Extension','Chandni Chowk','Delhi','110023')
,(17,'Deluxe Drinks','C89','Kismat Tower','Bandra','Maharashtra','400049')
,(18,'Forby Foods','14','Dawn Tower','Bhavnagar','Gujrat','390012')
,(19,'FL Milks','57','Fors Extension','Uttam_Nagar','Delhi','110059')
,(20,'Himalayan Traders','A41','Kailash Tower','Vadodara','Gujrat','390041')
,(21,'Himachal Co','V40','Geo Centre','Niti Bagh','Delhi','110031')
,(22,'Rashi Foods','112','Madhya Extension','Andheri','Maharashtra','400201')
,(23,'GHF Retail','W12','Hari Om Centre','Bandra','Maharashtra','400080')
,(24,'Tora Creations','B67','Patiala Enforce','Patalitha','Assam','783430')
,(25,'Harry Retails','GT1','Pahadi Buildings','Haldwani','Utrakhand','263139')
,(26,'Iyer Cosmetics','H56','Kailash Hub','Hisar','Haryana','125001')
,(27,'Kanchenjunga Traders','C90','Vaishali Tower','Darjeeling','West Bengal','390041')
,(28,'Suryasen Tradrers','444','Mithila_Building','Ayodhya','Uttar Pradesh','224001')
,(29,'Fossil Pvt. Ltd.','57','DLF Promenade Mall 3','Vasant Kunj Malls','Delhi','110070')
,(30,'Apple Inc.','19th Floor','Concorde Tower C','Bangalore','Karnataka','560001')
;


create table Stock_Order(
Order_Number int AUTO_INCREMENT PRIMARY KEY,
Product_ID int , 
Quantity int,
Date_Of_Stock_Order date,
PhoneNumber varchar(30),
Supplier_ID int,
Foreign Key (PhoneNumber) references Employee(PhoneNumber),
Foreign Key (Supplier_ID) references Supplier(Supplier_ID)
);

select * from stock_order;


DELIMITER //
CREATE PROCEDURE VIEWALLSUPP()
begin
select * from Supplier;
end //
DELIMITER ;

call viewallsupp();


create table supplies(
Supplier_ID int ,
Product_ID int  , 
Date_of_Supply date,
Order_Number int,
Primary Key (Supplier_ID , Product_ID ),
Foreign Key (Supplier_ID) references Supplier(Supplier_ID ),
Foreign Key (Product_ID) references Product(Product_ID ),
Foreign Key (Order_Number) references Stock_Order(order_Number )
);



select * from supplies;

DELIMITER //
CREATE PROCEDURE ADDSTK(iproduct_id int , istck int)
begin
declare p_id int;
declare nstck int;
set p_id = iproduct_id;
set nstck = istck;
update product set stock = stock + nstck  where Product_ID =p_id ;end// 
DELIMITER ;

call addstk(2 , 15);
select * from product;

DELIMITER //
CREATE PROCEDURE VIEWTDYRCPT()
begin

Select * from Receipt where Payment_date =  CURDATE();
end// 
DELIMITER ;

CALL VIEWTDYRCPT();

desc coupons;

select * from cart;

SELECT * FROM COUPONS;

select * from supplies;

create view vwreceipt
as
select *
from
product natural join added_to natural join orders natural join coupons;

select * from vwreceipt;

Select Name, Price, Quantity, Code, Discount FROM vwreceipt WHERE PhoneNumber= '9868139099' and Order_ID = ( Select Max(order_ID) from Orders where PhoneNumber= '9868139099'  )  ;

select * from Coupons;
