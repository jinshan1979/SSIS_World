USE [CaseStudy]
GO

CREATE TABLE [dbo].[CustomerLookup](
[RawDataToMatch] [varchar](50) NOT NULL,
[ImportType] [char](10) NOT NULL,
[CustomerID] [int] NOT NULL,
CONSTRAINT [PK_CustomerLookup] PRIMARY KEY CLUSTERED
(
[RawDataToMatch] ASC,
[ImportType] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerLookup] WITH NOCHECK ADD CONSTRAINT
[FK_CustomerLookup_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerLookup] CHECK CONSTRAINT [FK_CustomerLookup_CustomerID]
GO
