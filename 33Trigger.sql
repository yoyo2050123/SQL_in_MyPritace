--Ĳ�o�{�� Trigger
--�P�w�s�{�Ǥ@�ˬO�@�ӹw���g�n���{��
--�����L�k�����I�s����A�ӬO�b�Y�Ӯɾ��I�|�ۤvĲ�o����
--�@��O�Φb��Y�Ӹ�ƪ�Inert�BUpdate�BDelete ����i��Ĳ�o

--�b����Insert�BUpdate�BDelete�o�T�ط|���Ƴy�����ܪ�DML��
--�q����즨�\commit�A�����|�g�L�@�s���K���ˬd�A�u�O�ڭ̬ݤ����Ӥw



--�إ߳f�B���q��ƪ�Trigger,�Ψ�Ū�XInserted
create trigger getInsertedTable on �f�B���q
after insert
as 
begin
	select* from inserted
end

insert into �f�B���q(�f�B���q�s��,�f�B���q�W��,�q��) values(13,'���_�f�B���q','(08)-8188128')






create trigger getUpdateDateTable on �Ȥ�
after update
as 
begin
	select '�s��',* from inserted
	union all
	select '�ª�',* from deleted
end


update �Ȥ�
set �s���H='X����',�s���H¾��='���H�h'
where �Ȥ�s��='BLAUS'