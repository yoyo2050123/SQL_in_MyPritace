use [Northwind]


--�Ĥ@����
--�Ĥ@�D
select * 
from Employees
where HireDate >= '1993/1/1'

--�ĤG�D
select *
from Orders
where ShipPostalCode in ('44087','05022','82520')

--�ĤT�D
select top 6 *
from Products
order by UnitsInStock desc

--�ĥ|�D

select *
from Orders
where ShippedDate is null;

--�Ĥ��D
select *
from OrderDetails
where  Quantity BETWEEN 20 and 40
order by Quantity;

--�ĤG����
--�Ĥ@�D
select avg(UnitPrice) as �������
from Products
where CategoryID in ('2')
--�Ҧ����檺����������n��group by

--�ĤG�D
select *
from Products
where UnitPrice < ReorderLevel and UnitsOnOrder = ('0')
--�ĤT�D
with over5products as (
select OrderID
from OrderDetails 
group by OrderID
having COUNT(*) >=5
)
select *
from OrderDetails as a
where OrderID in (select OrderID from over5products)

select OrderID, count(OrderID) as �X�ز��~
from OrderDetails
group by OrderID
having count(*) >=5 

--�ĥ|�D
select OrderID,ProductID,UnitPrice, Quantity,Discount,(UnitPrice*Quantity) * (1 - Discount) as ����p�p
from OrderDetails
where OrderID in('10263')

--�Ĥ��D
select SupplierID as �t�ӽs�� , count(*) as ���ѤF�X�˲��~
from Products
group by SupplierID;

--�Ĥ��D

select ProductID , avg(UnitPrice) as �������, avg(Quantity) as �����P��ƶq
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


select DeptID, count(DeptID) as �A��t���X�Ӿǥ�������
from tStudent
group by DeptID
having count(DeptID) >= 2;

--���ȤG
--�Ĥ@�D
use Northwind
select o.OrderID as �q�渹�X,
			c.CategoryName,
			p.ProductName,
			p.UnitPrice,
			p.ProductID,
			od.Quantity,
			od.Discount,round((p.UnitPrice*od.Quantity) * (1 - od.Discount),0) as ����p�p
from Products as p
inner join Suppliers as s on p.SupplierID= s.SupplierID
inner join Categories as c on c.CategoryID= p.CategoryID
inner join OrderDetails as od on od.ProductID= p.ProductID
inner join Orders as o on o.OrderID = od.OrderID
inner join Employees as emp on emp.EmployeeID = o.EmployeeID
inner join Shippers as ship on ship.ShipperID = s.SupplierID
inner join Customers as cust on cust.CustomerID = o.CustomerID
where (o.OrderDate between  '1997-7-01' and '1997-7-31') and ship.CompanyName = 'United Package'
 









	