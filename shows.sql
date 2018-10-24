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

INSERT INTO shows (title, year, image_url, body) VALUES ('agents of shield', '2013','https://m.media-amazon.com/images/M/MV5BMTc5NzEzMzA2MF5BMl5BanBnXkFtZTgwNDkyNzgyNDM@._V1_SX300.jpg', 'The missions of the Strategic Homeland Intervention, Enforcement and Logistics Division.');

INSERT INTO shows (title, year, image_url, body) VALUES ('arrow', '2012','https://m.media-amazon.com/images/M/MV5BMTU5MjU5NjUyOV5BMl5BanBnXkFtZTgwMDY1ODIyNjM@._V1_SX300.jpg', 'Spoiled billionaire playboy Oliver Queen is missing and presumed dead when his yacht is lost at sea. He returns five years later a changed man, determined to clean up the city as a hooded vigilante armed with a bow.');

INSERT INTO shows (title, year, image_url, body) VALUES ('black lightning', '2018','https://m.media-amazon.com/images/M/MV5BMTY3NTk5Mzg5OV5BMl5BanBnXkFtZTgwNDgyMjQyNjM@._V1_SX300.jpg', 'A crusading school principal gets back into action as the original African-American electrical superhero.');

INSERT INTO shows (title, year, image_url, body) VALUES ('daredevil', '2015', 'https://m.media-amazon.com/images/M/MV5BODcwOTg2MDE3NF5BMl5BanBnXkFtZTgwNTUyNTY1NjM@._V1_SX300.jpg', 'A blind lawyer by day, vigilante by night. Matt Murdock fights the crime of New York as Daredevil.');

INSERT INTO shows (title, year, image_url, body) VALUES ('the flash', '2014', 'https://m.media-amazon.com/images/M/MV5BMjI1MDAwNDM4OV5BMl5BanBnXkFtZTgwNjUwNDIxNjM@._V1_SX300.jpg', 'After being struck by lightning, Barry Allen wakes up from his coma to discover he has been given the power of super speed, becoming the Flash, fighting crime in Central City.');

INSERT INTO shows (title, year, image_url, body) VALUES ('jessica jones', '2015', 'https://m.media-amazon.com/images/M/MV5BMTkxMDk5NTQ3MF5BMl5BanBnXkFtZTgwNzg3ODU3NDM@._V1_SX300.jpg', 'Following the tragic end of her brief superhero career, Jessica Jones tries to rebuild her life as a private investigator, dealing with cases involving people with remarkable abilities in New York City.');

INSERT INTO shows (title, year, image_url, body) VALUES ('legends of tomorrow', '2016', 'https://m.media-amazon.com/images/M/MV5BODVjYzliMTQtODk0My00MmUxLTkwMzMtMWJjMGQzZmU5MzAwXkEyXkFqcGdeQXVyNTc4MjczMTM@._V1_SX300.jpg', 'Time-traveling rogue Rip Hunter has to recruit a rag-tag team of heroes and villains to help prevent an apocalypse that could impact not only Earth, but all of time.');

INSERT INTO shows (title, year, image_url, body) VALUES ('lucifer', '2015', 'https://m.media-amazon.com/images/M/MV5BMjI4MTU0NzE1OF5BMl5BanBnXkFtZTgwODI3NDc0OTE@._V1_SX300.jpg', 'Lucifer Morningstar has decided he has had enough of being the dutiful servant in Hell and decides to spend some time on Earth to better understand humanity. He settles in Los Angeles - the City of Angels.');

INSERT INTO shows (title, year, image_url, body) VALUES ('riverdale', '2016', 'https://m.media-amazon.com/images/M/MV5BZmNmYzU3ZTktZGY4NC00M2QyLWI0NTItNzRjNmU4MGI2YmNkXkEyXkFqcGdeQXVyNjYzNDE4ODA@._V1_SX300.jpg', "A subversive take on Archie and his friends, exploring small town life, the darkness and weirdness bubbling beneath Riverdale's wholesome facade.");

INSERT INTO shows (title, year, image_url, body) VALUES ('supergirl', '2015', 'https://m.media-amazon.com/images/M/MV5BMjE0MzgxNjYzOV5BMl5BanBnXkFtZTgwMzk3NDUyNTM@._V1_SX300.jpg', "The adventures of Superman's cousin in her own superhero career.");

INSERT INTO shows (title, year, image_url, body) VALUES ('the walking dead', '2010', 'https://m.media-amazon.com/images/M/MV5BMTcwMDAzMDk3OF5BMl5BanBnXkFtZTgwMjY0MzcyNjM@._V1_SX300.jpg', 'Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.');

INSERT INTO shows (title, year, image_url, body) VALUES ('wynonna earp', '2016', 'https://m.media-amazon.com/images/M/MV5BMTc1ODI5OTIyOV5BMl5BanBnXkFtZTgwNDUzNDk2NTM@._V1_SX300.jpg', "Based on the IDW Comic, Wynonna Earp follows Wyatt Earp's great-great-granddaughter as she battles demons and other creatures with her unique abilities and a posse of dysfunctional allies.");

