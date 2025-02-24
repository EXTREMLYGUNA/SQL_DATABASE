create schema Guvi;
use Guvi;

create table users(
    id int unique not null auto_increment,
    name varchar(255) not null,
    email varchar(255) not null,
    mobile varchar(12),
    status boolean default true,
    createdDate timestamp default current_timestamp,
    primary key(id)
);
insert into users (name ,email, mobile) values 
('Guna','gunasekar@gmail.com','123456789'),
('Rajesh','Rajesh@gmail.com','123456789'),
('Sesha','Sesha@gmail.com','123456789'),
('Sathish','Sathish@gmail.com','123456789'),
('Mala','Mala@gmail.com','123456789');

select * from users;

create table Products(
id int unique not null auto_increment,
Name varchar(255),
Price float default 0.0,
Weight float default 0.0,
Quantity float default 0.0 ,
primary key (id)
);
insert into Products (Name,Price,Weight,Quantity) values
('Milk','19.00','115.00','1'),
('Parle-G','10.00','50.10','1'),
('Oil','25.00','150.08','1');
select * from Products;
-- drop table Products;

create table invoice(
id int unique not null auto_increment,
userId int,
productId int,
discount float default 0.0,
payment float default 0.0,
primary key (id),
foreign key (userId) references users(id),
foreign key (productId) references Products(id)
);
-- drop table invoice;
insert into invoice (userId,productId,discount) values 
(1,3,5),(2,1,10),(3,3,22),(2,2,12),(1,2,15);
select * from invoice;
select u.name as Customer, p.name as Product, p.Quantity, (p.Quantity*p.Price) as Total, 
(p.Price*(i.discount/100)) as DiscountAmount , ((p.Quantity*p.Price)-(p.Price*(i.discount/100))) as payment
from invoice i join users u on i.userId = u.id join Products p on p.id = i.productId;



