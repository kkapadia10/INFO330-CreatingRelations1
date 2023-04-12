CREATE TABLE timeslots (
  id INTEGER PRIMARY KEY,
  start_time TIME,
  end_time TIME
);

ALTER TABLE rooms (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
);

CREATE TABLE schedule (
  coursecode VARCHAR(40) REFERENCES courses(code),
  roomid INTEGER REFERENCES rooms(id),
  timeslotid INTEGER REFERENCES timeslots(id),
  UNIQUE (roomid, timeslotid)
);