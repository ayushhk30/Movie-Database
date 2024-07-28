use movie_db;
-- List all movies with their respective genres
SELECT 
    m.mov_title AS Movie,
    g.gen_title AS Genre
FROM 
    Movie m
JOIN 
    Movie_Genres mg ON m.mov_id = mg.mov_id
JOIN 
    Genres g ON mg.gen_id = g.gen_id;

-- Display the names of actors who played a specific role in a particular movie
SELECT 
    a.act_fname AS First_Name, 
    a.act_lname AS Last_Name
FROM 
    Actor a
JOIN 
    Movie_Cast mc ON a.act_id = mc.act_id
JOIN 
    Movie m ON mc.mov_id = m.mov_id
WHERE 
    m.mov_title = '3 Idiots' AND mc.role = 'Rancho';  -- Replace '3 Idiots' and 'Rancho' with the desired movie and role

-- Find the average rating for each movie
SELECT 
    m.mov_title AS Movie,
    AVG(r.rev_stars) AS Average_Rating
FROM 
    Movie m
JOIN 
    Rating r ON m.mov_id = r.mov_id
GROUP BY 
    m.mov_title;

-- Identify the directors of movies released in a specific year

SELECT 
    m.mov_title AS Movie,
    d.dir_fname AS Director_First_Name,
    d.dir_lname AS Director_Last_Name
FROM 
    Movie m
JOIN 
    Movie_Direction md ON m.mov_id = md.mov_id
JOIN 
    Director d ON md.dir_id = d.dir_id
WHERE 
    m.mov_year = 2016;  -- Replace 2016 with the desired year
