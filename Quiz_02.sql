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
			c.CategoryName,
			p.ProductName,
			p.UnitPrice,
			p.ProductID,
			od.Quantity,
			od.Discount,round((p.UnitPrice*od.Quantity) * (1 - od.Discount),0) as 價格小計
from Products as p
inner join Suppliers as s on p.SupplierID= s.SupplierID
inner join Categories as c on c.CategoryID= p.CategoryID
inner join OrderDetails as od on od.ProductID= p.ProductID
inner join Orders as o on o.OrderID = od.OrderID
inner join Employees as emp on emp.EmployeeID = o.EmployeeID
inner join Shippers as ship on ship.ShipperID = s.SupplierID
inner join Customers as cust on cust.CustomerID = o.CustomerID
where (o.OrderDate between  '1997-7-01' and '1997-7-31') and ship.CompanyName = 'United Package'
 









	