SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [stg].[Customers]
( 
	[CustomerID] [int]  NULL,
	[CustomerName] [nvarchar](200)  NULL,
	[Email] [nvarchar](200)  NULL,
	[City] [nvarchar](100)  NULL,
	[State] [nvarchar](100)  NULL,
	[Country] [nvarchar](100)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO