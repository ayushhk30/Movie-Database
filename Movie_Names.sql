use movie_db;
-- Insert data into Movie table
INSERT INTO Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES 
(1, '3 Idiots', 2009, 170, 'Hindi', '2009-12-25', 'India'),
(2, 'Dangal', 2016, 161, 'Hindi', '2016-12-23', 'India'),
(3, 'PK', 2014, 153, 'Hindi', '2014-12-19', 'India'),
(4, 'Lagaan', 2001, 224, 'Hindi', '2001-06-15', 'India'),
(5, 'Zindagi Na Milegi Dobara', 2011, 155, 'Hindi', '2011-07-15', 'India'),
(6, 'Barfi!', 2012, 151, 'Hindi', '2012-09-14', 'India'),
(7, 'Queen', 2013, 146, 'Hindi', '2014-03-07', 'India'),
(8, 'Bajrangi Bhaijaan', 2015, 163, 'Hindi', '2015-07-17', 'India'),
(9, 'Taare Zameen Par', 2007, 165, 'Hindi', '2007-12-21', 'India'),
(10, 'Gully Boy', 2019, 153, 'Hindi', '2019-02-14', 'India'),
(11, 'Swades', 2004, 189, 'Hindi', '2004-12-17', 'India'),
(12, 'Dil Chahta Hai', 2001, 183, 'Hindi', '2001-08-10', 'India'),
(13, 'Black', 2005, 122, 'Hindi', '2005-02-04', 'India'),
(14, 'Padmaavat', 2018, 164, 'Hindi', '2018-01-25', 'India'),
(15, 'Drishyam', 2015, 163, 'Hindi', '2015-07-31', 'India'),
(16, 'Chak De! India', 2007, 153, 'Hindi', '2007-08-10', 'India'),
(17, 'Bhaag Milkha Bhaag', 2013, 189, 'Hindi', '2013-07-12', 'India'),
(18, 'Andhadhun', 2018, 139, 'Hindi', '2018-10-05', 'India'),
(19, 'Article 15', 2019, 130, 'Hindi', '2019-06-28', 'India'),
(20, 'Tumbbad', 2018, 104, 'Hindi', '2018-10-12', 'India');

-- Insert data into Actor table
INSERT INTO Actor (act_id, act_fname, act_lname, act_gender)
VALUES 
(1, 'Aamir', 'Khan', 'M'),
(2, 'Salman', 'Khan', 'M'),
(3, 'Shah Rukh', 'Khan', 'M'),
(4, 'Ranbir', 'Kapoor', 'M'),
(5, 'Ranveer', 'Singh', 'M'),
(6, 'Hrithik', 'Roshan', 'M'),
(7, 'Kangana', 'Ranaut', 'F'),
(8, 'Priyanka', 'Chopra', 'F'),
(9, 'Deepika', 'Padukone', 'F'),
(10, 'Alia', 'Bhatt', 'F');

-- Insert data into Movie_Cast table
INSERT INTO Movie_Cast (act_id, mov_id, role)
VALUES 
(1, 1, 'Rancho'),
(1, 2, 'Mahavir Singh Phogat'),
(1, 3, 'PK'),
(1, 4, 'Bhuvan'),
(4, 6, 'Murphy "Barfi" Johnson'),
(7, 7, 'Rani Mehra'),
(2, 8, 'Pavan Kumar Chaturvedi'),
(1, 9, 'Ram Shankar Nikumbh'),
(5, 10, 'Murad Ahmed'),
(3, 11, 'Mohan Bhargava'),
(6, 12, 'Akash Malhotra'),
(3, 16, 'Kabir Khan'),
(4, 17, 'Milkha Singh'),
(9, 14, 'Rani Padmavati'),
(9, 18, 'Simi'),
(10, 19, 'Ayaan Ranjan'),
(5, 20, 'Vinayak Rao');

-- Insert data into Director table
INSERT INTO Director (dir_id, dir_fname, dir_lname)
VALUES 
(1, 'Rajkumar', 'Hirani'),
(2, 'Nitesh', 'Tiwari'),
(3, 'Ashutosh', 'Gowariker'),
(4, 'Zoya', 'Akhtar'),
(5, 'Anurag', 'Basu'),
(6, 'Vikas', 'Bahl'),
(7, 'Kabir', 'Khan'),
(8, 'Aamir', 'Khan'),
(9, 'Shakun', 'Batra'),
(10, 'Ashwini', 'Iyer Tiwari'),
(11, 'Sanjay', 'Leela Bhansali'),
(12, 'Neeraj', 'Pandey'),
(13, 'Shimit', 'Amin'),
(14, 'Rakeysh', 'Omprakash Mehra'),
(15, 'Sriram', 'Raghavan'),
(16, 'Anubhav', 'Sinha'),
(17, 'Rahi', 'Anil Barve');

-- Insert data into Movie_Direction table
INSERT INTO Movie_Direction (dir_id, mov_id)
VALUES 
(1, 1),
(1, 3),
(2, 2),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(3, 11),
(11, 14),
(12, 15),
(13, 16),
(14, 17),
(15, 18),
(16, 19),
(17, 20);

-- Insert data into Genres table
INSERT INTO Genres (gen_id, gen_title)
VALUES 
(1, 'Drama'),
(2, 'Comedy'),
(3, 'Romance'),
(4, 'Action'),
(5, 'Biography'),
(6, 'Crime'),
(7, 'Thriller');

-- Insert data into Movie_Genres table
INSERT INTO Movie_Genres (mov_id, gen_id)
VALUES 
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 6),
(11, 1),
(11, 5),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(14, 1),
(14, 4),
(15, 1),
(15, 7),
(16, 1),
(16, 4),
(17, 1),
(17, 5),
(18, 6),
(18, 7),
(19, 1),
(19, 7),
(20, 6),
(20, 7);

-- Insert data into Reviewer table
INSERT INTO Reviewer (rev_id, rev_name)
VALUES 
(1, 'Rajeev Masand'),
(2, 'Anupama Chopra'),
(3, 'Taran Adarsh'),
(4, 'Komal Nahta'),
(5, 'Raja Sen');

-- Insert data into Rating table
INSERT INTO Rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES 
(1, 1, 5, 1000),
(1, 2, 4, 850),
(2, 1, 5, 1200),
(2, 3, 4, 900),
(3, 1, 5, 1100),
(3, 4, 4, 950),
(4, 1, 5, 1300),
(4, 2, 4, 1000),
(5, 1, 5, 1250),
(5, 5, 4, 980),
(6, 1, 5, 1150),
(6, 3, 4, 930),
(7, 1, 5, 1200),
(7, 4, 4, 950),
(8, 1, 5, 1250),
(8, 2, 4, 980),
(9, 1, 5, 1300),
(9, 3, 4, 1000),
(10, 1, 5, 1350),
(10, 5, 4, 1050),
(11, 1, 5, 1400),
(11, 2, 4, 1100),
(12, 1, 5, 1450),
(12, 3, 4, 1150),
(13, 1, 5, 1500),
(13, 4, 4, 1200),
(14, 1, 5, 1550),
(14, 5, 4, 1250),
(15, 1, 5, 1600),
(15, 2, 4, 1300),
(16, 1, 5, 1650),
(16, 3, 4, 1350),
(17, 1, 5, 1700),
(17, 4, 4, 1400),
(18, 1, 5, 1750),
(18, 5, 4, 1450),
(19, 1, 5, 1800),
(19, 2, 4, 1500),
(20, 1, 5, 1850),
(20, 3, 4, 1550);
