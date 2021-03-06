/****** Script for SelectTopNRows command from SSMS  ******/
Insert into [MAD_UAT_20210125].[dbo].[Madison (Hong Kong) Ltd_$Sales Price]
([Item No_]
      ,[Sales Type]
      ,[Sales Code]
      ,[Starting Date]
      ,[Currency Code]
      ,[Variant Code]
      ,[Unit of Measure Code]
      ,[Minimum Quantity]
      ,[Unit Price]
      ,[Price Includes VAT]
      ,[Allow Invoice Disc_]
      ,[VAT Bus_ Posting Gr_ (Price)]
      ,[Ending Date]
      ,[Allow Line Disc_])
(SELECT [Item No_]
      ,[Sales Type]
      ,[Sales Code]
      ,'2021-03-09'
      ,[Currency Code]
      ,[Variant Code]
      ,[Unit of Measure Code]
      ,[Minimum Quantity]
      ,[Unit Price] * 1.039
      ,[Price Includes VAT] * 1.039
      ,[Allow Invoice Disc_]
      ,[VAT Bus_ Posting Gr_ (Price)]
      ,'2022-12-31'
      ,[Allow Line Disc_]
  FROM [MAD_UAT_20210125].[dbo].[Madison (Hong Kong) Ltd_$Sales Price]
  WHERE [Item No_] in 
  (SELECT No_  FROM [MAD_UAT_20210125].[dbo].[Madison (Hong Kong) Ltd_$Item]
  where [Item Category Code]='BULTHAUP'
  and [Product Group Code]='B1')
  and [Ending Date]='2021-12-31'
  )