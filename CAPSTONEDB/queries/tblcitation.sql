select * from tblAccounts

select * from tblticketcitation


--remove deleted citation
update tblticketcitation set isDeleted=null, ddate = null where tid =10

--remove deleted cleared
update tblticketcitation set sdate=null, isSettled = null, clearedby=null where tid =10



	select c.*, v.vdesc from tblticketcitation c
		left join tblviolation v on c.violationid=v.vid
	where isDeleted is null;