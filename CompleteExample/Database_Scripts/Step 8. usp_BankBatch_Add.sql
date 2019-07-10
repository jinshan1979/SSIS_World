Use [CaseStudy]
GO
CREATE PROC usp_BankBatch_Add(
@BankBatchID int OUTPUT,
@BankBatchNbr nvarchar(50)=NULL,
@DepositDate datetime=NULL,
@ReceivedDate datetime=NULL,
@BatchTotal money=NULL,
@BatchItems int=NULL,
@FileBytes int=NULL,
@FullFilePath nvarchar(100)=NULL,
@ImportType char(10)
)
AS
/*=======================================================
PROC: usp_BankBatch_Add
PURPOSE: To Add BankBatch Header Basic info
and to validate that the batch is new.
OUTPUT: Will return BankBatchID if new or 0 if exists
HISTORY: 04/01/12 Created
=======================================================*/
SET NOCOUNT ON
If @ReceivedDate is null
	SET @ReceivedDate = getdate()

IF LEN(@BankBatchNbr) <= 1 OR Exists(Select top 1 * 
		FROM BankBatch
		WHERE BankBatchNbr = @BankBatchNbr
		AND ImportType = @ImportType)
	BEGIN
		SET @BANKBATCHID = 0
		RETURN -1
	END
ELSE
	BEGIN
		INSERT INTO BankBatch(BankBatchNbr, DepositDate, ReceivedDate,
					BatchTotal, BatchItems, FileBytes, FullFilePath, ImportType)
		SELECT UPPER(@BankBatchNbr), @DepositDate, @ReceivedDate, 
					@BatchTotal, @BatchItems, @FileBytes, UPPER(@FullFilePath), UPPER(@ImportType)
		SET @BANKBATCHID = Scope_Identity()
	END

SET NOCOUNT OFF
GO
