--alter �ק��ƪ�w�q


--Product��ƪ��W�[�@��CateID���
alter table [Product]
	add CateID nchar(2) not null


--�إ�Product��ƪ�PCategory��ƪ��������p
alter table [Product]
	add foreign key(CateID) references Category(CateID)


--�إ�OrderDetail��ƪ�PProduct��ƪ��������p
alter table [OrderDetail]
	add foreign key(ProductID) references [Product](ProductID)


--���]�b�t�άI���������ݨD�ܧ�,�n�NMemberPoint���R��
--�o�ɸӥ�drop�٬Oalter
alter table [Member]
	drop column MemberPoint
--��o�Ӹ�ƪ��ܧ�����,�N�|�X�{�̩ۨʪ����~
--�b�̩ۨʥ��Ѱ������L�k�R�� MemberPoint

--�]���ڭ̥��������� default constraint,�A�R�� MemberPoint ���
alter table [Member]
	drop constraint DF__Member__MemberPo__619B8048


alter table [Member]
	drop column MemberPoint
