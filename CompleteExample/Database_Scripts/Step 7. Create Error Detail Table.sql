USE [CaseStudy]
GO
CREATE TABLE [dbo].[ErrorDetail](
[ExecutionID] [nchar](38) NOT NULL,
[ErrorEvent] [nchar](20) NULL,
[ErrorCode] [int] NULL,
[ErrorColumn] [int] NULL,
[ErrorDesc] [nvarchar](1048) NULL,
[ErrorDate] [datetime] NULL,
[RawData] [varchar](2048) NULL
) ON [PRIMARY]