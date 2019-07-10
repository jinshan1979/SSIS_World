USE [CaseStudy]
GO
CREATE TABLE [dbo].[GLAccountData](
[TransID] [int] IDENTITY(1,1) NOT NULL,
[PostDate] [datetime] NULL,
[ProcessDate] [datetime] NULL,
[DepositAmount] [money] NULL,
[TransDesc] [varchar](50) NULL,
[GLAccount] [char](10) NULL,
CONSTRAINT [PK_GLAccountData] PRIMARY KEY CLUSTERED
(
[TransID] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [CaseStudy]
GO
CREATE VIEW dbo.vCorpDirectAcctTrans
AS
SELECT TransID, PostDate, ProcessDate, DepositAmount, TransDesc
FROM dbo.GLAccountData

GO

INSERT INTO GLACCOUNTDATA(postdate, processdate, depositamount, transdesc,
glaccount)
SELECT '08/09/12', '08/10/12', 22794.00, 'PAYPAL*MBlack@Marsh.com', 'BANK'
UNION
SELECT '08/09/12', '08/10/12', 21484.00, 'PAYPAL*JBrown@CapitalCycles.com', 'BANK'
UNION
SELECT '08/09/12', '08/10/12', 22008.00, 'PAYPAL*DBlanco@msn.com', 'BANK'
UNION
SELECT '08/09/12', '08/10/12', 22794.00, 'PAYPAL*CBooth@MagicCycle', 'BANK'
UNION
SELECT '08/09/12', '08/10/12', 22401.00, 'PAYPAL*ABaltazar@msn.com', 'BANK'