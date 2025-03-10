-- Cleaned DIM_Customer--
SELECT 
  c.CustomerKey AS CustomerKey, 
  
  --,GeographyKey AS [Customer Alternate Key], 
  --'Title, 
  c.FirstName AS [First Name], 
  --,MiddleName, 
  c.LastName AS [Last Name], 
  c.FirstName+ ' '+ LastName AS [Full Name], 
  CASE 
    WHEN c.Gender = 'M' THEN 'Male' 
    WHEN c.Gender = 'F' THEN 'Female' END AS Gender, 
  c.DateFirstPurchase AS DateFirstPurchase, 
  g.City AS [Customer City]
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  c.CustomerKey ASC;
