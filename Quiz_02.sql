use [Northwind]



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

SELECT name, physical_name
FROM sys.master_files
WHERE database_id = DB_ID('GoodStore');

create database MYDA;