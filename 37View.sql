--�˵���(View)����
create view view_allOrderData
as
SELECT    �q�f�D��.�q�渹�X, �Ȥ�.���q�W�� AS �Ȥ�W��, ���~���.���~ AS �~�W
, �q�f����.���, �q�f����.�ƶq, 
                            �q�f����.�馩, ���~���O.���O�W��, �q�f�D��.�q����, �q�f�D��.�n�f���, �q�f�D��.�e�f���, ���u.�m�W,
							�q�f����.���*�q�f����.�ƶq*(1-�q�f����.�馩) as �p�p
FROM              �q�f���� INNER JOIN
                            �q�f�D�� ON �q�f����.�q�渹�X = �q�f�D��.�q�渹�X INNER JOIN
                            ���~��� ON �q�f����.���~�s�� = ���~���.���~�s�� INNER JOIN
                            �Ȥ� ON �q�f�D��.�Ȥ�s�� = �Ȥ�.�Ȥ�s�� INNER JOIN
                            ���u ON �q�f�D��.���u�s�� = ���u.���u�s�� INNER JOIN
                            ���~���O ON ���~���.���O�s�� = ���~���O.���O�s��
------
select *
from view_allOrderData
where  �~�W like 'ī�G'

exec getOrderListWithOtherData