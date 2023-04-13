-- Creating the students table

-- Added a checks to make sure the id field is not null + to make sure the table doesn't already exist for the sake of good practice
CREATE TABLE IF NOT EXISTS students(id INT PRIMARY KEY NOT NULL, firstname VARCHAR(40), lastname VARCHAR(80), age INT);


-- Inserting data into the students table:
INSERT INTO students VALUES(1, 'Fred', 'Flintstone', 35);
INSERT INTO students VALUES(2, 'Wilma', 'Flintstone', 29);
INSERT INTO students VALUES(3, 'Barney', 'Rubble', 33);
INSERT INTO students VALUES(4, 'Betty', 'Rubble', 29);
INSERT INTO students VALUES(5, 'Pebbles', 'Flintstone', 1);
INSERT INTO students VALUES(6, 'Bam-Bam', 'Rubble', 1);

-- Inserting some additional students 
INSERT INTO students VALUES(7, 'Jaewon', 'Seung', 25);
INSERT INTO students VALUES(8, 'Jihyun', 'Oh', 21);
INSERT INTO students VALUES(9, 'Giselle', 'Carter', 41);
INSERT INTO students VALUES(10, 'Fang', 'Runin', 21);
INSERT INTO students VALUES(11, 'Robin', 'Swift', 22);
INSERT INTO students VALUES(12, 'Victoire', 'Desgraves', 22);




