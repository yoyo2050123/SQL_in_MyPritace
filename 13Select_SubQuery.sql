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



--�d�ߤj�ث��x�_�o��Ȥ᪺�q����(�ΦX�֬d�߼g)
select o.* 
from �q�f�D�� as o inner join �Ȥ� as c
on o.�Ȥ�s��=c.�Ȥ�s��
where c.���q�W��='�j�ث��x�_'

------------------------------------------------------------------
--�Ьd�߭��ǰӫ~������j������ӫ~���������
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
--�ۧڦX��

select *
from ���~��� as p inner join ���~��� as p2
on p.���~�s��!=p2.���~�s��


select p.���~�s��, p.���~,p.���
from ���~��� as p inner join ���~��� as p2
on p.���~�s��!=p2.���~�s��
group by p.���~�s��, p.���~,p.���
having p.���>avg(p2.���)

select p.���~�s��, p.���~,p.���
from ���~��� as p , ���~��� as p2
group by p.���~�s��, p.���~,p.���
having p.���>avg(p2.���)

--cross join(���d��n�B��)
select p.���~�s��, p.���~,p.���
from ���~��� as p cross join ���~��� as p2
group by p.���~�s��, p.���~,p.���
having p.���>avg(p2.���)


--------------------------
--�d�߫Ȥ�q��R�L�ަ�
--�D�d�߫Ȥ�
--�O�q��
--�ߤ@�u���O�ަ�

--�Ȥ�U�q��
--�q��]�t�ӫ~
--�ӫ~���ӫ~�W��
select * from �Ȥ�
where �Ȥ�s�� in (select �Ȥ�s��	from �q�f�D��
where �q�渹�X in (select �q�渹�X  from �q�f����
where ���~�s��=(
select ���~�s�� from ���~���
where ���~='�ަ�')))

select distinct * from �Ȥ� as c
inner join �q�f�D�� as o on c.�Ȥ�s��=o.�Ȥ�s��
inner join �q�f���� as od on o.�q�渹�X=od.�q�渹�X
inner join ���~��� as p on od.���~�s��=p.���~�s��
where p.���~='�ަ�'

--���ǭ��u�B�z�L�Ȥ�W�٬�[���H�귽]���q��
select * from ���u
where ���u�s�� in (select distinct ���u�s�� from �q�f�D��
where �Ȥ�s�� in (select �Ȥ�s�� from �Ȥ�
where ���q�W��='���H�귽'))

--exists�B��l(�򥻤W�u�Φb�l�d��)
--�����Ӹ�ƶ��X�O�_�ۤ��s�b
--�d�߭��ǫȤ�U�L�q��
select * from �Ȥ� as c
where exists
(select * from �q�f�D�� as o where c.�Ȥ�s��=o.�Ȥ�s��)