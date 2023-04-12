DROP TABLE courses;

CREATE TABLE courses (
  code VARCHAR(40) NOT NULL PRIMARY KEY,
  description VARCHAR(400),
  start DATE NOT NULL,
  end DATE NOT NULL,
  CHECK (LENGTH(code) >= 7 AND start < end)
);

INSERT INTO courses (code, start, end, description) VALUES
  ('INFO330A', '1 April 2023', '1 June 2023', 'Data and databases'),
  ('INFO314', '1 April 2023', '1 June 2023', 'Networking and distributed Systems'),
  ('INFO448A', '25 September 2023', '19 December 2023', 'Introduction to iOS'),
  ('INFO449A', '25 September 2023', '19 December 2023', 'Introduction to Android'),
  ('BAW010', '1 April 2023', '1 June 2023', 'Introduction to Basket-Weaving'),
  ('BAW100A', '1 April 2023', '1 June 2023', 'Underwater Basket-Weaving');
