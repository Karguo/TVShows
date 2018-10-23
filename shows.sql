CREATE DATABASE shows_db;

CREATE TABLE shows(
  id SERIAL PRIMARY KEY,
  title VARCHAR(200),
  year VARCHAR(100),
  image_url TEXT,
  body TEXT
);

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  email VARCHAR(400),
  password_digest VARCHAR(400)
);

CREATE TABLE comments(
  id SERIAL PRIMARY KEY,
  body TEXT,
  show_id INTEGER,
  user_id INTEGER,
  FOREIGN KEY (show_id) REFERENCES shows (id) ON DELETE RESTRICT,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE RESTRICT
);
--  
CREATE TABLE likes(
  id SERIAL PRIMARY KEY,
  show_id INTEGER,
  user_id INTEGER,
  FOREIGN KEY (show_id) REFERENCES shows (id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE suggestions(
  id SERIAL PRIMARY KEY,
  user_id INTEGER,
  body TEXT
);

INSERT INTO shows (title, year, image_url, body) VALUES ('agents of shield', '2013-','https://m.media-amazon.com/images/M/MV5BMTc5NzEzMzA2MF5BMl5BanBnXkFtZTgwNDkyNzgyNDM@._V1_SX300.jpg', 'The missions of the Strategic Homeland Intervention, Enforcement and Logistics Division.');

INSERT INTO shows (title, year, image_url, body) VALUES ('arrow', '2012-','https://m.media-amazon.com/images/M/MV5BMTU5MjU5NjUyOV5BMl5BanBnXkFtZTgwMDY1ODIyNjM@._V1_SX300.jpg', 'Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea. He returns five years later a changed man, determined to clean up the city as a hooded vigilante armed with a bow.');

INSERT INTO shows (title, year, image_url, body) VALUES ('black lightning', '2018','https://m.media-amazon.com/images/M/MV5BMTY3NTk5Mzg5OV5BMl5BanBnXkFtZTgwNDgyMjQyNjM@._V1_SX300.jpg', 'A crusading school principal gets back into action as the original African-American electrical superhero.');

INSERT INTO shows (title, year, image_url, body) VALUES ('daredevil', '2015', 'https://m.media-amazon.com/images/M/MV5BODcwOTg2MDE3NF5BMl5BanBnXkFtZTgwNTUyNTY1NjM@._V1_SX300.jpg', 'A blind lawyer by day, vigilante by night. Matt Murdock fights the crime of New York as Daredevil.');

INSERT INTO shows (title, year, image_url, body) VALUES ('the flash', '2014', 'https://m.media-amazon.com/images/M/MV5BMjI1MDAwNDM4OV5BMl5BanBnXkFtZTgwNjUwNDIxNjM@._V1_SX300.jpg', 'After being struck by lightning, Barry Allen wakes up from his coma to discover he has been given the power of super speed, becoming the Flash, fighting crime in Central City.');

INSERT INTO shows (title, year, image_url, body) VALUES ('jessica jones', '2015', 'https://m.media-amazon.com/images/M/MV5BMTkxMDk5NTQ3MF5BMl5BanBnXkFtZTgwNzg3ODU3NDM@._V1_SX300.jpg', 'Following the tragic end of her brief superhero career, Jessica Jones tries to rebuild her life as a private investigator, dealing with cases involving people with remarkable abilities in New York City.');

INSERT INTO shows (title, image_url) VALUES ('legends of tomorrow', 'https://m.media-amazon.com/images/M/MV5BODVjYzliMTQtODk0My00MmUxLTkwMzMtMWJjMGQzZmU5MzAwXkEyXkFqcGdeQXVyNTc4MjczMTM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('lucifer', 'https://m.media-amazon.com/images/M/MV5BMjI4MTU0NzE1OF5BMl5BanBnXkFtZTgwODI3NDc0OTE@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('riverdale', 'https://m.media-amazon.com/images/M/MV5BZmNmYzU3ZTktZGY4NC00M2QyLWI0NTItNzRjNmU4MGI2YmNkXkEyXkFqcGdeQXVyNjYzNDE4ODA@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('supergirl', 'https://m.media-amazon.com/images/M/MV5BMjE0MzgxNjYzOV5BMl5BanBnXkFtZTgwMzk3NDUyNTM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('the walking dead', 'https://m.media-amazon.com/images/M/MV5BMTcwMDAzMDk3OF5BMl5BanBnXkFtZTgwMjY0MzcyNjM@._V1_SX300.jpg');

INSERT INTO shows (title, image_url) VALUES ('wynonna earp', 'https://m.media-amazon.com/images/M/MV5BMTc1ODI5OTIyOV5BMl5BanBnXkFtZTgwNDUzNDk2NTM@._V1_SX300.jpg');

