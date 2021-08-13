/* ==================================================


	School Database Assignment 

	Written by Josh Cummings


===================================================== */

CREATE TABLE tbl_classes (
	class_id INT NOT NULL PRIMARY KEY IDENTITY (10,5),
	class_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_instructors (
	instructor_id INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	instructor_fname VARCHAR(50) NOT NULL,
	instructor_lname VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_students (
	student_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	student_fname VARCHAR(50) NOT NULL,
	student_lname VARCHAR(50) NOT NULL,
	class_id INT NOT NULL FOREIGN KEY REFERENCES tbl_classes(class_id),
	instructor_id INT NOT NULL FOREIGN KEY REFERENCES tbl_instructors(instructor_id)
);