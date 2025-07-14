--集合運算
--聯集 union, 交集 interset, 差集 except

select 供應商 from 供應商
union 
select 公司名稱 from 客戶

select 供應商 from 供應商
union all --all就是把兩個資料表加再一起 不做任何運算
select 公司名稱 from 客戶

select 供應商 from 供應商
intersect 
select 公司名稱 from 客戶

select 供應商 from 供應商
except
select 公司名稱 from 客戶


select 公司名稱 from 客戶
except
select 供應商  from 供應商