CREATE TABLE IF NOT EXISTS students (
  id INTEGER PRIMARY KEY,
  firstname VARCHAR(40),
  lastname VARCHAR(80),
  age INTEGER
);

INSERT INTO students (id, firstname, lastname, age) VALUES
  (1, 'Fred', 'Flintstone', 35),
  (2, 'Wilma', 'Flintstone', 29),
  (3, 'Barney', 'Rubble', 33),
  (4, 'Betty', 'Rubble', 29),
  (5, 'Pebbles', 'Flintstone', 1),
  (6, 'Bam-Bam', 'Rubble', 1),
   (7, 'Nikki', 'Kapadia', 17),
  (8, 'Trupti', 'Jones', 21), 
  (9, 'Yash', 'Andrews', 42), 
  (10, 'Sam', 'Smalls', 68), 
  (11, 'Evan', 'Chang', 11),
  (12, 'Kaden', 'Kapadia', 18);
  