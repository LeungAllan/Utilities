/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000
[Server Instance ID]
      ,[Session ID]
      ,[User ID]
	  ,case b.[License Type]
	  when 0 then 'Full user'
	  when 1 then 'Limited user'
	  end as 'License Type'
      ,[User SID]
      ,[Server Instance Name]
      ,[Server Computer Name]
      ,[Client Type]
      ,[Client Computer Name]
      ,[Login Datetime]
      ,[Database Name]
  FROM [MAD_UAT].[dbo].[Active Session] a,
  [MAD_UAT].[dbo].[User] b
  where a.[User SID]=b.[User Security ID]

  select  count(b.[License Type]) as 'Full user'
  , (select count(*) from [MAD_UAT].[dbo].[Active Session]) as 'Total Login'
  FROM [MAD_UAT].[dbo].[Active Session] a,
  [MAD_UAT].[dbo].[User] b
  where a.[User SID]=b.[User Security ID]
  and b.[License Type]=0

--DELETE FROM [Active Session]
--WHERE [Session ID] = 5753

--delete from [MAD_UAT].[dbo].[Active Session] where [Session ID]=139
