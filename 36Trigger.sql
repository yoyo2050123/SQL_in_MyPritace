--DDL Trigger
--insert update delete ==>DML
--Create  alter  drop ==> DDL



--�ڭn��o�Ӹ�Ʈw�̩Ҧ��� table ���]�w����Ū
create trigger readOnlyTable on database
for drop_table, alter_table
as
begin
	rollback
	
end

drop table �Ȥ�2

--------------------------------------
--���θ�Ʈw Trigger
disable trigger readOnlyTable on database


--���θ�ƪ�W�� Trigger
disable trigger getUpdateDataTable on �Ȥ�

--�ҥθ�ƪ�W�� Trigger
enable trigger getUpdateDataTable on �Ȥ�





