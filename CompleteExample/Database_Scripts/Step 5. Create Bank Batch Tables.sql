USE [CaseStudy]
GO
CREATE TABLE [dbo].[BankBatch](
	[BankBatchID] [int] IDENTITY(1,1) NOT NULL,
	[BankBatchNbr] [nvarchar](50) NULL,
	[DepositDate] [datetime] NULL,
	[ReceivedDate] [datetime] NULL,
	[BalancedDate] [datetime] NULL,
	[PostedDate] [datetime] NULL,
	[BatchTotal] [money] NULL,
	[BatchItems] [int] NULL,
	[BatchItemsComplete] [int] NULL,
	[FileBytes] [int] NULL,
	[FullFilePath] [nvarchar](1080) NULL,
	[ImportType] [char](10) NULL,
	[ErrMsg] [varchar](1080) NULL,
	[BatchFile] [ntext] NULL,
 CONSTRAINT [PK_BankBatch] PRIMARY KEY CLUSTERED 
(
	[BankBatchID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, 
	IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, 
	ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_BatchNumber_ImportType] ON [dbo].[BankBatch] 
(
	[BankBatchNbr] ASC,
	[ImportType] ASC
)
GO
CREATE TABLE [dbo].[BankBatchDetail](
	[BankBatchDtlID] [int] IDENTITY(1,1) NOT NULL,
	[BankBatchID] [int] NOT NULL,
	[RawInvoiceNbr] [nvarchar](50) NULL,
	[RawAccountNbr] [nvarchar](50) NULL,
	[ReferenceData1] [nvarchar](50) NULL,
	[ReferenceData2] [nvarchar](50) NULL,
	[MatchedInvoiceID] [int] NULL,
	[MatchedCustomerID] [int] NULL,
	[MatchedDate] [datetime] NULL,
	[PaymentAmount] [money] NULL,
 CONSTRAINT [PK_BankBatchDtlID] PRIMARY KEY CLUSTERED 
(
	[BankBatchDtlID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, 
	IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, 
	ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BankBatchDetail] WITH NOCHECK ADD CONSTRAINT [FK_BankBatchDetail_BankBatchID] FOREIGN KEY([BankBatchID])
REFERENCES [dbo].[BankBatch] ([BankBatchID])
GO
ALTER TABLE [dbo].[BankBatchDetail] CHECK CONSTRAINT
[FK_BankBatchDetail_BankBatchID]
GO
ALTER TABLE [dbo].[BankBatchDetail] WITH CHECK ADD CONSTRAINT
[FK_BankBatchDetail_CustomerID] FOREIGN KEY([MatchedCustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[BankBatchDetail] WITH CHECK ADD CONSTRAINT
[FK_BankBatchDetail_InvoiceID] FOREIGN KEY([MatchedInvoiceID])
REFERENCES [dbo].[Invoice] ([InvoiceID])
GO

