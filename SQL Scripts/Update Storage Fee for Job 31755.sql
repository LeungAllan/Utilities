/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [timestamp]
      ,[sku]
      ,[sysdate]
      ,[inv_date]
      ,[bill_from_date]
      ,[bill_to_date]
      ,[receive_key]
      ,[line_seq]
      ,[lot_Id]
      ,[charge_unit]
      ,[bill_per_unit]
      ,[bill_days]
      ,[currency]
      ,[inv_amt]
      ,[ref_ord]
      ,[wh_code]
      ,[cbm]
      ,[receive_date]
      ,[bill_ctn]
      ,[Job No_]
      ,[Original Job No_]
      ,[Entry No_]
      ,[SN]
      ,[Related SO]
      ,[Related SO line]
      ,[Req_ Delivery Date]
      ,[Days Overdue]
      ,[Matched]
      ,[Project Type]
      ,[Stream Code]
      ,[Madison Bill Day (Stock)]
      ,[Madison Bill Day (Job)]
      ,[Bill_rate]
      ,[Effective Day]
  FROM [MAD_UAT].[dbo].[Madison (Hong Kong) Ltd_$Storage Fee Invoice]
  where [Original Job No_]='31755'
  and [Entry No_]=0

  update [MAD_UAT].[dbo].[Madison (Hong Kong) Ltd_$Storage Fee Invoice]
  set [Job No_]='31755',
  [Madison Bill Day (Job)] = [Madison Bill Day (Stock)],
  [Madison Bill Day (Stock)]=0
    where [Original Job No_]='31755'
  and [Entry No_]=0