--�s�W Member ��Ʈ�,���ˬd�|���b��(Account)�O�_�s�b
--�]���N�s�W���覡�����w�s�{��
--�إߦbGoodStore DB��

create proc InsertMemberData
	@memID nchar(6), @name nvarchar(30),@gender bit,@memberPoint int,
	@account nvarchar(12), @password nvarchar(20)

as
begin

	--�N��Ƽg�J�e,���ˬd�|���b��(Account)�O�_�s�b

	declare @r nchar(6)
	select @r=MemberID from  [Member]  where Account=@account


	if @r is null
		insert into [Member] values(@memID,@name,@gender,@memberPoint,@account,@password,GETDATE() )
	else
		print '�|���b������'
end

--------
--�s�W�|����Ʈ�,���ε{���ݤ@�ߨϥθ�Ʈw�ݪ��w�s�{��

exec InsertMemberData 'M00002','test',0,0,'aaaaaaa','asdfj222'  --�i���\�s�W���

exec InsertMemberData 'M00003','test',0,0,'aaaaaaa','asdfj222'  --���|�s�W���



