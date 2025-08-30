SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dw].[DimProduct]
( 
	[ProductSK] [int]  NOT NULL,
	[ProductID] [int]  NOT NULL,
	[ProductName] [nvarchar](200)  NULL,
	[Category] [nvarchar](100)  NULL,
	[UnitPrice] [decimal](18,2)  NULL,
	[EffectiveFrom] [datetime2](7)  NOT NULL,
	[EffectiveTo] [datetime2](7)  NULL
)
WITH
(
	DISTRIBUTION = HASH ( [ProductID] ),
	HEAP
)
GO