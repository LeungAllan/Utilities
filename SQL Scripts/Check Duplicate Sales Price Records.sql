SELECT [Item No_]
      ,[Sales Type]
      ,[Sales Code]
      ,[Currency Code]
      ,[Variant Code]
      ,[Unit of Measure Code]
      ,[Unit Price] * 1.039
      ,[Price Includes VAT] * 1.039
,count([Item No_]) as 'CountDuplicate'
  FROM [MAD_UAT_20210125].[dbo].[Madison (Hong Kong) Ltd_$Sales Price]
  WHERE [Item No_] in 
  (SELECT No_  FROM [MAD_UAT_20210125].[dbo].[Madison (Hong Kong) Ltd_$Item]
  where [Item Category Code]='BULTHAUP'
  and [Product Group Code]='B1')
  and [Ending Date]='2021-12-31'
group by   [Item No_]
      ,[Sales Type]
      ,[Sales Code]
      ,[Currency Code]
      ,[Variant Code]
      ,[Unit of Measure Code]
      ,[Unit Price] * 1.039
      ,[Price Includes VAT] * 1.039
Having count([Item No_]) >1