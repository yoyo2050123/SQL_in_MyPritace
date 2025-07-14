--在【員工】資料表中找出所有女員工的資料記錄。
select *
from 員工
where 稱呼 in ('小姐')
--在【員工】資料表中找出所有在1968年(含)以後出生的資料記錄。
select * 
from 員工
where 出生日期 >= '1968/1/1'
--在【訂貨主檔】資料表找出送貨的城市為台北市及高雄市的資料記錄。
select *
from 訂貨主檔
where 送貨地址 like '%台北市%' or  送貨地址 like '%高雄市%' or  送貨地址 like '%臺北市%' 
--where 送貨地址 like '%台%北%市%' or  送貨地址 like '%高%雄%市%' or  送貨地址 like '%臺%北%市%'
--使用or會使資料效能降低
--在【產品資料】資料表中找出庫存量最多的前6名資料記錄。
select top 6 with ties *
from 產品資料
order by 庫存量 desc
--在【訂貨明細】資料表找出訂單號碼10847共包含哪些產品。
select 訂單號碼,產品編號
from 訂貨明細
where 訂單號碼 in ('10847')
--在【訂貨明細】資料表找出訂單中包含超過5種產品的資料記錄。
select 訂單號碼,COUNT(*) 下單產品種數
from 訂貨明細
group by 訂單號碼
having count(*)>=5
order by 下單產品種數

--計算【產品資料】資料表中類別號為2的產品資料平均單價。
select avg(單價) as 類別號為2平均單價
from 產品資料
where 類別編號 in('2')
--在【產品資料】資料表中找出庫存量小於安全存量，且尚未進行採購的產品資料記錄。
select *
from dbo.產品資料  as A
where A.已訂購量 = 0 and A.庫存量 < A.安全存量

--在【客戶】資料表中找出公司名稱包含「川」、「生」、「捷」、
--「天」、「中」、「社」、「材」、「業」、「立」等字的資料記錄。
select *
from dbo.客戶 as B 
where B.公司名稱 like '%川%' or B.公司名稱 like '%生%' or B.公司名稱 like '%捷%' or
B.公司名稱 like '%天%' or B.公司名稱 like '%中%' or B.公司名稱 like '%社%' or
B.公司名稱 like '%業%' or B.公司名稱 like '%立%' 
--where in like '%[川生捷天中社材業立]%'

--在適當的資料表中找出訂購產品數量介於20~30件的資料記錄。
select * 
from dbo.訂貨明細 as B
where 數量 between 20 and 30


--在【訂貨主檔】資料表中找出尚未有送貨日期的記錄資料。
select * 
from dbo.訂貨主檔 as A
where A.送貨日期 is null

--在【訂貨明細】資料表中顯示出訂單號碼10263所有產品的價格小計。
select round((單價*數量)*(1-折扣),1)  as 價格小計
from dbo.訂貨明細 as B
where B.訂單號碼 in ('10263')

--利用【產品資料】資料表資料，統計出每一個供應商各提供了幾樣產品。
select 供應商編號,count(*) as 供應產品數
from dbo.產品資料 as A
group by A.供應商編號

--利用【訂貨主檔】資料表資料，統計出每一位客戶被每一位員工所服務次數。
select X.客戶編號, X.員工編號,COUNT(*) 被服務次數
from dbo.訂貨主檔 as X
group by X.客戶編號, X.員工編號


--利用【訂貨明細】資料表資料，統計出各項商品的平均單價與平均銷售數量，
--並僅列出平均銷售數量大於10的資料，且將資料依產品編號由小到大排序。

select A.產品編號,
ROUND(AVG(A.單價),2) as 平均單價,
ROUND(AVG(A.數量),0) as 平均銷售數量
from dbo.訂貨明細 as A
group by a.產品編號
having AVG(A.數量) > 10
