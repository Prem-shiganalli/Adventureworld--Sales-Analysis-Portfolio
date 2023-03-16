---clensed dimdate table---
SELECT  
[DateKey],
      [FullDateAlternateKey] as Date,
      --[DayNumberOfWeek]
      [EnglishDayNameOfWeek] as Day,
     ---,[SpanishDayNameOfWeek]
      ---,[FrenchDayNameOfWeek]
     -- ,[DayNumberOfMonth]
     -- ,[DayNumberOfYear]
      [WeekNumberOfYear] as Weekno,
      [EnglishMonthName] as Month,
     -- ,[SpanishMonthName]
    --  ,[FrenchMonthName]
      [MonthNumberOfYear] as Monthno,
      [CalendarQuarter] as Qtr,
      [CalendarYear] as Year
    --  ,[CalendarSemester]
    --  ,[FiscalQuarter]
     -- ,[FiscalYear]
  --    ,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >= 2019

