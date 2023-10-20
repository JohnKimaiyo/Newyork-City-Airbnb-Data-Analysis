/****** Script for SelectTopNRows command from SSMS  ******/
-- windows functions with over ---


-- Average price with OVER



SELECT 
[id]
      ,[name]
      ,[host_id]

      ,[neighbourhood_group]
      ,[neighbourhood]

      ,AVG(price) OVER()
      

  FROM [dbo].[nybookings]

  SELECT
  [id],
  [name],
  [neighbourhood_group],
  AVG(price) OVER() ,
  MIN(price) OVER() ,
  MAX(price) OVER()
  FROM [dbo].[nybookings];

    SELECT
  [id],
  [name],
  [neighbourhood_group],
  [price] ,
  ROUND(AVG(price) OVER(),2) AS averageprcie,
  ROUND((price - AVG(price) OVER()),2) AS diff_from_avg
  FROM [dbo].[nybookings];


  -- percentage of avaergare price with Over()
      SELECT
  [id],
  [name],
  [neighbourhood_group],
  [price] ,
  ROUND(AVG(price) OVER(),2) AS averageprcie,
  ROUND((price / AVG(price) OVER() * 100),2) AS percentage_of_avg_price
  FROM [dbo].[nybookings];

