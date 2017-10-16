USE db_books
GO

CREATE PROCEDURE [dbo].[Populate_db_books]
AS
BEGIN

	CREATE TABLE tbl_books (
		books_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		books_title VARCHAR(50) NOT NULL,
		books_publisher VARCHAR(50) NOT NULL
	);

	CREATE TABLE tbl_authors (
		authors_book INT PRIMARY KEY NOT NULL,
		authors_name VARCHAR(50) NOT NULL
	);

	CREATE TABLE tbl_publishers (
		publishers_name VARCHAR(50) NOT NULL,
		publishers_address VARCHAR(200) NOT NULL,
		publishers_phone VARCHAR(50) NOT NULL
	);

	CREATE TABLE tbl_loans (
		loans_book INT NOT NULL,
		loans_branch INT NOT NULL,
		loans_cardno INT NOT NULL,
		loans_dateout VARCHAR(50) NOT NULL,
		loans_datedue VARCHAR(50) NOT NULL
	);

	CREATE TABLE tbl_copies (
		copies_book INT NOT NULL,
		copies_branch INT NOT NULL,
		copies_NoCopies VARCHAR(50) NOT NULL,
	);

	CREATE TABLE tbl_borrowers (
		borrowers_cardno INT NOT NULL,
		borrowers_name VARCHAR(50) NOT NULL,
		borrowers_address VARCHAR(50) NOT NULL,
		borrowers_phone VARCHAR(50) NOT NULL
	);

	CREATE TABLE tbl_branch (
		branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		branch_name VARCHAR(50) NOT NULL,
		branch_address VARCHAR(50) NOT NULL
	);


	INSERT INTO tbl_books
		(books_title, books_publisher)
		VALUES 
		('The Lost Tribe', 'Picador'),
		('The Canal House', 'Mariner Books'),	
		('Adventures of Huckleberry Finn', 'Chatto & Windus'),
		('The Adventures of Tom Sawyer', 'American Publishing Company'),		
		('Harry Potter', 'Bloomsbury'),
		('Fantastic Beasts', 'Bloomsbury'),
		('It', 'Viking Press'),
		('The Shining', 'Doubleday'),
		('David Copperfield', 'Chapman & Hall'),
		('A Christmas Carol', 'Bradbury & Evans'),
		('The Hobbit', 'Allen & Unwin'),
		('Lord Of The Rings', 'Allen & Unwin'),
		('The Cat in the Hat', 'Random House'),
		('Green Eggs and Ham', 'Random House'),		
		('The Ruins of Gorlan', 'Random House'),
		('The Outcasts', 'Random House'),
		('City of Bones', 'Margaret K. McElderry'),
		('Clockwork Prince', 'Margaret K. McElderry'),
		('The Host', 'Little, Brown and Company'),
		('Twilight', 'Little, Brown and Company')

	;
	SELECT * FROM tbl_books;


	INSERT INTO tbl_authors
		(authors_book, authors_name)
		VALUES
		(1, 'Mark Lee'),
		(2, 'Mark Lee'),
		(3, 'Mark Twain'),
		(4, 'Mark Twain'),
		(5, 'JK Rowling'),
		(6, 'JK Rowling'),
		(7, 'Stephen King'),
		(8, 'Stephen King'),
		(9, 'Charles Dickens'),
		(10, 'Charles Dickens'),
		(11, 'J.R.R. Tolkien'),
		(12, 'J.R.R. Tolkien'),
		(13, 'Dr. Seuss'),	
		(14, 'Dr. Seuss'),	
		(15, 'John Flanagan'),
		(16, 'John Flanagan'),
		(17,'Cassandra Clare'),
		(18,'Cassandra Clare'),
		(19, 'Stephenie Meyer'),
		(20, 'Stephenie Meyer')
	;
	SELECT * FROM tbl_authors;

	INSERT INTO tbl_publishers
		(publishers_name, publishers_address, publishers_phone)
		VALUES 
		('Picador', '16365 James Madison Highway Gordonsville, VA 22942', '888-330-8477'),		
		('Mariner Books', '215 Park Avenue South New York NY 10003', '800-225-3362'),
		('Chatto & Windus', '20 Vauxhall Bridge Rd, Westminster, London SW1V 2SA, UK', '+44 20 7840 8400'),
		('American Publishing Company', '220 S. River Ridge Cir. Burnsville, MN 55337', '651-699-1111'),
		('Bloomsbury', '1385 Broadway, 5th Floor New York, NY 10018', '212-419-5300'),
		('Viking Press', '', '212-366-2636'),
		('Doubleday', '1745 Broadway New York, NY 10019', '1-866-250-3166'),		
		('Chapman & Hall', 'Albert House, 4th floor, 1 - 4 Singer Street London EC2A 4BQ UK', '44-20-7017-6000'),
		('Bradbury & Evans', '', ''),
		('Allen & Unwin', '83 Alexander St Crows Nest, NSW 2065 AUSTRALIA', '61 2 8425 0100'),
		('Random House', '1745 Broadway New York, NY 10019', '212-782-9000'),
		('Margaret K. McElderry', '1230 Avenue of the Americas New York NY 10020 USA', '212-698-7200'),
		('Little, Brown and Company', '3 Center Plz Ste 100 Boston, MA 02108', '617-227-0730')

	;
	SELECT * FROM tbl_publishers;
	
	INSERT INTO tbl_loans
		(loans_book, loans_branch, loans_cardno, loans_dateout, loans_datedue)
		VALUES 
		(1, 1, 1, '10/1', '11/7'),
		(2, 1, 2, '10/1', '11/7'),
		(3, 1, 3, '10/1', '11/7'),
		(4, 1, 4, '10/1', '11/7'),
		(4, 1, 5, '10/1', '11/7'),
		(5, 1, 6, '10/1', '11/7'),
		(6, 1, 7, '10/1', '11/7'),
		(7, 1, 8, '10/1', '11/7'),
		(8, 1, 1, '10/1', '11/7'),
		(9, 1, 2, '10/1', '11/7'),
		(10, 1, 3, '10/1', '11/7'),
		(11, 1, 4, '10/1', '11/7'),
		(12, 1, 5, '10/1', '11/7'),
		(13, 1, 6, '10/1', '11/7'),
		(14, 1, 7, '10/1', '11/7'),
		(15, 1, 8, '10/1', '11/7'),
		(16, 1, 1, '10/1', '11/7'),
		(17, 1, 2, '10/1', '11/7'),
		(18, 1, 3, '10/1', '11/7'),
		(19, 1, 4, '10/1', '11/7'),
		(20, 1, 5, '10/1', '11/7'),
		(1, 1, 6, '10/1', '11/7'),
		(2, 1, 7, '10/1', '11/7'),
		(3, 1, 8, '10/1', '11/7'),
		(4, 1, 1, '10/1', '11/7'),

		(5, 2, 2,'10/1', '11/7'),
		(6, 2, 3,'10/1', '11/7'),
		(7, 2, 4,'10/1', '11/7'),
		(8, 2, 5,'10/1', '11/7'),
		(9, 2, 6,'10/1', '11/7'),
		(10, 2, 7,'10/1', '11/7'),
		(11, 2, 8,'10/1', '11/7'),
		(12, 2, 1,'10/1', '11/7'),
		(13, 2, 2,'10/1', '11/7'),
		(14, 2, 3,'10/1', '11/7'),
		(15, 2, 4,'10/1', '11/7'),
		(16, 2, 5,'10/1', '11/7'),
		(17, 2, 6,'10/1', '11/7'),
		(18, 2, 7,'10/1', '11/7'),
		(19, 2, 8,'10/1', '11/7'),
		(20, 2, 1,'10/1', '11/7'),
		(1, 2, 2,'10/1', '11/7'),
		(2, 2, 3,'10/1', '11/7'),
		(3, 2, 4,'10/1', '11/7'),
		(4, 2, 5,'10/1', '11/7'),
		(5, 2, 6,'10/1', '11/7'),
		(6, 2, 7,'10/1', '11/7'),
		(7 ,2, 8,'10/1', '11/7'),
		(8, 2, 1,'10/1', '11/7'),
		(9, 2, 2,'10/1', '11/7')

	;
	SELECT * FROM tbl_loans;

	INSERT INTO tbl_copies
		(copies_branch, copies_NoCopies, copies_book)
		VALUES 
		(1,'20', 1),
		(1,'20', 2),
		(1,'20', 3),
		(1,'20', 4),
		(1,'20', 5),
		(1,'20', 6),
		(1,'20', 7),
		(1,'20', 8),
		(1,'20', 9),
		(1,'20', 10),
		(1,'20', 11),
		(1,'20', 12),
		(1,'20', 13),
		(1,'20', 14),
		(1,'20', 15),
		(1,'20', 16),
		(1,'20', 17),
		(1,'20', 18),
		(1,'20', 19),
		(1,'20', 20),
		(2, '15', 1),
		(2, '15', 2),
		(2, '15', 3),
		(2, '15', 4),
		(2, '15', 5),
		(2, '15', 6),
		(2, '15', 7),
		(2, '15', 8),
		(2, '15', 9),
		(2, '15', 10),
		(2, '15', 11),
		(2, '15', 12),
		(2, '15', 13),
		(2, '15', 14),
		(2, '15', 15),
		(2, '15', 16),
		(2, '15', 17),
		(2, '15', 18),
		(2, '15', 19),
		(2, '15', 20),
		(3,'25', 1),
		(3,'25', 2),
		(3,'25', 3),
		(3,'25', 4),
		(3,'25', 5),
		(3,'25', 6),
		(3,'25', 7),
		(3,'25', 8),
		(3,'25', 9),
		(3,'25', 10),
		(3,'25', 11),
		(3,'25', 12),
		(3,'25', 13),
		(3,'25', 14),
		(3,'25', 15),
		(3,'25', 16),
		(3,'25', 17),
		(3,'25', 18),
		(3,'25', 19),
		(3,'25', 20),
		(4,'10', 1),
		(4,'10', 2),
		(4,'10', 3),
		(4,'10', 4),
		(4,'10', 5),
		(4,'10', 6),
		(4,'10', 7),
		(4,'10', 8),
		(4,'10', 9),
		(4,'10', 10),
		(4,'10', 11),
		(4,'10', 12),
		(4,'10', 13),
		(4,'10', 14),
		(4,'10', 15),
		(4,'10', 16),
		(4,'10', 17),
		(4,'10', 18),
		(4,'10', 19),
		(4,'10', 20)
	;
	SELECT * FROM tbl_copies

	INSERT INTO tbl_borrowers
		(borrowers_cardno, borrowers_name, borrowers_address, borrowers_phone)
		VALUES 
		(1,'Abby','123 sw north blvd', '123-123-1234'),
		(2,'Ashley', '123 sw east blvd', '123-123-1234'),
		(3,'Tyler', '123 sw west blvd', '123-123-1234'),
		(4,'Arianna', '123 sw south blvd', '123-123-1234'),
		(5,'Justin', '123 nw east blvd', '123-123-1234'),
		(6,'Lexi', '123 nw west blvd', '123-123-1234'),
		(7,'Alfred', '123 nw south blvd', '123-123-1234'),
		(8,'Jake', '123 nw north blvd', '123-123-1234')
	;
	SELECT * FROM tbl_borrowers;
	  
	INSERT INTO tbl_branch
		(branch_name, branch_address)
		VALUES		
		('Central', '801 SW 10th Avenue Portland, OR 97205'),
		('Sharpstown', '7660 Clarewood Houston, Texas 77036'),
		('Beaverton Library', '11200 SW Murray Scholls Pl, Beaverton, OR 97007'),
		('Aloha Library', '17455 SW Farmington Rd Suite 26A, Aloha, OR 97078')
	;
	SELECT * FROM tbl_branch;




	

	/*-------------------------------------------------------------------------------------------------------------------------
             How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
	--------------------------------------------------------------------------------------------------------------------------*/
		SELECT copies_NoCopies, branch_name AS Branch
		From tbl_copies
		INNER JOIN tbl_branch ON tbl_branch.branch_id = tbl_copies.copies_branch
		INNER JOIN tbl_books ON tbl_books.books_id = tbl_copies.copies_book
		where books_title = 'The Lost Tribe' and branch_name = 'Sharpstown'

	/*-------------------------------------------------------------------------------------------------------------------------
            How many copies of the book titled "The Lost Tribe" are owned by each library branch?
	--------------------------------------------------------------------------------------------------------------------------*/

		SELECT copies_NoCopies, branch_name AS Branch
		From tbl_copies
		INNER JOIN tbl_branch ON tbl_branch.branch_id = tbl_copies.copies_branch
		INNER JOIN tbl_books ON tbl_books.books_id = tbl_copies.copies_book
		where books_title = 'The Lost Tribe'

		/*-----------------------------------------------------------------------------------
            Retrieve the names of all borrowers who do not have any books checked out.
	---------------------------------------------------------------------------------------------------*/

		SELECT
			CASE 
			WHEN borrowers_cardno = loans_cardno AND loans_cardno = 0 THEN borrowers_name
			ELSE NULL
			END
		FROM tbl_borrowers
		FULL OUTER JOIN tbl_loans ON tbl_loans.loans_cardno = tbl_borrowers.borrowers_cardno

		/*-----------------------------------------------------------------------------------
            For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, 
			retrieve the book title, the borrower's name, and the borrower's address.
	---------------------------------------------------------------------------------------------------*/

		SELECT books_title, borrowers_name, borrowers_address
		FROM tbl_books
		INNER JOIN tbl_loans ON tbl_loans.loans_book = tbl_books.books_id
		INNER JOIN tbl_borrowers ON tbl_borrowers.borrowers_cardno = tbl_loans.loans_cardno
		INNER JOIN tbl_branch ON tbl_branch.branch_id = tbl_loans.loans_branch
		WHERE branch_name = 'Sharpstown' and loans_datedue = CONVERT (VARCHAR(50), CURRENT_TIMESTAMP)  

		/*---------------------------------------------------------------------------------------------------------------
            For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
	--------------------------------------------------------------------------------------------------------------------*/

		SELECT branch_name, COUNT(loans_cardno) AS loans_cardno
		FROM tbl_branch
		INNER JOIN tbl_loans ON tbl_loans.loans_branch = tbl_branch.branch_id
		GROUP BY branch_name

		/*---------------------------------------------------------------------------------------------------------------
            Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.
	--------------------------------------------------------------------------------------------------------------------*/

		SELECT DISTINCT borrowers_name, borrowers_address, COUNT(loans_cardno) AS loans_cardno
		FROM tbl_loans
		INNER JOIN tbl_borrowers ON  tbl_borrowers.borrowers_cardno = tbl_loans.loans_cardno 
		GROUP BY borrowers_name, borrowers_address
		HAVING COUNT(loans_cardno) >= 5 
		
		/*---------------------------------------------------------------------
            For each book authored (or co-authored) by "Stephen King", 
			retrieve the title and the number of copies owned 
			by the library branch whose name is "Central".
	---------------------------------------------------------------------------*/

		SELECT authors_name, books_title, branch_name, copies_NoCopies
		FROM tbl_books 
		INNER JOIN tbl_authors ON tbl_authors.authors_book = tbl_books.books_id
		INNER JOIN tbl_copies ON tbl_copies.copies_book = tbl_books.books_id
		INNER JOIN tbl_branch ON tbl_branch.branch_id = tbl_copies.copies_branch
		WHERE authors_name = 'Stephen King' AND branch_name = 'Central'

END

GO