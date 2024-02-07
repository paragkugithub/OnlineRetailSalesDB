--OnlineRetailSalesDB;

use OnlineRetailSalesDB;

create table customers4(customersid int primary key,customername varchar(100),email varchar(100),city varchar(100))
insert into customers4 values(101,'Ram Kulkarni','ram@gmail.com','Mumbai');
insert into customers4 values(102,'Anil Chavan','anil@gmail.com','Kolhapur');
insert into customers4 values(103,'Rohit Bajaj','rohit@gmail.com','Pune');
insert into customers4 values(104,'Yash Patil','yash@gmail.com','Satara');
select * from customers4;

create table products5(productid int primary key,productname varchar(100),category varchar(100),price decimal(10,2));
insert into products5 values(1,'Laptop','Electronics',1000);
insert into products5 values(2,'Smartphone','Electronics',800);
insert into products5 values(3,'Headphones','Electronics',100);
insert into products5 values(4,'T-Shirt','Clothing',20);
insert into products5 values(5,'Jeans','clothing',50);
select * from products5; 

create table orders6(orderid int primary key,customersid int,orderdate date,totalamount decimal(10,2));
insert into orders6 values(1,101,'2024-01-05',150.00);
insert into orders6 values(2,102,'2024-01-10',200.00);
insert into orders6 values(3,103,'2024-01-15',100.00);
insert into orders6 values(4,101,'2024-02-01',300.00);
insert into orders6 values(5,104,'2024-02-05',250.00);
select * from orders6;

create table ordersdetails7(orderdetailid int primary key,orderid int,productid int,quantity int,unitprice decimal(10,2));
insert into ordersdetails7 values(1,1,1,1,1000);
insert into ordersdetails7 values(2,2,2,2,800);
insert into ordersdetails7 values(3,3,3,3,100);
insert into ordersdetails7 values(4,4,1,1,1000);
insert into ordersdetails7 values(5,5,4,5,20);
select * from ordersdetails7;

-------------------------------------------------------------------------------------------------------------------------------


---1) Calculate Total Sales Revenue-

select sum(totalamount) as totalsalesrevenue from orders6;

---2) Calculate Max Order Value-

select max(totalamount) as maxordervalue from orders6;

---3) Calculate List of Customers and their total Orders-

select c4.customersid,c4.customername,count(o.orderid)as totalorders from customers4 c4 join orders6 o on c4.customersid=o.customersid  group by c4.customersid,c4.customername;

---4) Find orders with total amount greater than a certain value-

select * from orders6 where totalamount>200;

---5) Retrive orders placed on specific date-

select * from orders6 where orderdate= '2024-02-01';





