--T-SQL �{���]�p

print 'Hello Wrold!!'

select '�A�n�@��' as aaa

select tb1.*
from (select 'Hello World' as aaa) as tb1
--�ܼ�
--1.�¶q���ܼ� 2.��ƪ���ܼ�
declare @MyName nvarchar(20) = 'Kutamono Kageru'

print @MyName

select @MyName
------------------------------

declare @Number int 
set @Number=456
select @Number=789

print @Number

--T-SQL�����j�p�g
print @nuMBer 
--------------------------------------

declare @EmpName nvarchar(20)

select @EmpName=�m�W
from ���u
where ���u�s��=1


print '���u���m�W�s'+@EmpName

---------------------------------------
declare @salary money =50000
print '�z���~���O'+ cast(@salary as varchar)

declare @birthday datetime = '2025-6-23'

print '�z���ͤ�O'+ convert( varchar , @birthday,111  )
-----------------------------------------------

declare @dDay datetime

select @dDay=�n�f���
from �q�f�D��
where �q�渹�X=10259

print '�W�q�檺�n�f����O'+ convert(varchar, @dDay, 111)


-------------------------------------------------------------

declare @myTable table(
	[name] nvarchar(30),
	birthday datetime,
	tel varchar(20),
	note nvarchar(max)
)

insert into @myTable values('���p��','2025-6-23','07-8878778','�����ܥi�R')

insert into @myTable
select �m�W,�X�ͤ��,�q�ܸ��X,���� from ���u

select * from @myTable