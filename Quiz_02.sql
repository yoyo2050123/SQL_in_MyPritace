use [Northwind]



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

