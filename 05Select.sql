--��Ʋέp
--�E�X���
--count()

select count(���u�s��) as ���u�H��
from ���u


select count(*) �q���`��
from �q�f����

select count(�e�f���) as  �w�X�f�q��ƶq
from �q�f�D��

--���X�f�q�浧��
select count(*) as �w�X�f�q��ƶq
from �q�f�D��
where �e�f��� is null

--sum()

select sum(�w�s�q) as �`�w�s�q
from ���~���

select * ,���*�ƶq*(1-�馩) as �p�p
from �q�f����

select �q�渹�X ,sum(���*�ƶq*(1-�馩)) as �p�p
from �q�f����
group by �q�渹�X

--avg()
select avg(���) as �������
from ���~���

--max()
select max(���) as �̰����
from ���~���

--min()
select min(���) as �̧C���
from ���~���

select sum(���) as ����`�M,avg(���) as �������,max(���) �̰����,
min(���) as �̧C���,count(*) ���~����
from ���~���


select ���O�s��, sum(���) as ����`�M,avg(���) as �������,max(���) �̰����,
min(���) as �̧C���,count(*) ���~����
from ���~���
group by ���O�s��