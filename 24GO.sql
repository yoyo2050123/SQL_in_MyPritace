--�妸����

create database GoodStore
go

use GoodStore
go


--�إ߸�ƪ�

--���~��ƪ�
create table [Product](
	ProductID nchar(5) not null primary key,
	ProductName nvarchar(40) not null,
	Price money not null check(Price>=0),
	[Description] nvarchar(200),
	Picture nvarchar(12) not null,
	CreatedDate datetime not null default getdate(),
	
)
go

--�|����ƪ�
create table [Member](
	MemberID nchar(6) not null primary key,
	[Name] nvarchar(30) not null,
	Gender bit not null,
	MemberPoint  int not null default 0,
	Account nvarchar(12) not null unique,
	[Password] nvarchar(20) not null,
	CreatedDate datetime not null default getdate()
)
go


--�q���ƪ�
create table [Order](
	OrderID nchar(12) not null primary key,  --colume level
	OrderDate datetime not null default getdate(),
	MemberID nchar(6) not null,
	ContactName nvarchar(30) not null,
	ContactAddress nvarchar(100) not null,
	foreign key(MemberID) references [Member](MemberID)  --table level
)
go

--�q����Ӹ�ƪ�
create table OrderDetail(
	OrderID nchar(12) not null,
	ProductID nchar(5) not null,
	Qty int not null default 1,
	Price money not null check(Price>=0),
	primary key(OrderID, ProductID),
	foreign key(OrderID) references [Order](OrderID)

)
go

--���~���O��ƪ�
create table Category(
	CateID nchar(2) not null primary key,
	CateName nvarchar(20) not null
)
go


--alter �ק��ƪ�w�q

--�bProduct��Ƥ��W�[�@��CateID�����
alter table [Product]
	add CateID nchar(2) not null
go

--�إ�Product��ƪ�PCategory��ƪ��������p
alter table [Product]
	add foreign key(CateID) references Category(CateID)
go


--�إ�OrderDetail��ƪ�PProduct��ƪ��������p
alter table [OrderDetail]
	add foreign key(ProductID) references [Product](ProductID)
go




