--����:�b�s�W�q��ɡA�ϥΪ̤���ۤv��J�q��s���A�]�������Ѩt�Φۤv���ӽs���W�h���ͤ@�ӭq��s��
--�ڭ̨M�w�b��Ʈw�ݫإߤ@�Ө�ơA�Ϩ�b�s�W�q���Ʈɯ�z�L��Ƨ��@�ӭq��s��

--�إߤ@�ӦW���ugetOrderID�v�����
--��\�ର�s�W�q��ɥi�I�s����Ʀ۰ʨ��o�@�ӷs���q��s��
--�q��s�����s�X�W�h���q���Ѥ���褸�~���(8�X)+4�X�y����
--(�Ҧp202412212015��2024/12/12��2015�i�q�檺�s��)
--(�Ҧp202506270001��2025/6/27��1�i�q�檺�s��)

alter function getOrderID()
	returns nchar(8)
as 
begin 
	return convert(varchar,getdate(),111)
end
-----------------
print '�{�b�����渹�O:'+dbo.getOrderID()