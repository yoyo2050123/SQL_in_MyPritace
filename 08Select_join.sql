select * 
from �q�f����

select *
from ���~���

select *
from ���~���O

select *
from ������

select *
from �q�f�D��

--�����X�ֹB��
select od.�q�渹�X,od.���~�s��,c.���O�W��,c.����,p.���~,od.��� as ���,
p.���  as �w��,(p.���-od.���) as ���t, (p.���-od.���)*od.�ƶq as ���t�p�p,
s.������,s.�s���H,s.�s���H¾��,o.���f�H,o.�q����,cu.���q�W��,e.�m�W,t.�f�B���q�W��
from �q�f���� as od 
inner join ���~��� as p on od.���~�s��=p.���~�s��
inner join ���~���O as c on p.���O�s��=c.���O�s��
inner join ������ as s on s.�����ӽs��=p.�����ӽs��
inner join �q�f�D�� as o on od.�q�渹�X=o.�q�渹�X
inner join �Ȥ� as cu on cu.�Ȥ�s��=o.�Ȥ�s��
inner join ���u     as e on e.���u�s��=o.���u�s��
inner join �f�B���q as t on t.�f�B���q�s��=o.�e�f�覡
where o.�q���� between '1996-7-1' and '1996-12-31'

select *
from �q�f���� as od 
inner join ���~��� as p on od.���~�s��=p.���~�s��
inner join ���~���O as c on p.���O�s��=c.���O�s��
inner join ������   as s on s.�����ӽs��=p.�����ӽs��
inner join �q�f�D�� as o on od.�q�渹�X=o.�q�渹�X
inner join �Ȥ�     as cu on cu.�Ȥ�s��=o.�Ȥ�s��
inner join ���u     as e on e.���u�s��=o.���u�s��
inner join �f�B���q as t on t.�f�B���q�s��=o.�e�f�覡


-----------------------------------------------------------------------------
select o.���u�s��,e.�m�W,e.���Τ��, datediff( year , e.���Τ��  , getdate()  ) as �~��  ,count(*) �q��B�z�`��,
count(*) / datediff( year , e.���Τ��  , getdate()  ) as �C�~�����B�z���
from �q�f�D�� as o inner join ���u as e on o.���u�s��=e.���u�s��
group by o.���u�s��,e.�m�W,e.���Τ��




select ���u�s��,count(*)
from �q�f�D��
group by ���u�s��