USE [CaseStudy]
GO

CREATE PROC usp_BankBatch_Balance
AS
/*======================================================
PROC: usp_BankBatch_Balance
PURPOSE: To update batchdetails when they are matched
Then keep BankBatches balanced by matching all
line items
=======================================================*/
UPDATE bankbatchdetail
SET MatchedDate = GetDate()
WHERE (matchedinvoiceid is not null
and matchedcustomerid is not null)
and (matchedinvoiceid <> 0
and matchedcustomerid <> 0)


UPDATE BANKBATCH
SET BatchItemsComplete = BatchItems - b.NotComplete
FROM BANKBATCH A
INNER JOIN (
select bankbatchid, count(*) as NotComplete
from bankbatchdetail
where
(matchedinvoiceid is null
OR matchedcustomerid is null
OR matcheddate is null)
group by bankbatchid
) B
on A.BankBatchID = B.BankBatchID

UPDATE BankBatch
SET BalancedDate = getdate()
WHERE BalancedDate IS NULL
and BatchItems = BatchItemsComplete