--�y�{����
--while

--��1�[��100

declare @i int =1, @sum int=0

while @i<=100
begin
	set @sum+=@i

	set @i+=1

end

print @sum
go
---------------------------------
--*
--**
--***
--****
--*****

declare @i int =1, @result varchar(max)=''


while @i<=100000
begin
	set @result+='*'
	print @result
	set @i+=1

end
