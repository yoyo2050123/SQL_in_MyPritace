--��ƿz��

select * 
from �Ȥ�
where �s���H¾��='���ƪ�'

select *
from �Ȥ�
where ���q�W��='�@��'

select * 
from �Ȥ�
where �Ȥ�s��='AROUT' --�Ȥ�s�����j�p�g�����@��

-------------------------------------

--�d1994�~��¾�����u

select * 
from ���u
where ���Τ�� >= '1994/1/1'
--where year (���Τ��) >= '1994'--

--�d�߲��~�w�s�q��0�B���U�[�����

select * 
from ���~���
where �w�s�q=0 and ���A�P��=1

--�d�߲��~�w���s�q�p��10�����

select * 
from ���~���
where �w���s�q<10 

--�d�߭��ǲ��~���w�s�p��w���s�q

select * 
from ���~���
where �w�s�q<�w���s�q 

--�d�߭��ǲ��~�ݭn����

select * 
from ���~���
where �w�q�ʶq+�w�s�q<�w���s�q 

--�Ч�X �|���X�f ���q��
select * 
from �q�f�D��
where �e�f��� is null --null���y�k�O is null