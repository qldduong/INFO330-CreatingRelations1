







CREATE TABLE IF NOT EXISTS student_courses(add_count INTEGER PRIMARY KEY NOT NULL, studentid INT, 




-------------------------

-- Creating the timeslots table
CREATE TABLE IF NOT EXISTS timeslots(id INT PRIMARY KEY NOT NULL, start TIME, end TIME, CHECK (end > start)); 

-- Inserting data into the timeslots table
INSERT INTO timeslots VALUES (11, '08:30:00', '9:20:00');
INSERT INTO timeslots VALUES (22, '10:30:00', '11:20:00');
INSERT INTO timeslots VALUES (33, '12:30:00', '13:20:00');
INSERT INTO timeslots VALUES (44, '14:30:00', '15:20:00');






-- Updating the rooms table 
DROP TABLE rooms;
CREATE TABLE IF NOT EXISTS rooms(id INTEGER PRIMARY KEY NOT NULL, number INT NOT NULL, buildingid INTEGER NOT NULL, seating INT, FOREIGN KEY (buildingid) REFERENCES buildings(id)); 


-- Inserting data into the updated rooms table
INSERT INTO rooms (number, buildingid, seating) VALUES (120, (SELECT id FROM buildings WHERE name='Raitt Hall'), 70);
INSERT INTO rooms (number, buildingid, seating) VALUES (777, (SELECT id FROM buildings WHERE name='Somewhere Tower'), 500); 
INSERT INTO rooms (number, buildingid, seating) VALUES (139, (SELECT id FROM buildings WHERE name='Babel'), 30);





-- Creating the schedule table
CREATE TABLE IF NOT EXISTS schedule(id int PRIMARY KEY NOT NULL, coursecode VARCHAR(40), roomid INTEGER, timeslotid INT,
FOREIGN KEY (coursecode) REFERENCES courses(code), FOREIGN KEY (roomid) REFERENCES rooms(id), FOREIGN KEY (timeslotid) REFERENCES timeslots(id),
UNIQUE(roomid, timeslotid));

-- Inserting data into the schedule table
INSERT INTO schedule VALUES (100, 'INFO448A', 1, 11);
INSERT INTO schedule VALUES (200, 'INFO449A', 2, 22);
INSERT INTO schedule VALUES (300, 'BAW100A', 3, 33);
-- Test line: INSERT INTO schedule VALUES (400, 'INFO449A', 1, 11);
-- Test line: INSERT INTO schedule VALUES (500, 'BAW100A', 2, 11);




