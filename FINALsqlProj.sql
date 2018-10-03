CREATE DATABASE db_library
USE db_library




--LIBRARY BRANCH TABLE

	CREATE TABLE tbl_libraryBranch (
		branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		branch_name VARCHAR(50) NOT NULL,
		branch_address VARCHAR(50) NOT NULL
	);


	INSERT INTO tbl_libraryBranch
		(branch_name, branch_address)
		VALUES 
		('Sharpstown', '666 Branded'),
		('Central', '420 Jared'),
		('Midtown', '707 Sheets'),
		('Uptown', '69 Down')
	;
	SELECT * FROM tbl_libraryBranch;





	--PUBLISHER TABLE

	CREATE TABLE tbl_publisher (
		publisher_name VARCHAR(50) PRIMARY KEY NOT NULL,
		publisher_address VARCHAR(50) NOT NULL,
		publisher_phone VARCHAR(50) NOT NULL
	);



	INSERT INTO tbl_publisher
		(publisher_name, publisher_address, publisher_phone)
		VALUES 
		('Dill Shale', '909 Waste', '701-426-1111'),
		('Morty McCall', '850 Nepal', '701-426-2222'),
		('Peter Parker', '660 Lesp', '701-426-3333'),
		('Flash Gordon', '504 Dewald', '701-426-4444')
	;
	SELECT * FROM tbl_publisher;





	--BOOKS TABLE

	CREATE TABLE tbl_books (
		book_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
		book_title VARCHAR(50) NOT NULL,
		book_publisher VARCHAR(50) NOT NULL CONSTRAINT fk_publisher_name FOREIGN KEY REFERENCES tbl_publisher(publisher_name) ON UPDATE CASCADE ON DELETE CASCADE
	);



		INSERT INTO tbl_books
		(book_title, book_publisher)
		VALUES 
		('The Lost Tribe', 'Dill Shale'),
		('Crown in the Ice', 'Morty McCall'),
		('Green Zone', 'Dill Shale'),
		('Short History of Nearly Everything', 'Morty McCall'),
		('Elegant Universe', 'Dill Shale'),
		('Scripted', 'Morty McCall'),
		('Christine', 'Dill Shale'),
		('The Shining', 'Peter Parker'),
		('Salems Lot', 'Peter Parker'),
		('Cujo', 'Peter Parker'),
		('Pet Cemetary', 'Peter Parker'),
		('Elysium Weeping', 'Dill Shale'),
		('The Last Poet', 'Flash Gordon'),
		('Thomas Crown Affair', 'Flash Gordon'),
		('Theif of Godard', 'Dill Shale'),
		('Waiting for Godot', 'Flash Gordon'),
		('Reaper', 'Flash Gordon'),
		('Hunt for Red October', 'Flash Gordon'),
		('Cracking the Coding Interview', 'Morty McCall'),
		('Creed of the Heir', 'Morty McCall'),
		('Seventh Town', 'Morty McCall'),
		('Drown the Future', 'Dill Shale'),
		('High Rise', 'Morty McCall'),
		('Crash', 'Dill Shale'),
		('Titan In the City', 'Morty McCall')
	;
	SELECT * FROM tbl_books;




	--AUTHORS TABLE

	CREATE TABLE tbl_authors (
		author_bookID INT  NULL CONSTRAINT fk_bookID FOREIGN KEY REFERENCES tbl_books(book_id) ON UPDATE CASCADE ON DELETE CASCADE,
		author_name VARCHAR(50) NOT NULL
	);



	INSERT INTO tbl_authors
		(author_bookID, author_name)
		VALUES 
		(100, 'Mark Lee'),
		(101, 'Bruce Wayne'),
		(102, 'Clark Kent'),
		(103, 'Barry Allen'),
		(104, 'Tony Stark'),
		(105, 'Scott Lang'),
		(106, 'Stephen King'),
		(107, 'Stephen King'),
		(108, 'Stephen King'),
		(109, 'Stephen King'),
		(110, 'Stephen King'),
		(111, 'Natasha Romanoff'),
		(112, 'Lex Luthor'),
		(113, 'Steve Rogers'),
		(114, 'Bruce Banner'),
		(115, 'Mark Lee'),
		(116, 'Bruce Wayne'),
		(117, 'Clark Kent'),
		(118, 'Barry Allen'),
		(119, 'Tony Stark'),
		(120, 'Scott Lang'),
		(121, 'Natasha Romanoff'),
		(122, 'Bruce Banner'),
		(123, 'Natasha Romanoff'),
		(124, 'Steve Rogers')
	;

	SELECT * FROM tbl_authors;






	--BOOK COPIES TABLE
	CREATE TABLE tbl_copies (
		copies_bookID INT NOT NULL CONSTRAINT fk_copiesBook_id FOREIGN KEY REFERENCES tbl_books(book_id) ON UPDATE CASCADE ON DELETE CASCADE,
		copies_branchID INT NOT NULL CONSTRAINT fk_branch_id FOREIGN KEY REFERENCES tbl_libraryBranch(branch_id) ON UPDATE CASCADE ON DELETE CASCADE,
		copies_number INT NOT NULL
	);	



	INSERT INTO tbl_copies
		(copies_bookID, copies_branchID, copies_number)
		VALUES 
		(100, 1, 10),
		(100, 2, 10),
		(100, 3, 10),
		(100, 4, 10),
		(101, 1, 10),
		(101, 2, 10),
		(101, 3, 10),
		(101, 4, 10),
		(102, 1, 10),
		(102, 2, 10),
		(102, 3, 10),
		(102, 4, 10),
		(103, 1, 10),
		(103, 2, 10),
		(103, 3, 10),
		(103, 4, 10),
		(104, 1, 10),
		(104, 2, 10),
		(104, 3, 10),
		(104, 4, 10),
		(105, 1, 10),
		(105, 2, 10),
		(105, 3, 10),
		(105, 4, 10),
		(106, 1, 10),
		(106, 2, 10),
		(106, 3, 10),
		(106, 4, 10),
		(107, 1, 10),
		(107, 2, 10),
		(107, 3, 10),
		(107, 4, 10),
		(108, 1, 10),
		(108, 2, 10),
		(108, 3, 10),
		(108, 4, 10),
		(109, 1, 10),
		(109, 2, 10),
		(109, 3, 10),
		(109, 4, 10),
		(110, 1, 10),
		(110, 2, 10),
		(110, 3, 10),
		(110, 4, 10),
		(111, 1, 10),
		(111, 2, 10),
		(111, 3, 10),
		(111, 4, 10),
		(112, 1, 10),
		(112, 2, 10),
		(112, 3, 10),
		(112, 4, 10),
		(113, 1, 10),
		(113, 2, 10),
		(113, 3, 10),
		(113, 4, 10),
		(114, 1, 10),
		(114, 2, 10),
		(114, 3, 10),
		(114, 4, 10),
		(115, 1, 10),
		(115, 2, 10),
		(115, 3, 10),
		(115, 4, 10),
		(116, 1, 10),
		(116, 2, 10),
		(116, 3, 10),
		(116, 4, 10),
		(117, 1, 10),
		(117, 2, 10),
		(117, 3, 10),
		(117, 4, 10),
		(118, 1, 10),
		(118, 2, 10),
		(118, 3, 10),
		(118, 4, 10),
		(119, 1, 10),
		(119, 2, 10),
		(119, 3, 10),
		(119, 4, 10),
		(120, 1, 10),
		(120, 2, 10),
		(120, 3, 10),
		(120, 4, 10),
		(121, 1, 10),
		(121, 2, 10),
		(121, 3, 10),
		(121, 4, 10),
		(122, 1, 10),
		(122, 2, 10),
		(122, 3, 10),
		(122, 4, 10),
		(123, 1, 10),
		(123, 2, 10),
		(123, 3, 10),
		(124, 4, 10)
		;

	SELECT * FROM tbl_copies;


	

	--BORROWER TABLE

	CREATE TABLE tbl_borrower (
		borrower_cardNum INT PRIMARY KEY NOT NULL IDENTITY (500,1),
		borrower_name VARCHAR(50)  NULL,
		borrower_address VARCHAR(50)  NULL,
		borrower_phone VARCHAR(50)  NULL
	);



	INSERT INTO tbl_borrower
		(borrower_name, borrower_address, borrower_phone)
		VALUES 
		('margret nyguen', '2020 Barrel Lane', '384-576-2899'),
		('mary fischer', '3030 Change Ave', '384-784-4856'),
		('arnold holden', '4040 Dim St', '385-475-3944'),
		('kem byesan', '5050 Charles Lane', '384-485-4855'),
		('margre large', '6060 Liter Alley', '384-500-2899'),
		('stan theman', '7070 Nightmare St', '384-600-4856'),
		('holden caulfield', '8080 Phony Dr', '385-700-3944'),
		('natalie tyesan', '9090 Lucky Lane',  '384-800-4855'),
		('tide wash', '1010 ChaCha', '768-900-3749')
	;
	SELECT * FROM tbl_borrower;





	--BOOK LOANS TABLE
	CREATE TABLE tbl_bookLoans (
		bookLoans_bookID INT  NULL CONSTRAINT fk_loansBook_id FOREIGN KEY REFERENCES tbl_books(book_id) ON UPDATE CASCADE ON DELETE CASCADE,
		bookLoans_branchID INT  NULL CONSTRAINT fk_loansBranch_id FOREIGN KEY REFERENCES tbl_libraryBranch(branch_id) ON UPDATE CASCADE ON DELETE CASCADE,
		bookLoans_cardNum INT  NULL CONSTRAINT fk_loansCardNum FOREIGN KEY REFERENCES tbl_borrower(borrower_CardNum) ON UPDATE CASCADE ON DELETE CASCADE,
		bookLoans_dateOUT VARCHAR(50)  NULL,
		bookLoans_dateDUE VARCHAR(50)  NULL
	);



		INSERT INTO tbl_bookLoans
		(bookLoans_bookID, bookLoans_branchID, bookLoans_cardNum, bookLoans_dateOUT, bookLoans_dateDUE)
		VALUES 
		(100, 1, 500, '09/10/18', '09/28/18'),
		(101, 2, 501, '09/10/18', '09/28/18'),
		(102, 3, 502, '09/10/18', '09/28/18'),
		(103, 4, 503, '09/10/18', '09/28/18'),
		(104, 1, 504, '09/10/18', '09/28/18'),
		(105, 2, 505, '09/10/18', '09/28/18'),
		(106, 3, 506, '09/10/18', '09/28/18'),
		(107, 4, 507, '09/10/18', '09/28/18'),
		(108, 1, 507, '09/10/18', '09/28/18'),
		(109, 2, 501, '09/10/18', '09/28/18'),
		(110, 3, 501, '09/10/18', '09/28/18'),
		(111, 4, 501, '09/10/18', '09/28/18'),
		(112, 1, 501, '09/10/18', '09/28/18'),
		(113, 2, 501, '09/10/18', '09/28/18'),
		(114, 3, 501, '09/10/18', '09/28/18'),
		(115, 4, 502, '09/10/18', '09/28/18'),
		(116, 1, 502, '09/10/18', '09/28/18'),
		(116, 1, 502, '09/10/18', '09/28/18'),
		(117, 2, 502, '09/10/18', '09/28/18'),
		(118, 3, 502, '09/10/18', '09/28/18'),
		(119, 4, 501, '09/10/18', '09/28/18'),
		(120, 1, 501, '09/10/18', '09/28/18'),
		(121, 2, 507, '09/10/18', '09/28/18'),
		(122, 3, 501, '09/10/18', '09/28/18'),
		(123, 4, 501, '09/10/18', '09/28/18'),
		(124, 1, 501, '09/10/18', '09/28/18'),
		(123, 2, 502, '09/10/18', '09/28/18'),
		(122, 3, 501, '09/10/18', '09/28/18'),
		(121, 4, 501, '09/10/18', '09/28/18'),
		(120, 1, 503, '09/10/18', '09/28/18'),
		(119, 2, 501, '09/10/18', '09/28/18'),
		(118, 3, 501, '09/10/18', '09/28/18'),
		(117, 4, 501, '09/10/18', '09/28/18'),
		(116, 2, 501, '09/10/18', '09/28/18'),
		(115, 1, 503, '09/10/18', '09/28/18'),
		(114, 3, 501, '09/10/18', '09/28/18'),
		(113, 1, 501, '09/10/18', '09/28/18'),
		(112, 4, 501, '09/10/18', '09/28/18'),
		(111, 1, 503, '09/10/18', '09/28/18'),
		(110, 2, 501, '09/10/18', '09/28/18'),
		(109, 3, 504, '09/10/18', '09/28/18'),
		(108, 2, 501, '09/10/18', '09/28/18'),
		(107, 1, 501, '09/10/18', '09/28/18'),
		(106, 4, 501, '09/10/18', '09/28/18'),
		(105, 1, 504, '09/10/18', '09/28/18'),
		(104, 2, 501, '09/10/18', '09/28/18'),
		(103, 3, 506, '09/10/18', '09/28/18'),
		(102, 2, 501, '09/10/18', '09/28/18'),
		(101, 4, 501, '09/10/18', '09/28/18'),
		(100, 2, 505, '09/10/18', '09/28/18'),
		(120, 1, 501, '09/10/18', '09/28/18'),
		(110, 3, 501, '09/10/18', '09/28/18'),
		(105, 3, 501, '09/10/18', '09/28/18'),
		(100, 4, 501, '09/10/18', '10/03/18'),
		(null, null, 508, null, null)
	;

	SELECT * FROM tbl_bookLoans;
