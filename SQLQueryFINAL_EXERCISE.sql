CREATE db_libraries
GO

CREATE TABLE tbl_book(
	Book_id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Book_Title VARCHAR(50) NOT NULL,
	Book_PublisherName INT NOT NULL, CONSTRAINT fk_Publisher_Name FOREIGN KEY REFERENCES tbl_Publisher(Publisher_Name) ON UPDATE ON DELETE CASCADE,
);

CREATE TABLE tbl_Book_Authors(
	Book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Book_Authors_AuthorName VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_Publisher(
	Publisher_Name PRIMARY KEY NOT NULL IDENTITY(1,1),
	Publisher_Address VARCHAR(50) NOT NULL,
	Publisher_Phone VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_Book_Loans(
	Book_id PRIMARY KEY NOT NULL IDENTITY (1,1),
	Branch_id INT NOT NULL CONSTRAINT fk_Branch_Branchid FOREIGN KEY REFERENCES tbl_Library_Branch(Branch_Branchid) ON UPDATE ON DELETE CASCADE,
	Book_CardNo INT NOT NULL CONSTRAINT fk_Borrower_CardNo FOREIGN KEY REFERENCES tbl_Borrower(Borrower_CardNo) ON UPDATE DELETE CASCADE,
	Book_DateOut VARCHAR(50) NOT NULL,
	Book_DueDate VARCHAR(50) NOT NULL,
);

CREATE TABLE tbl_Book_Copies(
	Book_id PRIMARY KEY NOT NULL IDENTITY(1,1),
	Book_Copies_Branchid INT NOT NULL CONSTRAINT fk_Branch_Branchid FOREIGN KEY REFERENCES tbl_Library_Branch(Branch_Branchid) ON UPDATE DELETE CASCADE,
	Book_Copies_No_Of_Copies VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_Borrower(
	Borrower_CardNo PRIMARY KEY NOT NULL IDENTITY(1,1),
	Borrower_Name VARCHAR(50) NOT NULL,
	Borrower_Address VARCHAR(50) NOT NULL,
	Borrower_Phone VARCHAR(50) NOT NULL,
);

CREATE TABLE tbl_Library_Branch(
	Branch_Branchid PRIMARY KEY NOT NULL IDENTITY(1,1),
	Branch_BranchName VARCHAR(50) NOT NULL,
	Branch_Address VARCHAR(50) NOT NULL
);

INSERT INTO tbl_book
	(Book_id, Book_title)
	VALUES
	('Book_1','The Lost Tribe'),
	('Book_2','IT'),
	('Book_3','Othello'),
	('Book_4','Sphere'),
	('Book_5','The Shinning'),
	('Book_6','Into Thin Air'),
	('Book_7','The Canterville Ghost'),
	('Book_8', 'Common Sense'),
	('Book_9', 'Naked Lunch'),
	('Book_10', 'Fear and Loathing in Las Vegas'),
	('Book_11','The Centennial Symposium'),
	('Book_12','Dubliners'),
	('Book_13','Jurassic Park'),
	('Book_14','Phantoms'),
	('Book_15', 'The Western Lands'),
	('Book_16', 'Civil Disobedience'),
	('Book_17''The Age of Reason'),
	('Book_18','Misery'),
	('Book_19''Andromeda Strain'),
	('Book_20','Romeo and Juliet'),
	;

	INSERT INTO tbl_Library_Branch
		(Branch_Branchid, Branch_BranchName)
		VALUES
		('Library_Branch_1','Sharpstown')
		('Library_Branch_2','Central')
		('Library_Branch_3','Soutern')
		('Library_Branch_4','Eastern')
		;
	INSERT INTO tbl_Book_Authors
	(Book_Authors_id, Book_Authors_AuthorName)
	VALUES
	('Author_1','Stephen King')
	('Author_2','Dean Koontz')
	('Author_3','Michael Chriton')
	('Author_4','William Shakespeare')
	('Author_5','James Joyce')
	('Author_6','Oscar Wilde')
	('Author_7','Thomas Paine')
	('Author_8','William S Burroughs')
	('Author_9','Hunter S Thompson')
	('Author_10','Jon Krakauer')
	;

	INSERT INTO tbl_Borrower
		(Borrower_Borrower_Name)
		VALUES
		('John')
		('Susan')
		('Jan')
		('Larry')
		('Cindy')
		('Marge')
		('Homer')
		('Bart')
		('Lisa')
		('Maggie')
		;

		INSERT INTO Book_Loans
		(Book_id, Book_DateOut, Book_DueDate)
		VALUES
		('BookLoan_1')
		('BookLoan_2')
		('BookLoan_3')
		('BookLoan_4')
		('BookLoan_5')
		('BookLoan_6')
		('BookLoan_7')
		('BookLoan_8')
		('BookLoan_9')
		('BookLoan_10')
		('BookLoan_11')
		('BookLoan_12')
		('BookLoan_13')
		('BookLoan_14')
		('BookLoan_15')
		('BookLoan_16')
		('BookLoan_17')
		('BookLoan_18')
		('BookLoan_19')
		('BookLoan_20')
		('BookLoan_21')
		('BookLoan_22')
		('BookLoan_23')
		('BookLoan_24')
		('BookLoan_25')
		('BookLoan_26')
		('BookLoan_27')
		('BookLoan_28')
		('BookLoan_29')
		('BookLoan_30')
		('BookLoan_31')
		('BookLoan_32')
		('BookLoan_33')
		('BookLoan_34')
		('BookLoan_35')
		('BookLoan_36')
		('BookLoan_37')
		('BookLoan_38')
		('BookLoan_39')
		('BookLoan_40')
		('BookLoan_41')
		('BookLoan_42')
		('BookLoan_43')
		('BookLoan_44')
		('BookLoan_45')
		('BookLoan_46')
		('BookLoan_47')
		('BookLoan_48')
		('BookLoan_49')
		('BookLoan_50')
		;

		
		USE db_libraries
		GO

		CREATE PROCEDURE dbo.uspBookName
		AS

		SELECT * FROM tbl_Book, Library_Branch WHERE Book_Title="The Lost Tribe" AND Branch_BranchName="Sharpstown","Eastern","Central","Southern"

		END

		CREATE PROCEDURE dbo.uspBookLoans
		AS

		IF SELECT*FROM tbl_Book_Loans WHERE Book_id="0" AND Branch_BranchName="Sharpstown"AND Book_DueDate="1/2/2018"
		RETURN 
		Book_Title,Borrower_Name, Borrower_Address
		END

		CREATE PROCEDURE cbo.uspLibraryBranch
		AS

		SELECT *FROM tbl_Library_Branch WHERE Branch_BranchName=Books_Loans="Book_DateOut",

		END

		CREATE PROCEDURE cbo.uspLibraryBorrower
		AS 
		SELECT*FROM tbl_Book_Loans WHERE DateOut="5"
		END


		
