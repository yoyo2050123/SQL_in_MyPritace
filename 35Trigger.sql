select * from �Ȥ�

insert into �Ȥ�

insert into �Ȥ�
values('AAAAA',	'�G�t��~�������q'	,'���p�j'	,'�~��',	'�x�_�������F���|�q32��',	'12209',	'(02) 968-9652',	'(02) 968-9651')

insert into �Ȥ�
values('AAAAD',	'�G�t��~�������q'	,'?????'	,'�~��',	'�x�_�������F���|�q32��',	'12209',	'(02) 968-9652',	'(02) 968-9651')

--�s�W�Ȥ��Ʈ�,�Y�ӫȤ��Ƥw�s�b,�h�i���ƭק�(insert �� update)
create trigger add_CustermerIDCheck on �Ȥ�
instead of insert
as
begin
	--�p�G�o�{PK�s�b,�h����ƭק�,�_�h���s�W

	--�p�G�o�{PK�s�b

	declare @CID nchar(5)
	select @CID = �Ȥ�s�� from �Ȥ� 
	where �Ȥ�s��=(select �Ȥ�s�� from inserted )

	if @CID != ''   --�p�G�o�{PK�s�b
	begin
		update �Ȥ�
		set ���q�W��=inserted.���q�W��,�s���H=inserted.�s���H,
		�s���H¾��=inserted.�s���H¾��,�a�}=inserted.�a�},�l���ϸ�=inserted.�l���ϸ�,
		�q��=inserted.�q��,�ǯu�q��=inserted.�ǯu�q��
		from �Ȥ� inner join inserted on �Ȥ�.�Ȥ�s��=inserted.�Ȥ�s��
	end
	else  --�p�G�o�{PK���s�b
	begin
		--�i���Ʒs�W
		insert into �Ȥ� 
		select * from inserted
	end

end

insert into �Ȥ�
values('AAAAA',	'�G�t��~�������q'	,'��p�j'	,'�~��',	'�x�_�������F���|�q32��',	'12209',	'(02) 968-9652',	'(02) 968-9651')

insert into �Ȥ�
values('AAAAD',	'�G�t��~�������q'	,'Mrs.Chen'	,'�~��',	'�x�_�������F���|�q32��',	'12209',	'(02) 968-9652',	'(02) 968-9651')