SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [stg].[Sales]
( 
	[SaleID] [int]  NULL,
	[SaleDate] [date]  NULL,
	[CustomerID] [int]  NULL,
	[ProductID] [int]  NULL,
	[Quantity] [int]  NULL,
	[UnitPrice] [decimal](18,2)  NULL,
	[Amount] [decimal](18,2)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO