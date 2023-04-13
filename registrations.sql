CREATE TABLE IF NOT EXISTS student_courses (
  studentid INTEGER REFERENCES students(id),
  course VARCHAR(40) REFERENCES courses(code),
  grade FLOAT DEFAULT NULL
);

INSERT INTO student_courses (studentid, course, grade) VALUES 
(1, 'INFO330A', 3.4),
(1, 'INFO448A', 3.8),
 (1, 'INFO314', 2.9),
 (3, 'INFO330A', 4.0),
 (3, 'INFO449A', 3.5),
 (2, 'BAW0100', 1.7),
 (2, 'BAW100A', 3.9),
  (4, 'BAW0100', 3.3);
  