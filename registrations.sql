-- Creating the student_courses table

CREATE TABLE IF NOT EXISTS student_courses(add_count INTEGER PRIMARY KEY NOT NULL, studentid INT, 
course VARCHAR(40) NOT NULL, grade REAL DEFAULT NULL, FOREIGN KEY (studentid) REFERENCES students(id), FOREIGN KEY(course) REFERENCES courses(code));



-- Inserting students / courses into the registrations table


-- Betty Rubble, 1 class
INSERT INTO student_courses (studentid, course) VALUES (4, 'BAW010'); -- Betty Rubble

-- Fred Flintstone, 3 classes
INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO330A');
INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO448A');
INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO314');

-- Barney Rubble, 2 classes
INSERT INTO student_courses (studentid, course) VALUES (3, 'INFO330A');
INSERT INTO student_courses (studentid, course) VALUES (3, 'INFO449A');

-- Wilma Flintstone, 2 classes
INSERT INTO student_courses (studentid, course) VALUES (2, 'BAW010');
INSERT INTO student_courses (studentid, course) VALUES (2, 'BAW100');


