/****** cleaned Dim_customerTable  ******/
SELECT 
c.customerkey as [CustomerKey],
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
   c.firstname as [FirstName],
      --,[MiddleName]
    c.lastname as  [LastName],
	c.firstname + ' ' + lastname as Full_name,
     -- ,[NameStyle]
     -- ,[BirthDate]
      --,[MaritalStatus]
     -- ,[Suffix]
    case  c.gender when 'M' Then 'Male' when 'F' Then 'Female' End as Gender,
    --  ,[EmailAddress]
    --  ,[YearlyIncome]
   --   ,[TotalChildren]
   --   ,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
     -- ,[SpanishEducation]
     -- ,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
     -- ,[FrenchOccupation]
   --   ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
    --  ,[AddressLine1]
     -- ,[AddressLine2]
    --  ,[Phone]
     c.datefirstpurchase as  [DateFirstPurchase],
   --   ,[CommuteDistance]
   g.city as [Customer City] -- joined in customer city from geography Table
  FROM dbo.DimCustomer as c
  left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey
  order by 
  CustomerKey asc -- order list by customerkey