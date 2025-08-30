SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [stg].[Products]
( 
	[ProductID] [int]  NULL,
	[ProductName] [nvarchar](200)  NULL,
	[Category] [nvarchar](100)  NULL,
	[UnitPrice] [decimal](18,2)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO