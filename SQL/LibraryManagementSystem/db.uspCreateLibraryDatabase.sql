CREATE TABLE Library_Branch (
	BranchID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	BranchName NVARCHAR(50) NOT NULL,
	[Address] NVARCHAR(50) NOT NULL
);

CREATE TABLE Borrower (
	CardNo INT NOT NULL PRIMARY KEY IDENTITY(100000,1),
	[Name] NVARCHAR(50) NOT NULL,
	[Address] NVARCHAR(50) NOT NULL,
	[Phone] NVARCHAR(50) NOT NULL
);

CREATE TABLE Publisher (
	PublisherName NVARCHAR(50) NOT NULL PRIMARY KEY,
	[Address] NVARCHAR(50) NOT NULL,
	[Phone] NVARCHAR(50) NOT NULL
);

CREATE TABLE Books (
	BookID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Title NVARCHAR(50) NOT NULL,
	PublisherName NVARCHAR(50) FOREIGN KEY REFERENCES Publisher(PublisherName)
);

CREATE TABLE Book_Copies (
	BookID INT NOT NULL FOREIGN KEY REFERENCES Books(BookID),
	BranchID INT FOREIGN KEY REFERENCES Library_Branch(BranchID),
	Number_Of_Copies INT NOT NULL
);

CREATE TABLE Book_Authors (
	BookID INT FOREIGN KEY REFERENCES Books(BookID),
	AuthorName NVARCHAR(50) NOT NULL
);

CREATE TABLE Book_Loans (
	BookID INT FOREIGN KEY REFERENCES Books(BookID),
	BranchID INT FOREIGN KEY REFERENCES Library_Branch(BranchID),
	CardNo INT FOREIGN KEY REFERENCES Borrower(CardNo),
	DateOut DATE NOT NULL,
	DateDue DATE NOT NULL
);

INSERT INTO Library_Branch
	(BranchName, [Address])
	VALUES
	('Sharpstone','123 Main Street'),
	('Chapter','93 Travel Blvd'),
	('Neilstone','16 Pomona Avenue'),
	('Daydream','119 Chapter Street'),
	('Atrium','80 Clondike Lane'),
	('Hopkins','1 Cardboard Box Avenue')
;

INSERT INTO Borrower
	([Name], [Address], [Phone])
	VALUES
	('Tom Hanks','73 Acandra Lane','123-456-7890'),
	('Leonardo DiCaprio','17 Board and Rock Street','112-234-5678'),
	('Robert De Niro','84 Cheattle Villa','113-145-5492'),
	('Tom Cruise','The Moon','335-471-5174'),
	('Chris Evans','Infinite Loop','545-515-2152'),
	('Samuel Jackson','21 Jump Street','541-551-5513'),
	('Morgan Freeman','89 Integra Lane','851-452-1528'),
	('Johnny Depp','Black Pearl','615-564-5496')
;

INSERT INTO Publisher
	(PublisherName, [Address], [Phone])
	VALUES
	('Creativepont','28 Studebaker St.','846-545-5484'),
	('Chuck Haunreiter','8359 Kingston Dr.','185-584-5849'),
	('Risk & Insurance','106 Olive Dr.','515-648-1636'),
	('Walter Coffey','529 Littleton Ave.','548-548-5481'),
	('Jana Inc','9730 Selby Ave.','541-741-2006'),
	('Make-A-Wish Foundation','8724 Hawthorne St.','008-510-4168'),
	('Washington University School Of Law','746 Roosevelt Street','198-451-6189'),
	('Ingenix Publishing','19 Brickyard Drive','044-641-1518'),
	('Pinnacle Healthcare Institute','386 Ridgeview Rd.','055-519-5618'),
	('Desktop Publishing; Typesetting','253 Constitution Street','185-451-1849')
;

INSERT INTO Books
	(Title, PublisherName)
	VALUES
	('The Lost Tribe', 'Creativepont'),
	('I Feel Bad About My Neck', 'Risk & Insurance'),
	('Broken Glass', 'Jana Inc'),
	('The Girl With the Dragon Tattoo', 'Make-A-Wish Foundation'),
	('Harry Potter and the Goblet of Fire', 'Ingenix Publishing'),
	('A Little Life', 'Washington University School Of Law'),
	('Chronicles: Volume One', 'Desktop Publishing; Typesetting'),
	('The Tipping Point', 'Washington University School Of Law'),
	('Darkmans', 'Desktop Publishing; Typesetting'),
	('The Siege', 'Risk & Insurance'),
	('Light', 'Ingenix Publishing'),
	('Visitation', 'Pinnacle Healthcare Institute'),
	('Bad Blood', 'Chuck Haunreiter'),
	('Noughts & Crosses', 'Walter Coffey'),
	('Priestdaddy', 'Ingenix Publishing'),
	('Adults in the Room', 'Ingenix Publishing'),
	('The God Delusion', 'Chuck Haunreiter'),
	('The Cost of Living', 'Walter Coffey'),
	('Tell Me How It Ends', 'Ingenix Publishing'),
	('Coraline', 'Chuck Haunreiter')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Felipe Carlson', 1),
	('Lynne Guzman', 5),
	('Jeannie Houston', 11),
	('Rodney Lindsey', 17),
	('April Mendez', 5),
	('Angelo Erickson', 4),
	('Felipe Carlson', 13),
	('Marta Chapman', 6),
	('Ellen Castillo', 2),
	('Rodney Lindsey', 5)
;

INSERT INTO Book_Copies
	(BookID, Number_Of_Copies, BranchID)
	VALUES
	(1, 3, 5),
	(2, 2, 3),
	(3, 5, 3),
	(4, 4, 2),
	(5, 6, 3),
	(6, 4, 5),
	(7, 3, 2),
	(8, 5, 3),
	(9, 7, 5),
	(10, 4, 5),
	(11, 9, 3),
	(12, 11, 4),
	(13, 15, 5),
	(14, 9, 5),
	(15, 6, 2),
	(16, 4, 1),
	(17, 5, 5),
	(18, 3, 3),
	(19, 14, 5),
	(20, 5, 5)
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(2, 5, 100000, '2020-12-15', '2021-11-14'),
	(18, 1, 100002, '2020-05-13', '2021-02-20'),
	(11, 2, 100003, '2020-11-08', '2021-12-22'),
	(4, 4, 100002, '2020-03-15', '2021-06-13'),
	(2, 5, 100005, '2020-07-14', '2021-05-20'),
	(6, 6, 100007, '2020-03-06', '2021-12-16'),
	(3, 2, 100006, '2020-09-03', '2021-12-20'),
	(7, 4, 100005, '2020-12-03', '2021-03-06'),
	(9, 1, 100002, '2020-02-26', '2021-09-16'),
	(2, 4, 100000, '2020-01-11', '2021-11-07')
;

SELECT * FROM ((Book_Loans FULL OUTER JOIN Borrower ON Book_Loans.CardNo=Borrower.CardNo)
FULL OUTER JOIN Books ON Book_Loans.BookID=Books.BookID);

/* --- */

SELECT Title, AuthorName
FROM Books
INNER JOIN Book_Authors ON Books.BookID=Book_Authors.BookID;