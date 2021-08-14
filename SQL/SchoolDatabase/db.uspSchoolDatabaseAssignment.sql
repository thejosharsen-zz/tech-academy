CREATE TABLE tbl_classes (
	class_id INT NOT NULL PRIMARY KEY IDENTITY (5,5),
	class_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_instructors (
	instructor_id INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	instructor_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_students ( /* this table needs to come after classes and instructors */
	student_id INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	student_name VARCHAR(50) NOT NULL,
	class_id INT NOT NULL FOREIGN KEY REFERENCES tbl_classes(class_id),
	instructor_id INT NOT NULL FOREIGN KEY REFERENCES tbl_instructors(instructor_id)
);

INSERT INTO tbl_classes
	(class_name)
	VALUES
	('Software Developer Boot Camp'),
	('C# Boot Camp')
;

INSERT INTO tbl_students
	(student_name)
	VALUES
	('bob ross'),
	('spongebob squarepants'),
	('tim burdon'),
	('johnny ive'),
	('steve jobs'),
	('bill gates'),
	('bob cook')
;

INSERT INTO tbl_instructors
	(instructor_name)
	VALUES
	('rick ross'),
	('john wick')
;

UPDATE tbl_students
SET class_id = 5
WHERE student_name >= 'A' AND student_name < 'L'

select student_name
from tbl_students
WHERE student_name >= 'A%' AND student_name < 'L%'