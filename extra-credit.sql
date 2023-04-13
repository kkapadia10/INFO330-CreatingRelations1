CREATE TABLE IF NOT EXISTS timeslots (
  id INTEGER PRIMARY KEY,
  start_time TIME,
  end_time TIME
);

INSERT INTO timeslots (id, start_time, end_time) VALUES
  (1, '09:30:00', '10:20:00'),
  (2, '10:30:00', '12:20:00'),
  (3, '13:30:00', '14:20:00'),
  (4, '14:30:00', '16:20:00');

CREATE TABLE rooms2 (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  number INTEGER,
  buildingid INTEGER REFERENCES buildings(id),
  seating INTEGER
);

INSERT INTO rooms2 (number, buildingid, seating) SELECT number, buildingid, seating FROM rooms;
DROP TABLE rooms;
ALTER TABLE rooms2 RENAME TO rooms;

CREATE TABLE IF NOT EXISTS schedule (
  coursecode VARCHAR(40),
  roomid INTEGER REFERENCES rooms(id),
  timeslotid INTEGER REFERENCES timeslots(id),
  UNIQUE (roomid, timeslotid)
);

INSERT INTO schedule (coursecode, roomid, timeslotid) VALUES
  ('INFO330A', 1, 1),
  ('INFO314', 2, 1),
  ('INFO448A', 3, 3),
  ('INFO449A', 3, 2),
  ('BAW010'0, 1, 4),
  ('BAW100A', 2, 2);