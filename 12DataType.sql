--��ƫ��A���ഫ
--cast(data as type)
select t.���O�s��,t.���O�W��, cast(count(*) as varchar)+'��' as ���~�ƶq
from ���~��� as p inner join ���~���O as t on p.���O�s��=t.���O�s��
group by t.���O�s��,t.���O�W��

select *
from  ���~���

select distinct ���O�s��
from  ���~���
-----------------------------
--��ƫ��A�ഫ�ή榡�����D
select iif(�e�f��� is null,'�|���X�f', convert(varchar,  �e�f��� , 111 ) ) as �e�f���
from �q�f�D��

select convert( varchar  , �q����  ,  111) as �q����
from �q�f�D��

select convert( varchar  , �q����  ,  111) as �q����, count(*) as �q��ƶq
from �q�f�D��
group by �q����

--isnull()
select isnull(convert(varchar,�e�f���,111), '�|���X�f' )
from �q�f�D��
