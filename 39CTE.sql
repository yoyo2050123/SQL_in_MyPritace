
--�l�d��
select *
from 
(SELECT    �q�f�D��.�q�渹�X, �Ȥ�.���q�W�� AS �Ȥ�W��, ���~���.���~ AS �~�W, �q�f����.���, �q�f����.�ƶq, 
                            �q�f����.�馩, ���~���O.���O�W��, �q�f�D��.�q����, �q�f�D��.�n�f���, �q�f�D��.�e�f���, ���u.�m�W,
							�q�f����.���*�q�f����.�ƶq*(1-�q�f����.�馩) as �p�p
FROM              �q�f���� INNER JOIN
                            �q�f�D�� ON �q�f����.�q�渹�X = �q�f�D��.�q�渹�X INNER JOIN
                            ���~��� ON �q�f����.���~�s�� = ���~���.���~�s�� INNER JOIN
                            �Ȥ� ON �q�f�D��.�Ȥ�s�� = �Ȥ�.�Ȥ�s�� INNER JOIN
                            ���u ON �q�f�D��.���u�s�� = ���u.���u�s�� INNER JOIN
                            ���~���O ON ���~���.���O�s�� = ���~���O.���O�s��) as a
--CTE�d�ߦ�
with a
as
(SELECT    �q�f�D��.�q�渹�X, �Ȥ�.���q�W�� AS �Ȥ�W��, ���~���.���~ AS �~�W, �q�f����.���, �q�f����.�ƶq, 
                            �q�f����.�馩, ���~���O.���O�W��, �q�f�D��.�q����, �q�f�D��.�n�f���, �q�f�D��.�e�f���, ���u.�m�W,
							�q�f����.���*�q�f����.�ƶq*(1-�q�f����.�馩) as �p�p
FROM              �q�f���� INNER JOIN
                            �q�f�D�� ON �q�f����.�q�渹�X = �q�f�D��.�q�渹�X INNER JOIN
                            ���~��� ON �q�f����.���~�s�� = ���~���.���~�s�� INNER JOIN
                            �Ȥ� ON �q�f�D��.�Ȥ�s�� = �Ȥ�.�Ȥ�s�� INNER JOIN
                            ���u ON �q�f�D��.���u�s�� = ���u.���u�s�� INNER JOIN
                            ���~���O ON ���~���.���O�s�� = ���~���O.���O�s��)

select * from a


---------------------------------------------------

--���o�����g�k(�]���ڤ����D�`���h��,�ҥH�ڤ����D�n�g�X�h�l�d��)
select ���u�s��,�m�W,4 as Level
from ���u
where �D�� in
(select ���u�s��
from ���u
where �D�� in (
select ���u�s��
from ���u
where �D�� =(
select ���u�s��
from ���u
where �D�� is null)))
union all



select ���u�s��,�m�W,3 as Level
from ���u
where �D�� in (
select ���u�s��
from ���u
where �D�� =(
select ���u�s��
from ���u
where �D�� is null))
union all

select ���u�s��,�m�W,2 as Level
from ���u
where �D�� =(
select ���u�s��
from ���u
where �D�� is null)
union all

select ���u�s��,�m�W,1 as Level
from ���u
where �D�� is null

--CTE���Ѱʧ@
select ���u�s��,�m�W,1 as ���h
from ���u
where �D�� is null
union all
select ���u�s��,�m�W,2 as Level
from ���u
where �D�� =(
select ���u�s��
from ���u
where �D�� is null)


--CTE���j
with getLevelTable
as
(select ���u�s��,�m�W,1 as ���h from ���u where �D�� is null
union all
select ���u.���u�s��,���u.�m�W,���h+1 as Level 
from ���u join getLevelTable on ���u.�D��=getLevelTable.���u�s��)

select * from getLevelTable



create view view_getLevelTable
as
with getLevelTable
as
(select ���u�s��,�m�W,1 as ���h from ���u where �D�� is null
union all
select ���u.���u�s��,���u.�m�W,���h+1 as Level 
from ���u join getLevelTable on ���u.�D��=getLevelTable.���u�s��)

select * from getLevelTable


select * from view_getLevelTable
where ���h=3

