select 'Hello World!' as ���1

---------------------------------------
--1.�d�ݯS�w���
---�ƹ��ϥի���� �|�u����ϥժ����
select �Ȥ�s��,���q�W��,�q��
from �Ȥ�
--2.�����󪺸�ƿz��
select *
from �Ȥ�
where �s���H¾��='�~��' 

--3.��Ʋέp
select �s���H¾��,count(*) as �H�� 
from �Ȥ�
group by �s���H¾��

-------------------------------------
--�򥻬d�ߦ�

select * 
from �Ȥ�

select �Ȥ�s��,���q�W��,�s���H,�s���H¾��
from �Ȥ�

---------------------------------------------------
--���O�W

select �Ȥ�s��,���q�W�� as �Ȥ�W��, �s���H+�s���H¾�� as ���f
from �Ȥ�

---------------------
--�ƭȹB��
select �q�渹�X,���~�s��,��� as ���, �ƶq as �ʶR�q, ���*�ƶq*(1-�馩) as �p�p
from �q�f����

----------------------------------------------------
--����ɶ��p��
select ���u�s��,�m�W,�X�ͤ��,DATEDIFF(year,�X�ͤ��,GETDATE()) as �~��,
datediff(year , ���Τ��,getdate()) as �~��
from ���u

-----------------------------------------
--datediff���(�ɶ����,A���,B���)A�����B���
select ���u�s��,�m�W,
DATEDIFF(year,�X�ͤ��,GETDATE()) as �~��,
datediff(year , ���Τ��,getdate()) as �~��,
datediff(year , �X�ͤ��,���Τ��) as �~��
from ���u