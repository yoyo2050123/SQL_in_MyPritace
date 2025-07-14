--alter 修改資料表定義


--Product資料表中增加一個CateID欄位
alter table [Product]
	add CateID nchar(2) not null


--建立Product資料表與Category資料表之間的關聯
alter table [Product]
	add foreign key(CateID) references Category(CateID)


--建立OrderDetail資料表與Product資料表之間的關聯
alter table [OrderDetail]
	add foreign key(ProductID) references [Product](ProductID)


--假設在系統施做期間有需求變更,要將MemberPoint欄位刪除
--這時該用drop還是alter
alter table [Member]
	drop column MemberPoint
--當這個資料表變更執行時,將會出現相依性的錯誤
--在相依性未解除之間無法刪除 MemberPoint

--因此我們必須先移除 default constraint,再刪除 MemberPoint 欄位
alter table [Member]
	drop constraint DF__Member__MemberPo__619B8048


alter table [Member]
	drop column MemberPoint
