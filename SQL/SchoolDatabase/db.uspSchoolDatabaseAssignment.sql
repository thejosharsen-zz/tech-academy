CREATE TABLE tbl_classes (
	class_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	class_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_students (
	student_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	student_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_instructors (
	instructor_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	instructor_name VARCHAR(50) NOT NULL
);