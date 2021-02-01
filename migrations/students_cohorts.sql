-----creating cohorts table--------
CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);
--creating students table------
CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);
------\l------lists all the databases in system
------\c dbname----connect to specified database
-----\dt---display tables in the database
-----DROP DATABASE DATABASE_NAME----deletes database