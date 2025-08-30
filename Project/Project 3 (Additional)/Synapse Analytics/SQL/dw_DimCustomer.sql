SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dw].[DimCustomer]
( 
	[CustomerSK] [int]  NOT NULL,
	[CustomerID] [int]  NOT NULL,
	[CustomerName] [nvarchar](200)  NULL,
	[Email] [nvarchar](200)  NULL,
	[City] [nvarchar](100)  NULL,
	[State] [nvarchar](100)  NULL,
	[Country] [nvarchar](100)  NULL,
	[EffectiveFrom] [datetime2](7)  NOT NULL,
	[EffectiveTo] [datetime2](7)  NULL
)
WITH
(
	DISTRIBUTION = HASH ( [CustomerID] ),
	HEAP
)
GO