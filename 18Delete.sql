--�R�����
--Delete
--Delete�@���u���@�Ӹ�ƪ�
--���i�H�@���R��1~N�����

delete from �f�B���q
where �f�B���q�W��=10


delete from ���u
where ���u�s�� in (select ���u�s��
from �q�f�D��
group by ���u�s��
having count(*)>=100)


delete ���u
from �q�f�D�� as o right join ���u as e on o.���u�s��=e.���u�s��
where o.���u�s�� is null
