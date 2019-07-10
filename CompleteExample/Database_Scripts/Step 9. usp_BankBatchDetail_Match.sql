USE [CaseStudy]
GO

CREATE PROC dbo.usp_BankBatchDetail_Match(
			@BankBatchDtlID int,
			@InvoiceID int=NULL,
			@CustomerID int=NULL
)
AS
/*===============================================
PROC: usp_BankBatchDetail_Match
PURPOSE: To update as paid an incoming payment
with matched invoice and customerid
HISTORY: 04/01/12 Created
===============================================
*/
SET NOCOUNT ON
--UPDATE BANKBATCH DETAIL WITH INVOICE AND CUSTOMERID
--NOTE: IF EITHER IS NULL THEN DON’T UPDATE
--MATCHED DATE. THIS WILL PUSH THE ITEM INTO A SUBJECT-
--MATTER-EXPERT’S QUEUE TO IDENTIFY.
UPDATE BankBatchDetail
SET MatchedInvoiceID = @InvoiceID,
MatchedCustomerID = @CustomerID,
MatchedDate = case when @InvoiceID is NULL or @CustomerID is NULL then NULL else getdate() end
WHERE BankBatchDtlID = @BankBatchDtlID
SET NOCOUNT OFF