--�إ�Category��Ƥ��e

INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'A1', N'�@�붼��')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'A2', N'�@��')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'A3', N'��s')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'A4', N'��������')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'B1', N'������')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'B2', N'�t��')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'B3', N'�����')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'B4', N'����')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'C1', N'���I��')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'C2', N'�}�G')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'C3', N'�ѥ]')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'D1', N'�氮')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'E1', N'�ѯ�')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'E2', N'����')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'F1', N'�ަ�')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'G1', N'���G��')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (N'G2', N'���G')
GO
-------------------------------------
--�إ�Product��Ƥ��e
insert into [Product] (ProductID, ProductName, Price, [Description], Picture,CateID) values
('A2001', '�@�Y�@��', 99, '���~��@�Y�@�ءA�A�X�Ψӻs�@�U�ة@�ض��~�C', 'A2001.jpg','A2'),
('A3001', '���C��s', 129, '�g���u�C�y��s�A�f�P�J�p�A�A�X�P�B�ͻE�|�ɨɥΡC', 'A3001.jpg','A3'),
('A4001', '���O�q', 35, '�I�t�@�ئ]���������ơA���U�A�O���M���M���O�C', 'A4001.jpg','A4'),
('B1001', '���X', 45, '�g�岢����A�A�X�f�t�����B�K���������C', 'B1001.jpg','B1'),
('B2001', '�����t��', 22, '�h�\��i���t�ơA���z���Ʋz��[�����C', 'B3001.jpg','B2'),
('B3001', '��Ͷ����', 59, '���@�����A������٦b�R�q�ηf�t�氮�C', 'B3001.jpg','B3'),
('B4001', '�g����', 12, '�s�A�g�������ơA���ɮƲz������M�����C', 'B4001.jpg','B4'),
('C1001', '���J�O���I', 49, '�@�����J�O�������I�A�����i�f�A�O�H�^���L�a�C', 'C1001.jpg','C1'),
('C2001', '���G�}', 19, '�h�ؤf�������G�}�A�f�P�M�s�A�A�X�H�ɨɥΡC', 'C2001.jpg','C2'),
('C3001', '�����ѥ]', 39, '�s�A�X�l�������ѥ]�A���d�S�����C', 'C3001.jpg','C3'),
('D1001', '���J�O�氮', 29, '�@�����J�O�氮�A�~�ܤ��n�A�f�P�״I�C', 'C3001.jpg','D1'),
('E1001', '�����ѯ�', 59, '�����ѯ��A�s�@�ѥ]�M�氮���z�Q��ܡC', 'E1001.jpg','E1'),
('E2001', '�Y������', 99, '�Y�������A�t���״I���ֺ��M��i�A�A�X�ֳt���\�C', 'E2001.jpg','E2'),
('F1001', '�ަײ�', 79, '�����ަײ�A�Z�l�Q���A�a���@�����׭��C', 'F1001.jpg','F1'),
('G1001', '�L�}���G��', 55, '�۵M���ꪺ���G���A�L�K�[�}�A���d�S�����C', 'G1001.jpg','G1'),
('G2001', '�Ѩ��G', 19, '�ǲέ������Ѩ��G�A�A�X�U�خƲz�C', 'G2001.jpg','G2'),
('A2002', '�Y���@��', 89, '�ֳt�R�w�Y���@�ءA�H�ɨɨ��@�����@�ح���C', 'A2002.jpg','A2'),
('A3002', '����s§��', 399, '�]�t�h�ذ�s�f����§���A�A�X�@���e§�Ϋ~�C', 'A3002.jpg','A3'),
('C1002', '������', 59, '�����������`��A�~�ֶp�ܡA���`�����C', 'C1002.jpg','C1'),
('B3002', '�׮ۭ���', 14, '�s�A�׮ۭ��ơA�A�X�Ω��I�ζ��~���C', 'B3002.jpg','B3'),
('C2002', '���e�}�G', 24, '�ѵM���e�}�G�A�f�P�����A�O���S�����C', 'C2002.jpg','C2'),
('B3003', '���J�O�}��', 69, '�@�����J�O�}���A�f�P���ơA�����ɨ��C', 'B3003.jpg','B3'),
('B3004', '�Ų��G��', 49, '�s�A�Ų��s�@���G��A�f�t�ѥ]�λ氮�D�`�����C', 'B3004.jpg','B3'),
('B2002', '�N������', 16, '�M���N���]�p�����ƽը��]�A�����ק�[�����C', 'B2002.jpg','B2'),
('B3005', '��u����G��', 39, '�s�A����s�@����u�G��A�f�P�@���A�����i�f�C', 'B3005.jpg','B3'),
('C2003', '�L�}��G', 69, '���J�յL�}��G�A���d�s�����̨ο�ܡC', 'C2003.jpg','C2'),
('C1003', '���@���J�O��', 59, '���@�����J�O�ΡA�a�Ӻ��������ַP�C', 'C1003.jpg','C1'),
('D1002', '���l�氮', 29, '�a���������p�ܻ氮�A�f�P���դS�����C', 'D1002.jpg','D1'),
('G1002', '�~�G��', 39, '�ѵM����~�G�A�����L��A�A�X�@���p�Y�C', 'G1002.jpg','G1'),
('C3002', '�h�\�ѥ]', 49, '�I�t�h�ؽ\�����ѥ]�A���d�S��i�A�A�X���\�ɥΡC', 'C3002.jpg','C3')



--����:�b�s�WProduct�ɡA�ϥΪ̤���ۤv��JProductID�A�]�������Ѩt�Φۤv���ӽs���W�h���ͤ@��ProductID
--�ڭ̨M�w�b��Ʈw�ݫإߤ@�Ө�ơA�Ϩ�b�s�WProduct��Ʈɯ�z�L��Ƨ��@��ProductID

--�إߤ@�ӦW���ugetProductID�v�����
--��\�ର�s�WProduct�ɥi�I�s����Ʀ۰ʨ��o�@�ӷs��ProductID
--ProductID���s�X�W�h���uCategory��ID�[�W3�X�y�����v
--(�Ҧp A1035 ��CateID��A1+��35�����P�����~�AB2008��CateID��B2+��8�����P�����~)

--�p�G�Y�N�n�s�W�����~,CateID��A2
insert into [Product] values(dbo.getProductID('A2'),'test',50,'testtest','A2001.jpg','A2')


create function getProductID(@CateID nchar(2))
	returns nchar(5)
as
begin

	--�q�Ѽƨ��o CateID
	--���{���~��ƪ�Ҧ��P�������~���,��̫�@�ӦP�������~�s��

	declare @lastID nchar(5), @newID nchar(5)

	select top 1 @lastID=ProductID
	from [Product]
	where CateID = @CateID
	order by ProductID desc


	if @lastID is null
		set @newID = @CateID+'001'
	else --�� @lastID+1   ���]@lastID=A2015 => A2016
	begin 
		--�ݥ� substring() --���r��̪���
		declare @letter nchar(1)=substring(@lastID, 1, 1)
		declare @num nchar(4)=cast( cast( substring(@lastID, 2, 4) as int )+1 as nchar)

		set @newID=@letter+@num
	end

	return @newID
end



--����
insert into [Product] values(dbo.getProductID('A4'),'test',50,'testtest',dbo.getProductID('A4')+'.jpg',getdate(),'A4')