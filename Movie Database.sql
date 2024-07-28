create database movie_db;
use movie_db;
-- Movie Table
CREATE TABLE Movie (
    mov_id INT PRIMARY KEY,
    mov_title VARCHAR(200),
    mov_year INT,
    mov_time INT,
    mov_lang VARCHAR(50),
    mov_dt_rel DATE,
    mov_rel_country VARCHAR(50)
);

-- Actor Table
CREATE TABLE Actor (
    act_id INT PRIMARY KEY,
    act_fname VARCHAR(50),
    act_lname VARCHAR(50),
    act_gender CHAR(1)
);

-- Movie_Cast Table
CREATE TABLE Movie_Cast (
    act_id INT,
    mov_id INT,
    role VARCHAR(50),
    PRIMARY KEY (act_id, mov_id),
    FOREIGN KEY (act_id) REFERENCES Actor(act_id),
    FOREIGN KEY (mov_id) REFERENCES Movie(mov_id)
);

-- Director Table
CREATE TABLE Director (
    dir_id INT PRIMARY KEY,
    dir_fname VARCHAR(50),
    dir_lname VARCHAR(50)
);

-- Movie_Direction Table
CREATE TABLE Movie_Direction (
    dir_id INT,
    mov_id INT,
    PRIMARY KEY (dir_id, mov_id),
    FOREIGN KEY (dir_id) REFERENCES Director(dir_id),
    FOREIGN KEY (mov_id) REFERENCES Movie(mov_id)
);

-- Genres Table
CREATE TABLE Genres (
    gen_id INT PRIMARY KEY,
    gen_title VARCHAR(50)
);

-- Movie_Genres Table
CREATE TABLE Movie_Genres (
    mov_id INT,
    gen_id INT,
    PRIMARY KEY (mov_id, gen_id),
    FOREIGN KEY (mov_id) REFERENCES Movie(mov_id),
    FOREIGN KEY (gen_id) REFERENCES Genres(gen_id)
);

-- Reviewer Table
CREATE TABLE Reviewer (
    rev_id INT PRIMARY KEY,
    rev_name VARCHAR(100)
);

-- Rating Table
CREATE TABLE Rating (
    mov_id INT,
    rev_id INT,
    rev_stars INT,
    num_o_ratings INT,
    PRIMARY KEY (mov_id, rev_id),
    FOREIGN KEY (mov_id) REFERENCES Movie(mov_id),
    FOREIGN KEY (rev_id) REFERENCES Reviewer(rev_id)
);



SELECT * FROM Movie;

SELECT * FROM Actor;

SELECT * FROM Movie_Cast;

SELECT * FROM Director;

SELECT * FROM Movie_Direction;

SELECT * FROM Genres;

SELECT * FROM Movie_Genres;

SELECT * FROM Reviewer;

SELECT * FROM Rating;

