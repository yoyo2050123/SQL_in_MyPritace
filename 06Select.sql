--group by

select ¾��
from ���u
group by ¾��

select distinct ¾��
from ���u

---------------------------------
--�έp���u��Ƥ��C�@��¾�٦U���h�֤H
select ¾��
from ���u

select count(*)
from ���u

select ¾��,count(*) ���u�H��
from ���u
group by ¾��

select �s���H¾��,count(*) �Ȥ�H��
from �Ȥ�
group by �s���H¾��

--�C�i�q��q�ʤF�X�ذӫ~(�q�渹�X�b�q����Ӥ��X�{������)
select �q�渹�X,count(*) �ӫ~������
from �q�f����
group by �q�渹�X

--�q���`�B
select �q�渹�X,round(sum(���*�ƶq*(1-�馩)),2) as �q���`�M
from �q�f����
group by �q�渹�X

--�C�X�q���`�B�̰����e�Q�����\

select top 10 with ties �q�渹�X,round( sum(���*�ƶq*(1-�馩)) , 2 )  as �q���`�B
from �q�f����
group by �q�渹�X
order by �q���`�B desc

---------------------------------------------------------------------
--�C�@��Ȥ�U�榸��
select �Ȥ�s��,count(*) as �U�榸��
from �q�f�D��
group by �Ȥ�s��

--���ǫȤ�U�榸�ƶW�L10��
--having 
select �Ȥ�s��,count(*) as �U�榸��
from �q�f�D��
group by �Ȥ�s��
having count(*)>10
order by �U�榸��

--�έp�C�@����u�B�z�q�檺����
select ���u�s�� ,count(*) �B�z�q�檺����
from �q�f�D��
group by ���u�s��
order by �B�z�q�檺���� desc

--�έp�C�@����u�B�z�C�@��Ȥ᪺�q�檺����
select ���u�s��,�Ȥ�s��,count(*) �B�z�q�檺����
from �q�f�D��
group by ���u�s��,�Ȥ�s��
order by �B�z�q�檺���� desc
-----------------------------------------
--��X�e10�W���P������ӫ~(�q�̦h)
select top 10 with ties ���~�s��, sum(�ƶq) as �P��q
from �q�f����
group by ���~�s��
order by �P��q desc


--��X�e10�W���P������ӫ~(��~�B)

select top 10 with ties ���~�s��,round( sum(���*�ƶq*(1-�馩)) , 2 ) as ��~�B
from �q�f����
group by ���~�s��
order by ��~�B desc



--���g����
--select
--from
--where
--group by
--having
--order by

--���涶��
--from 
--where
--group by
--having
--select
--order by
