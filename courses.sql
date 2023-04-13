-- Creating the courses table

-- Added a checks to make sure the id field is not null + to make sure the table doesn't already exist for the sake of good practice
CREATE TABLE IF NOT EXISTS courses(code varchar(40) PRIMARY KEY NOT NULL, start DATE NOT NULL, end DATE NOT NULL CHECK (end > start), description VARCHAR(400));

-- Inserting data into the courses table
INSERT INTO courses VALUES('INFO330A', '2023-04-01', '2023-06-01', 'Data and databases');
INSERT INTO courses VALUES('INFO314', '2023-04-01', '2023-06-01', 'Networking and distributed Systems');
INSERT INTO courses VALUES('INFO448A', '2023-11-25', '2023-12-19', 'Introduction to iOS');
INSERT INTO courses VALUES('INFO449A', '2023-11-25', '2023-12-19', 'Introduction to Android');
INSERT INTO courses VALUES('BAW010', '2023-04-01', '2023-06-01', 'Introduction to Basket-Weaving');
INSERT INTO courses VALUES('BAW100A', '2023-04-01', '2023-06-01', 'Underwater Basket-Weaving');



