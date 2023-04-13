CREATE TABLE IF NOT EXISTS buildings (
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE,
  id INTEGER PRIMARY KEY AUTOINCREMENT
);

INSERT INTO buildings (name, shortname)
VALUES 
('Bagley Hall', 'BAG'),
('Raitt Hall', 'RAI'),
('Kane Hall', 'KNE'),
('Parrington Hall', 'PAR'),
('Chemistry Building', 'CHB'),
('Miller Hall', 'MLR');

CREATE TABLE IF NOT EXISTS rooms (
  number INTEGER,
  buildingid INTEGER REFERENCES buildings(id), 
  seating INTEGER
);

INSERT INTO rooms (number, buildingid, seating) VALUES 
(121, 1, 150),
(132, 1, 70),
(203, 2, 220),
(221, 2, 40),
(243, 2, 50),
(331, 3, 30);