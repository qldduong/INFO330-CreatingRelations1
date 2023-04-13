-- Creating the buildings table




-- Creating the buildings table
-- Added a checks to make sure the table doesn't already exist for the sake of good practice
CREATE TABLE IF NOT EXISTS buildings(id INTEGER PRIMARY KEY NOT NULL, name VARCHAR(80) NOT NULL, shortname VARCHAR(10) UNIQUE); 

-- Inserting data into the buildings table
INSERT INTO buildings(name, shortname) VALUES('Raitt Hall', 'RAI'); 
INSERT INTO buildings(name, shortname) VALUES('Somewhere Tower', 'SOMT');
INSERT INTO buildings(name, shortname) VALUES('Babel', 'BAB');





-- Creating the rooms table 
CREATE TABLE IF NOT EXISTS rooms(number INT PRIMARY KEY NOT NULL, seating INT, buildingid INTEGER NOT NULL, FOREIGN KEY (buildingid) REFERENCES buildings(id)); 


-- Inserting data into the rooms table
INSERT INTO rooms VALUES (120, (SELECT id FROM buildings WHERE name='Raitt Hall'), 70);
INSERT INTO rooms VALUES (777, (SELECT id FROM buildings WHERE name='Somewhere Tower'), 500); 
INSERT INTO rooms VALUES (139, (SELECT id FROM buildings WHERE name='Babel'), 30);

-- INSERT INTO rooms VALUES (400, (SELECT id FROM buildings WHERE name="Mary Gates Hall"), 40); Just a sample