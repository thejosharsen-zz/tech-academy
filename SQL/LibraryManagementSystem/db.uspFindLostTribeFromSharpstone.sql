CREATE PROCEDURE FindLostTribeFromSharpstone 
AS

SELECT BranchName, Number_Of_Copies
FROM Library_Branch
INNER JOIN Book_Copies ON Library_Branch.BranchID=Book_Copies.BranchID
WHERE BranchName = 'Sharpstone'