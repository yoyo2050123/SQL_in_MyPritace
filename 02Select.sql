--子句
--查詢哪些客戶下過訂單
select DISTINCT 客戶編號 --DISTINCT可以篩出重複的子句
from 訂貨主檔

--查詢哪些產品有被買過
select DISTINCT 產品編號  
from 訂貨明細
--那些員工有處理過訂單
select DISTINCT 員工編號   
from 訂貨主檔
-----------------------
--top子句
select top 10 *
from 訂貨明細

select top 10 percent * --百分比
from 訂貨明細

--order by排序資料
--遞增排序
select *
from 訂貨明細
order by 單價
--遞減排序
select *
from 訂貨明細
order by 單價 desc

select top 15 with ties * --沒有order by 不能使用 with ties
from 訂貨明細
order by 單價 desc

--印出供應商的電話以及傳真電話
select  電話+傳真電話 as 聯絡資料,供應商
from 供應商
