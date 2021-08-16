CREATE PROCEDURE FindBorrowersWithNoBooksOut
AS

SELECT [Name], [Address], [Phone]
FROM Borrower
FULL OUTER JOIN Book_Loans ON Borrower.CardNo=Book_Loans.CardNo
WHERE DateDue IS NULL;