/*
  movieRatings.sql
*/

DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Ratings;
DROP TABLE IF EXISTS Reviewers;

# Create Tables
CREATE TABLE Movies
(
  movie_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  movie VARCHAR(100) NOT NULL
  );

CREATE TABLE Reviewers
(
  person_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  psuedo_name VARCHAR(100) NOT NULL
);

CREATE TABLE Ratings
(
  rating_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  rater_FK INT NOT NULL,
  movie_FK INT NOT NULL,
  rating SMALLINT
);

# Populate Movies Table

INSERT INTO Movies values(1,'Don\'t Breathe');
INSERT INTO Movies values(2,'Suicide Squad'); 
INSERT INTO Movies values(3,'Kubo and the Two Strings');
INSERT INTO Movies values(4,'Pete\'s Dragon'); 
INSERT INTO Movies values(5,'Sausage Party'); 
INSERT INTO Movies values(6,'War Dogs'); 

# Populate Reviewers
INSERT INTO Reviewers values(1,'John Lennon');
INSERT INTO Reviewers values(2,'George Harrison');
INSERT INTO Reviewers values(3,'Paul McCartney');
INSERT INTO Reviewers values(4,'Ringo Star');
INSERT INTO Reviewers values(5,'Yoko Ono');

# Populate Ratings
INSERT INTO Ratings values(1, 1, 1, 4);
INSERT INTO Ratings values(2, 1, 2, 2);
INSERT INTO Ratings values(3, 1, 3, 5);
INSERT INTO Ratings values(4, 1, 4, 4);
INSERT INTO Ratings values(5, 1, 5, 3);
INSERT INTO Ratings values(6, 1, 6, 3);

INSERT INTO Ratings values(7, 2, 1, 5);
INSERT INTO Ratings values(8, 2, 2, 3);
INSERT INTO Ratings values(9, 2, 3, 5);
INSERT INTO Ratings values(10, 2, 4, 5);
INSERT INTO Ratings values(11, 2, 5, 4);
INSERT INTO Ratings values(12, 2, 6, 4);

INSERT INTO Ratings values(13, 3, 1, 3);
INSERT INTO Ratings values(14, 3, 2, 1);
INSERT INTO Ratings values(15, 3, 3, 4);
INSERT INTO Ratings values(16, 3, 4, 3);
INSERT INTO Ratings values(17, 3, 5, 2);
INSERT INTO Ratings values(18, 3, 6, 2);

INSERT INTO Ratings values(19, 4, 1, 5);
INSERT INTO Ratings values(20, 4, 2, 5);
INSERT INTO Ratings values(21, 4, 3, 5);
INSERT INTO Ratings values(22, 4, 4, 5);
INSERT INTO Ratings values(23, 4, 5, 5);
INSERT INTO Ratings values(24, 4, 6, 5);

INSERT INTO Ratings values(25, 5, 1, 1);
INSERT INTO Ratings values(26, 5, 2, 1);
INSERT INTO Ratings values(27, 5, 3, 1);
INSERT INTO Ratings values(28, 5, 4, 1);
INSERT INTO Ratings values(29, 5, 5, 1);
INSERT INTO Ratings values(30, 5, 6, 1);