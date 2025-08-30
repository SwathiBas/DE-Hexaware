SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dw].[EtlRunLog]
( 
	[RunID] [int]  NOT NULL,
	[PipelineName] [nvarchar](200)  NULL,
	[StartTime] [datetime2](7)  NULL,
	[EndTime] [datetime2](7)  NULL,
	[RowsStaged] [int]  NULL,
	[RowsInsertedFact] [int]  NULL,
	[Status] [nvarchar](50)  NULL,
	[Message] [nvarchar](2000)  NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO