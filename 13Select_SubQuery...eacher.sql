--�l�d��(Sub Query)
--�d�ߪ������~���䦳��

--�d�ߤj�ث��x�_�o��Ȥ᪺�q����
select * from �q�f�D��
where �Ȥ�s��='�ڤ����D�Ȥ�s��'

--���z�L�Ȥ��ƪ�,�Q�ΫȤ�W�٬d��Ȥ�s��
select �Ȥ�s�� from �Ȥ�
where ���q�W��='�j�ث��x�_'


--�ϥΤl�d��
select * from �q�f�D��
where �Ȥ�s��=(select �Ȥ�s�� from �Ȥ�
where ���q�W��='�j�ث��x�_')


--�d�߼B�Ѥ��o����u�B�z�L���Ҧ��q����
select * from �q�f�D��
where ���u�s��='�ڤ����D�B�Ѥ������u�s��'


--���z�L���u��ƪ�,�Q�έ��u�m�W�d����u�s��
select ���u�s�� from ���u
where �m�W='�B�Ѥ�'


select * from �q�f�D��
where ���u�s��=(select ���u�s�� from ���u
where �m�W='�B�Ѥ�')

--�d�߼B�Ѥ��o����u�B�z�L���Ҧ��q����(�ΦX�֬d�߼g)
select o.*
from �q�f�D�� as o inner join ���u as e
on o.���u�s��=e.���u�s��
where e.�m�W='�B�Ѥ�'

--�d�ߤj�ث��x�_�o��Ȥ᪺�Ҧ��q����(�ΦX�֬d�߼g)

select o.*
from �q�f�D�� as o inner join �Ȥ� as c
on o.�Ȥ�s��=c.�Ȥ�s��
where c.���q�W��='�j�ث��x�_'
----------------------------------------------------
--�Ьd�߭��ǰӫ~������j�󥭧����
select avg(���)
from ���~���

select *
from ���~���
where ���>28.8663


select *
from ���~���
where ���>(select avg(���)
from ���~���)


--�X�֬d�ߪ��g�k