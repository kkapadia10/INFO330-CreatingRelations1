CREATE TABLE student_courses (
  studentid INTEGER REFERENCES students(id),
  course VARCHAR(40) REFERENCES courses(code),
  grade FLOAT DEFAULT NULL,
  PRIMARY KEY (studentid, course)
);

INSERT INTO student_courses (studentid, course)
VALUES 
(1, 'INFO330A'),
(1, 'INFO448A'),
 (1, 'INFO314'),
 (3, 'INFO330A'),
 (3, 'INFO449A'),
 (2, 'BAW010'),
 (2, 'BAW100A'),
  (4, 'BAW010');