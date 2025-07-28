use [Northwind]


--第一部分
--第一題
select * 
from Employees
where HireDate >= '1993/1/1'

--第二題
select *
from Orders
where ShipPostalCode in ('44087','05022','82520')

--第三題
select top 6 *
from Products
order by UnitsInStock desc

--第四題

select *
from Orders
where ShippedDate is null;

--第五題
select *
from OrderDetails
where  Quantity BETWEEN 20 and 40
order by Quantity;

--第二部分
--第一題
select avg(UnitPrice) as 平均單價
from Products
where CategoryID in ('2')
--所有價格的平均單價不要用group by

--第二題
select *
from Products
where UnitPrice < ReorderLevel and UnitsOnOrder = ('0')
--第三題
with over5products as (
select OrderID
from OrderDetails 
group by OrderID
having COUNT(*) >=5
)
select *
from OrderDetails as a
where OrderID in (select OrderID from over5products)

select OrderID, count(OrderID) as 幾種產品
from OrderDetails
group by OrderID
having count(*) >=5 

--第四題
select OrderID,ProductID,UnitPrice, Quantity,Discount,(UnitPrice*Quantity) * (1 - Discount) as 價格小計
from OrderDetails
where OrderID in('10263')

--第五題
select SupplierID as 廠商編號 , count(*) as 提供了幾樣產品
from Products
group by SupplierID;

--第六題

select ProductID , avg(UnitPrice) as 平均單價, avg(Quantity) as 平均銷售數量
from OrderDetails
group by ProductID
having avg(Quantity) > 10
order by ProductID

----------------------------------
select *
from OrderDetails as od

use dbStudents
go
select stu.fName,stu.fEmail,stu.fScore,dp.DeptName
from tStudent as stu
inner join Department as dp
on stu.DeptID = dp.DeptID
inner join tStudent as kk
on dp.DeptID= kk.DeptID

select * 
from tStudent as stu 
where DeptID in (
select DeptID
from Department as dp
where stu.DeptID = dp.DeptID) 


select DeptID, count(DeptID) as 你科系有幾個學生痾痾痾
from tStudent
group by DeptID
having count(DeptID) >= 2;

--任務二
--第一題
use Northwind
select o.OrderID as 訂單號碼,
			c.CategoryName as 產品類別名稱,
			p.ProductName as 產品名稱,
			p.UnitPrice as 產品訂購單價,
			p.ProductID,
			od.Quantity as 產品訂購數量,
			round((p.UnitPrice*od.Quantity) * (1 - od.Discount),0) as 產品價錢小計,
			cust.CustomerID as 客戶編號,
			cust.CompanyName as 客戶名稱,
			o.ShipName as 收貨人名字,
			o.OrderDate as 訂購日期,
			emp.LastName as 處理訂單員工的姓,
			emp.FirstName as 處理訂單員工的名,
			ship.CompanyName as 貨運公司,
			s.CompanyName as 供應商名稱
from Products as p
inner join Suppliers as s on p.SupplierID= s.SupplierID
inner join Categories as c on c.CategoryID= p.CategoryID
inner join OrderDetails as od on od.ProductID= p.ProductID
inner join Orders as o on o.OrderID = od.OrderID
inner join Employees as emp on emp.EmployeeID = o.EmployeeID
inner join Shippers as ship on ship.ShipperID = s.SupplierID
inner join Customers as cust on cust.CustomerID = o.CustomerID
where (o.OrderDate between  '1997-7-01' and '1997-7-31') and ship.CompanyName = 'United Package'

--任務二
--第二題
select * from Customers as c
WHERE exists 
(Select * 
from Orders as o
where o.CustomerID = c.CustomerID)

---任務二
---第三題

select EmployeeID, LastName,FirstName,Title,Extension,Notes
from Employees
where EmployeeID in(
select EmployeeID
from Orders)

---任務二
---第四題
--合併查詢
select Distinct
p.ProductID,
p.ProductName,
P.SupplierID,
P.CategoryID,
P.QuantityPerUnit,
P.UnitPrice,
P.UnitsInStock,
P.UnitsOnOrder,
P.ReorderLevel,
P.Discontinued
from OrderDetails as od
inner join Products as p on p.ProductID = od.ProductID
inner join Orders as o on o.OrderID=od.OrderID
where  o.OrderDate between '1998-01-01' and '1998-12-31' 
order by p.ProductID ASC


--子查詢
select *
from Products as p
where ProductID in 
(select od.ProductID   
from OrderDetails as od
where od.OrderID in (
select o.OrderID
from Orders as o
where o.OrderDate between '1998-01-01' and '1998-12-31' ))
order by p.ProductID ASC

---任務三
---第一題
create database [MySchool]
go
use [MySchool]
go
--任務三
--第二題
create table [Student](
stuID nchar(10) not null primary key,
StuName nvarchar(20) not null,
Tel nvarchar(20) not null,
[Address] nvarchar(100) null,
Birthday datetime null,
DeptID nchar(1) not null 
)

alter table [Student]
	add foreign key(DeptID) references Department(DeptID)
go

create table [Course](
CourseID nchar(5) not null primary key,
CourseName nvarchar(30) not null ,
Credit int not null default(0),
[Hour] int not null default(2),
DeptID nchar(1) not null ,
)
alter table [Course]
	add foreign key(DeptID) references Department(DeptID)
go

create table [SelectionDetail](
StuID nchar(10) not null ,
CourseID nchar(5) not null ,
[Year] int not null Default (Year(Getdate())),
Term tinyint not null,
Score int not null default(0),
primary key(StuID,CourseID)
)

alter table [SelectionDetail]
	add foreign key(StuID) references Student(StuID),
	 foreign key (CourseID) references Course(CourseID)
go


create table [Department](
DeptID nchar(1) not null primary key,
DeptName nvarchar(30) not null unique
)
alter table[Department]
add CONSTRAINT DpetID_UppercaseOnly
check (DeptID not like '%[^A-Z]%')

--任務四
create procedure InsertDeptmentData
 









	