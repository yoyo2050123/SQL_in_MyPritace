--�p�G�q��ӫ~�q�ʼƶq�j��Ӱӫ~���w�s�q�ΰ���j��q��,�h�q�ʥ���
--�Y�q�ʦ��\,�h�����q�ʪ��w�s�q
--�Ȥ�b�U�q���,�|�ʥΨ�T�i��ƪ�-�q�f�D�ɡB�q�f���ӡB���~���

--���]�q�f�D�ɷs�W���\,�q�f���ӷs�W���\,���Y�@���~�q�ʼƶq�j��w�s�q(�ݱ��Q��ĳ�D)


create trigger checkOrderQtyPrice on �q�f����
after insert
as
begin
	--1.�G�q��ӫ~�q�ʼƶq�j��Ӱӫ~���w�s�q�ΰ���j��q��,�h�q�ʥ���
	--2.�Y�q�ʦ��\,�h�����q�ʪ��w�s�q


		declare @OrderProductID int, @OrderProductPrice money, @OrderProductQty int
		declare @ProductID int, @ProductPrice money, @ProductQty int

		select  @OrderProductID=���~�s��,@OrderProductPrice=���,@OrderProductQty=�ƶq
		from inserted   --���o�Y�N�n�g�J�q�f���Ӫ����

		select  @ProductID=���~�s��,@ProductPrice=���,@ProductQty=�w�s�q
		from ���~��� where ���~�s��=@OrderProductID


		
	if @OrderProductPrice>@ProductPrice
		rollback
	else if @OrderProductQty>@ProductQty
		rollback
	else --�������~��ƪ��w�s�q
		update ���~���
		set �w�s�q=�w�s�q-@OrderProductQty
		where ���~�s��=@OrderProductID

end


insert into �q�f���� values(10248, 1,18,10,0)