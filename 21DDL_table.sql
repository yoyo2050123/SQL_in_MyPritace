--�إ߸�ƪ�

--���~��ƪ�
create table [Product](
	ProductID nchar(5) not null primary key,
	ProductName nvarchar(40) not null,
	Price money not null check(Price>=0),
	[Description] nvarchar(200),
	Picture  nvarchar(12) not null,
	CreatedDate datetime not null default getdate()
	

)

create table [Member](
	MemberID nchar(6) not null primary key,
	[Name] nvarchar(30) not null,
	Gender bit not null ,
	MemberPoint int not null default 0,
	Account nvarchar(12) not null  UNIQUE,
	[Password]  nvarchar(12) not null ,
	CreatedDate datetime not null default getdate()
	

)

--�q���ƪ�
create table [Order](
	OrderID nchar(12) not null primary key,  --colume level
	OrderDate datetime not null default getdate(),
	MemberID nchar(6) not null,
	ContactName nvarchar(30) not null,
	ContactAddress nvarchar(100) not null,
	foreign key(MemberID) references [Member](MemberID)  --table level

)
--�q����Ӹ�ƪ�
create table [OrderDetail](
	OrderID nchar(12) not null ,  --colume level
	ProductID  nchar(5) not null default getdate(),
	Qty  int not null default 1,
	Price  money not null check(Price>=0),
	primary key (OrderID,ProductID),
	foreign key(OrderID) references [Order](OrderID)


)
--���~���O��ƪ�
create table Category(
	CateID nchar(2) not null primary key,
	CateName nvarchar(20) not null
)