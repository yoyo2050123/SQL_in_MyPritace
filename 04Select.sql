--like�B��l(�ҽk�B��)
--%:�N��0~n�ӥ��N�r��
--_:�N��ӥ��N1�Ӧr��
--[]:��b���A���̪����@�Ӧr

select *
from �q�f�D��
where ���f�H like '��%'

select *
from �q�f�D��
where ���f�H like '��__'

--[]:��b���A���̪����@�Ӧr
select *
from �q�f�D��
where ���f�H like '��%' or  ���f�H like '�L%'  or  ���f�H like '��%'  or  ���f�H like '��%'
 or  ���f�H like '��%'

select *
from �q�f�D��
where ���f�H like '[�������L��]%'

--^�� (����)

select *
from �q�f�D��
where ���f�H like '[^�������L��]%'

--------------------------------------------------
--between...and...

select *
from ���~���
where ��� >= 10 and ���<=20

select *
from ���~���
where ��� between 10 and 20

----------------------------------------------
--in
select *
from �Ȥ�
where �s���H¾��='���ƪ�' or �s���H¾��='��o�ͭ�' or �s���H¾��='�~��' or �s���H¾��='aaa'

select *
from �Ȥ�
where �s���H¾�� in ('���ƪ�','��o�ͭ�','�~��','aaa')

--��X�Ҧ��b 1968(�t)�~�H��X�ͥB��b�_���F�����k���u�A�åB���Ӷ��Τ�����W�Ƨ�
select * 
from ���u
where �X�ͤ��>='1968/1/1'and �٩I in('����') and �a�} like '%�_���F��%'
order by ���Τ��
