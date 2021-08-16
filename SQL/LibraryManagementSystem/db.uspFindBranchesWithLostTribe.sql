CREATE PROCEDURE FindBranchesWithLostTribe
AS

SELECT BranchName, Number_Of_Copies
FROM Book_Copies
INNER JOIN Library_Branch ON Book_Copies.BranchID=Library_Branch.BranchID
WHERE BookID=1; /* BookID 1 = 'The Lost Tribe '*/