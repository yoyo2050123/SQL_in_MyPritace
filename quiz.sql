--�b�i���u�j��ƪ���X�Ҧ��k���u����ưO���C
select *
from ���u
where �٩I in ('�p�j')
--�b�i���u�j��ƪ���X�Ҧ��b1968�~(�t)�H��X�ͪ���ưO���C
select * 
from ���u
where �X�ͤ�� >= '1968/1/1'
--�b�i�q�f�D�ɡj��ƪ��X�e�f���������x�_���ΰ���������ưO���C
select *
from �q�f�D��
where �e�f�a�} like '%�x�_��%' or  �e�f�a�} like '%������%' or  �e�f�a�} like '%�O�_��%' 
--where �e�f�a�} like '%�x%�_%��%' or  �e�f�a�} like '%��%��%��%' or  �e�f�a�} like '%�O%�_%��%'
--�ϥ�or�|�ϸ�Ʈį୰�C
--�b�i���~��ơj��ƪ���X�w�s�q�̦h���e6�W��ưO���C
select top 6 with ties *
from ���~���
order by �w�s�q desc
--�b�i�q�f���ӡj��ƪ��X�q�渹�X10847�@�]�t���ǲ��~�C
select �q�渹�X,���~�s��
from �q�f����
where �q�渹�X in ('10847')
--�b�i�q�f���ӡj��ƪ��X�q�椤�]�t�W�L5�ز��~����ưO���C
select �q�渹�X,COUNT(*) �U�沣�~�ؼ�
from �q�f����
group by �q�渹�X
having count(*)>=5
order by �U�沣�~�ؼ�

--�p��i���~��ơj��ƪ����O����2�����~��ƥ�������C
select avg(���) as ���O����2�������
from ���~���
where ���O�s�� in('2')
--�b�i���~��ơj��ƪ���X�w�s�q�p��w���s�q�A�B�|���i����ʪ����~��ưO���C
select *
from dbo.���~���  as A
where A.�w�q�ʶq = 0 and A.�w�s�q < A.�w���s�q

--�b�i�Ȥ�j��ƪ���X���q�W�٥]�t�u�t�v�B�u�͡v�B�u���v�B
--�u�ѡv�B�u���v�B�u���v�B�u���v�B�u�~�v�B�u�ߡv���r����ưO���C
select *
from dbo.�Ȥ� as B 
where B.���q�W�� like '%�t%' or B.���q�W�� like '%��%' or B.���q�W�� like '%��%' or
B.���q�W�� like '%��%' or B.���q�W�� like '%��%' or B.���q�W�� like '%��%' or
B.���q�W�� like '%�~%' or B.���q�W�� like '%��%' 
--where in like '%[�t�ͱ��Ѥ������~��]%'

--�b�A����ƪ���X�q�ʲ��~�ƶq����20~30�󪺸�ưO���C
select * 
from dbo.�q�f���� as B
where �ƶq between 20 and 30


--�b�i�q�f�D�ɡj��ƪ���X�|�����e�f������O����ơC
select * 
from dbo.�q�f�D�� as A
where A.�e�f��� is null

--�b�i�q�f���ӡj��ƪ���ܥX�q�渹�X10263�Ҧ����~������p�p�C
select round((���*�ƶq)*(1-�馩),1)  as ����p�p
from dbo.�q�f���� as B
where B.�q�渹�X in ('10263')

--�Q�Ρi���~��ơj��ƪ��ơA�έp�X�C�@�Ө����ӦU���ѤF�X�˲��~�C
select �����ӽs��,count(*) as �������~��
from dbo.���~��� as A
group by A.�����ӽs��

--�Q�Ρi�q�f�D�ɡj��ƪ��ơA�έp�X�C�@��Ȥ�Q�C�@����u�ҪA�Ȧ��ơC
select X.�Ȥ�s��, X.���u�s��,COUNT(*) �Q�A�Ȧ���
from dbo.�q�f�D�� as X
group by X.�Ȥ�s��, X.���u�s��


--�Q�Ρi�q�f���ӡj��ƪ��ơA�έp�X�U���ӫ~����������P�����P��ƶq�A
--�öȦC�X�����P��ƶq�j��10����ơA�B�N��ƨ̲��~�s���Ѥp��j�ƧǡC

select A.���~�s��,
ROUND(AVG(A.���),2) as �������,
ROUND(AVG(A.�ƶq),0) as �����P��ƶq
from dbo.�q�f���� as A
group by a.���~�s��
having AVG(A.�ƶq) > 10
