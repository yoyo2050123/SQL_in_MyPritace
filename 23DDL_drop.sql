--drop

drop table [Member]--�o�̷|�o�ͰѦҧ���ʭ�����D


--1. ����Member�POrder���������p(�R��Order��ƪ�W��F.K �������)
alter table [Order]
	drop constraint FK__Order__MemberID__66603565


--2. �R��[Member]��Ʈw
drop table [Member]
---------------------------------------------------

--�R����Ӹ�Ʈw

ALTER DATABASE
[GoodStore] SET
single_user with
rollback immediate;

drop database GoodStore




