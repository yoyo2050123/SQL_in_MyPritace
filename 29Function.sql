--����:�b�s�W�q��ɡA�ϥΪ̤���ۤv��J�q��s���A�]�������Ѩt�Φۤv���ӽs���W�h���ͤ@�ӭq��s��
--�ڭ̨M�w�b��Ʈw�ݫإߤ@�Ө�ơA�Ϩ�b�s�W�q���Ʈɯ�z�L��Ƨ��@�ӭq��s��

--�إߤ@�ӦW���ugetOrderID�v�����
--��\�ର�s�W�q��ɥi�I�s����Ʀ۰ʨ��o�@�ӷs���q��s��
--�q��s�����s�X�W�h���q���Ѥ���褸�~���(8�X)+4�X�y����
--(�Ҧp202412212015��2024/12/12��2015�i�q�檺�s��)
--(�Ҧp202506270001��2025/6/27��1�i�q�檺�s��)


create function getOrderID()
	returns nchar(12)
as
begin
	--���o��Ѥ���~���(8�X)
	declare @today char(8) = convert(varchar, getdate(), 112)


	--�|�X�y�������ͳW�h

	--1.�줵�ѳ̫�@�i�q�渹�X�[1
	declare @lastID nchar(12) , @newID nchar(12)

	select top 1 @lastID=OrderID
	from [Order]
	where convert(varchar, OrderDate, 112) = @today
	order by OrderDate desc

	--2.�Y���ѨS������q��h��'0001'
	if @lastID is null
		set @newID=@today+'0001'  --���Ѫ��Ĥ@�i�q��
	else
		set @newID = cast( cast(@lastID as bigint)+1  as nchar)
	
	

	return @newID
end


--����
print dbo.getOrderID()


insert into [order] values( dbo.getOrderID(),getdate(),'M00001','�i�p�^','adfdfdf')