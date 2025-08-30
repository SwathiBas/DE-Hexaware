SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dw].[FactSales]
( 
	[SaleID] [int]  NOT NULL,
	[SaleDate] [datetime2](7)  NOT NULL,
	[CustomerSK] [int]  NOT NULL,
	[ProductSK] [int]  NOT NULL,
	[Quantity] [int]  NOT NULL,
	[UnitPrice] [decimal](18,2)  NOT NULL,
	[Amount] [decimal](18,2)  NOT NULL,
	[LoadDate] [datetime2](7)  NULL
)
WITH
(
	DISTRIBUTION = HASH ( [SaleID] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO