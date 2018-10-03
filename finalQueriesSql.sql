 --query 1
	USE db_library
	GO

	CREATE PROCEDURE dbo.uspQuery1
	AS

	SELECT
		a5.copies_number, a3.book_title, a1.branch_name

	FROM tbl_libraryBranch a1

		INNER JOIN tbl_copies a5 ON a5.copies_branchID = a1.branch_id
		INNER JOIN tbl_books a3 ON a3.book_id = a5.copies_bookID

	WHERE book_title = 'The Lost Tribe' AND branch_name = 'Sharpstown'
	;
	GO

	EXEC uspQuery1


	--query 2
	USE db_library
	GO

	CREATE PROCEDURE dbo.uspQuery2
	AS

	SELECT
		a5.copies_number, a3.book_title, a1.branch_name

	FROM tbl_libraryBranch a1

		INNER JOIN tbl_copies a5 ON a5.copies_branchID = a1.branch_id
		INNER JOIN tbl_books a3 ON a3.book_id = a5.copies_bookID

	WHERE book_title = 'The Lost Tribe'
	;
	GO

		EXEC uspQuery2

	--query 3
	USE db_library
	GO

	CREATE PROCEDURE dbo.uspQuery3
	AS
	SELECT
		a7.borrower_name

	FROM tbl_bookLoans a6

		INNER JOIN tbl_borrower a7 ON a7.borrower_cardNum = a6.bookLoans_cardNum

	WHERE bookLoans_bookID IS NULL
	;
	GO

		EXEC uspQuery3

	--query 4
	USE db_library
	GO

	CREATE PROCEDURE dbo.uspQuery4
	AS
	SELECT
		a3.book_title, a7.borrower_name, a7.borrower_address

	FROM tbl_borrower a7

		INNER JOIN tbl_bookLoans a6 ON a6.bookLoans_cardNum = a7.borrower_cardNum
		INNER JOIN tbl_books a3 ON a3.book_id = a6.bookLoans_bookID
		INNER JOIN tbl_libraryBranch a1 ON a1.branch_id = a6.bookLoans_branchID

	WHERE branch_name = 'Sharpstown' AND bookLoans_dateDUE = '09/28/18'
	;
	GO

		EXEC uspQuery4


	--query 5
	USE db_library
	GO

	CREATE PROCEDURE dbo.uspQuery5
	AS
	SELECT  COUNT (a6.bookloans_bookID) AS Total_#_of_Books, a1.branch_name  

	FROM tbl_bookLoans a6
		INNER JOIN tbl_libraryBranch a1 ON a1.branch_id = a6.bookLoans_branchID
		GROUP BY a1.branch_name
	;
	GO

		EXEC uspQuery5


	--query 6
	USE db_library
	GO

	CREATE PROCEDURE dbo.uspQuery6
	AS
	SELECT COUNT(a6.bookloans_bookID) AS #_of_books_checked_out, a7.borrower_name, a7.borrower_address

	FROM tbl_bookLoans a6 
	JOIN tbl_borrower a7  ON a7.borrower_cardNum = a6.bookLoans_cardNum
	
	GROUP BY a7.borrower_name, a7.borrower_address

	HAVING COUNT(a6.bookLoans_bookID) > 5 
	;
	GO

		EXEC uspQuery6


	--query 7
	USE db_library
	GO

	CREATE PROCEDURE dbo.uspQuery7
	AS
	SELECT a3.book_title, a5.copies_number

	FROM tbl_books a3
	JOIN tbl_copies a5 ON a5.copies_bookID = a3.book_id
	JOIN tbl_libraryBranch a1 ON branch_id = a5.copies_branchID
	JOIN tbl_authors a4 ON a4.author_bookID = a3.book_id

	WHERE author_name = 'Stephen King' AND branch_name = 'Central'
	;
	GO
					EXEC uspQuery7