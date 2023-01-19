declare @hold nvarchar(max);
select 
	top 1
	@hold = N'INSERT INTO [dbo].[tblmenu]
           ([Text]
           ,[acnttype]
           ,[action]
           ,[controller]
           ,[icon]
           ,[tagid]
		   )
     VALUES
           (
		    '''+[Text]+'''
           ,'''+[acnttype]+'''
           ,'''+[action]+'''
           ,'''+[controller]+'''
           ,'''+[icon]+'''
           ,'''+[tagid] +''')'
from tblmenu
where id= 26

exec sp_executesql @hold


select 
	'INSERT INTO [dbo].[tblmenu]
           ([Text]
           ,[acnttype]
           ,[action]
           ,[controller]
           ,[icon]
           ,[tagid]
		   )
     VALUES
           (
		    '+[Text]+'
           ,'+[acnttype]+'
           ,'+[action]+'
           ,'+[controller]+'
           ,'+[icon]+'
           ,'+[tagid] +')', *
from tblmenu
