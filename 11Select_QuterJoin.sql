--�~���X�֬d��

select * 
from �q�f�D�� as o inner join ���u as e on o.���u�s��=e.���u�s��

select distinct ���u�s��
from �q�f�D��
order by ���u�s��

select ���u�s��
from ���u
--��X�q���B�z�q�檺���u���
select e.*
from �q�f�D�� as o right join ���u as e on o.���u�s��=e.���u�s��
where o.�q�渹�X is null


--��X�q�U�L�q�檺�Ȥ���
select c.*
from �q�f�D�� as o right join �Ȥ� as c on o.�Ȥ�s��=c.�Ȥ�s��
where c.�Ȥ�s�� is null

--��X�q���Q�R�L���ӫ~���
select p.*
from ���~��� as p left outer join �q�f���� as od on p.���~�s��=od.���~�s��
where od.���~�s�� is null