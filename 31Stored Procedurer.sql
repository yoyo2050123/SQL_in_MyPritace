--預存程序 Stored Procedure

create Procedure getOrderListWithOtherData
as 
begin 

SELECT 供應商.供應商編號, 
客戶.客戶編號, 
員工.姓名,
員工.員工編號,
客戶.公司名稱,
供應商.地址
FROM              供應商 CROSS JOIN
                            客戶 CROSS JOIN
                            員工
   end

------------------
--執行預存程序
execute getOrderListWithOtherData
exec  getOrderListWithOtherData


--建立一個有參數的預存程序物件
--傳入訂單號碼，即可查詢該訂單資料

create proc getOrderListWithOtherDataByOrderID
	@oid char(5)
as
begin
	SELECT    訂貨主檔.訂單號碼, 客戶.公司名稱 AS 客戶名稱, 產品資料.產品 AS 品名, 訂貨明細.單價, 訂貨明細.數量, 
                            訂貨明細.折扣, 產品類別.類別名稱, 訂貨主檔.訂單日期, 訂貨主檔.要貨日期, 訂貨主檔.送貨日期, 員工.姓名,
							訂貨明細.單價*訂貨明細.數量*(1-訂貨明細.折扣) as 小計
	FROM     訂貨明細 INNER JOIN
                            訂貨主檔 ON 訂貨明細.訂單號碼 = 訂貨主檔.訂單號碼 INNER JOIN
                            產品資料 ON 訂貨明細.產品編號 = 產品資料.產品編號 INNER JOIN
                            客戶 ON 訂貨主檔.客戶編號 = 客戶.客戶編號 INNER JOIN
                            員工 ON 訂貨主檔.員工編號 = 員工.員工編號 INNER JOIN
                            產品類別 ON 產品資料.類別編號 = 產品類別.類別編號
	where 訂貨主檔.訂單號碼=@oid

end
----------------------------------------------------
exec getOrderListWithOtherDataByOrderID 10286