select 'Hello World!' as ���1

------------------------------------
--1.�d�ݯS�w���
select �Ȥ�s��,���q�W��,�q��
from �Ȥ�


--2.�����󪺸�ƿz��
select *
from �Ȥ�
where �s���H¾��='���ƪ�'


--3.��Ʋέp
select �s���H¾��, count(*) as �H��
from �Ȥ�
group by �s���H¾��

-----------------------------------------------------------------
--�򥻬d�ߦ�

select *
from �Ȥ�


select �Ȥ�s��,���q�W��,�s���H,�s���H¾��
from �Ȥ�

-------------------------------
--���O�W
select �Ȥ�s��,���q�W�� as �Ȥ�W��, �s���H+�s���H¾�� as ���f, �l���ϸ�+�a�} as �a�}
from �Ȥ�
-------------------
--�ƭȹB��

select �q�渹�X,���~�s��,��� as ���,�ƶq as �ʶR�q, ���*�ƶq*(1-�馩) as �p�p
from �q�f����

----------------------------------
--����ɶ��B��
select ���u�s��,�m�W,�X�ͤ��, datediff( year , �X�ͤ��  , getdate() ) as �~��,
 datediff( year , ���Τ��  , getdate() ) as �~��
from ���u

-----------------------------------------
select ���u�s��,�m�W,
 datediff( year , �X�ͤ��  , getdate() ) as �~��,
 datediff( year , ���Τ��  , getdate() ) as �~��,
 datediff( year , �X�ͤ��  , ���Τ�� ) as ��¾�ɦ~��
from ���u

