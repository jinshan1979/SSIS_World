USE [CaseStudy]
GO
CREATE TABLE [dbo].[Invoice](
[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
[InvoiceNbr] [varchar](50) NOT NULL,
[CustomerID] [int] NOT NULL,
[TotalBilledAmt] [money] NOT NULL,
[BilledDate] [datetime] NOT NULL,
[PaidFlag] [smallint] NOT NULL CONSTRAINT [DF_Invoice_PaidFlag] DEFAULT ((0)),
CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED
(
[InvoiceID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Invoice] WITH NOCHECK ADD CONSTRAINT [FK_Invoice_CustomerID]
FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_CustomerID]
GO
INSERT INTO Invoice(InvoiceNbr, CustomerID, TotalBilledAmt, BilledDate, PaidFlag)
SELECT	InvoiceNbr = '151' + Accountnbr,
		CustomerID,
		TotalBilledAmt = cast(131 * (ascii(left(name, 1)) + ascii(substring(name,2, 1))) as money),
		BilledDate = '06/01/2012 00:00:00',
		PaidFlag = 0 
FROM customer
UNION
SELECT	InvoiceNbr = '181' + Accountnbr,
		CustomerID,
		TotalBilledAmt = 
			case
				when left(Accountnbr, 1) in ('A', 'B', 'C', 'D', 'E', 'F', 'G')
					then cast(131 * (ascii(left(name, 1)) + ascii(substring(name, 2, 1))) as money)
				else cast(191 * (ascii(left(name, 1)) + ascii(substring(name, 2, 1))) as money)
			end,
		BilledDate = '07/01/2012 00:00:00',
		PaidFlag = 0
FROM customer
UNION
SELECT	InvoiceNbr = '212' + Accountnbr,
		CustomerID,
		TotalBilledAmt = 
			case
				when left(Accountnbr, 1) in ('A', 'F', 'G')
					then cast(132 * (ascii(left(name, 1)) + ascii(substring(name, 2, 1))) as money)
				else cast(155 * (ascii(left(name, 1)) + ascii(substring(name, 2, 1))) as money)
			end,
		BilledDate = '08/01/2012 00:00:00',
		PaidFlag = 0
FROM customer
GO
UPDATE invoice set totalbilledamt = 18444.00
WHERE invoicenbr = '151INTERNAT0002' and totalbilledamt = 23973