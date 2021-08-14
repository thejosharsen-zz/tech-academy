/*===================================
	TABLE CREATION 
=====================================*/

CREATE TABLE tbl_classes (
	class_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	class_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_students (
	student_id INT PRIMARY KEY IDENTITY(1,1),
	student_name VARCHAR(50),
	class_id INT,
	instructor_id INT
);

CREATE TABLE tbl_instructors (
	instructor_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	instructor_name VARCHAR(50) NOT NULL
);

/*===================================
	FOREIGN KEY ASSIGNMENTS 
=====================================*/

ALTER TABLE tbl_students
ADD FOREIGN KEY (class_id) REFERENCES tbl_classes(class_id);

ALTER TABLE tbl_students
ADD FOREIGN KEY (instructor_id) REFERENCES tbl_instructors(instructor_id);

/*===================================
	INSERTING DATA INTO TABLES
=====================================*/

INSERT INTO tbl_classes
	(class_name)
	VALUES
	('Software Developer Boot Camp'),
	('C# Boot Camp')
;

INSERT INTO tbl_students
	(student_name)
	VALUES
	('micky mouse'),
	('elmer fudd'),
	('bugs bunny'),
	('tweety bird'),
	('daffy duck'),
	('road runner')
;

INSERT INTO tbl_instructors
	(instructor_name)
	VALUES
	('bob ross'),
	('john wick')
;

/*===================================
	ASSIGN STUDENTS TO A CLASS
=====================================*/

UPDATE tbl_students
SET class_id = 1 /* Software and Developer Boot Camp */
WHERE student_id <= 3;

UPDATE tbl_students
SET class_id = 2 /* C# Boot Camp*/
WHERE student_id >= 4;

/*===================================
	ASSIGN STUDENTS AN INSTRUCTOR
=====================================*/
UPDATE tbl_students
SET instructor_id = 1 /* bob ross */
WHERE student_id <= 3

UPDATE tbl_students
SET instructor_id = 2 /* john wick */
WHERE student_id >= 4

/*===================================
	QUERIES
=====================================*/

SELECT instructor_name
FROM tbl_instructors

/* --- */

SELECT student_name
FROM tbl_students
ORDER BY student_name ASC;

/* --- */

SELECT class_name, student_name, instructor_name
FROM tbl_students
INNER JOIN tbl_classes ON tbl_students.class_id=tbl_classes.class_id
INNER JOIN tbl_instructors ON tbl_students.instructor_id=tbl_instructors.instructor_id;