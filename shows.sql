CREATE DATABASE shows_db;

CREATE TABLE shows(
  id SERIAL PRIMARY KEY,
  title VARCHAR(200),
  image_url TEXT,
  body TEXT
);

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  email VARCHAR(400),
  password_digest VARCHAR(400),

);

CREATE TABLE comments(
  id SERIAL PRIMARY KEY,
  body TEXT,
  show_id INTEGER,
  FOREIGN KEY (show_id) REFERENCES shows (id) ON DELETE RESTRICT
);

CREATE TABLE suggestions(
  id SERIAL PRIMARY KEY,
  body TEXT,
  show_id INTEGER
)

INSERT INTO shows (title, image_url) VALUES ('agents of shield', 'https://m.media-amazon.com/images/M/MV5BMTc5NzEzMzA2MF5BMl5BanBnXkFtZTgwNDkyNzgyNDM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('arrow', 'https://m.media-amazon.com/images/M/MV5BMTU5MjU5NjUyOV5BMl5BanBnXkFtZTgwMDY1ODIyNjM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('black lightning', 'https://m.media-amazon.com/images/M/MV5BMTY3NTk5Mzg5OV5BMl5BanBnXkFtZTgwNDgyMjQyNjM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('daredevil', 'https://m.media-amazon.com/images/M/MV5BODcwOTg2MDE3NF5BMl5BanBnXkFtZTgwNTUyNTY1NjM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('the flash', 'https://m.media-amazon.com/images/M/MV5BMjI1MDAwNDM4OV5BMl5BanBnXkFtZTgwNjUwNDIxNjM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('jessica jones', 'https://m.media-amazon.com/images/M/MV5BMTkxMDk5NTQ3MF5BMl5BanBnXkFtZTgwNzg3ODU3NDM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('legends of tomorrow', 'https://m.media-amazon.com/images/M/MV5BODVjYzliMTQtODk0My00MmUxLTkwMzMtMWJjMGQzZmU5MzAwXkEyXkFqcGdeQXVyNTc4MjczMTM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('lucifer', 'https://m.media-amazon.com/images/M/MV5BMjI4MTU0NzE1OF5BMl5BanBnXkFtZTgwODI3NDc0OTE@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('riverdale', 'https://m.media-amazon.com/images/M/MV5BZmNmYzU3ZTktZGY4NC00M2QyLWI0NTItNzRjNmU4MGI2YmNkXkEyXkFqcGdeQXVyNjYzNDE4ODA@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('supergirl', 'https://m.media-amazon.com/images/M/MV5BMjE0MzgxNjYzOV5BMl5BanBnXkFtZTgwMzk3NDUyNTM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('the walking dead', 'https://m.media-amazon.com/images/M/MV5BMTcwMDAzMDk3OF5BMl5BanBnXkFtZTgwMjY0MzcyNjM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('wynonna earp', 'https://m.media-amazon.com/images/M/MV5BMTc1ODI5OTIyOV5BMl5BanBnXkFtZTgwNDUzNDk2NTM@._V1_SX300.jpg');

