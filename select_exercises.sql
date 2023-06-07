USE codeup_test_db;

           SELECT album FROM albums WHERE artist = 'Pink Floyd';
           SELECT release_date FROM albums WHERE album = 'Sgt. Pepper''s Lonely Hearts Club Band';
           SELECT genre FROM albums WHERE album = 'Nevermind';
           SELECT *  FROM albums WHERE release_date  BETWEEN 1990 AND 1999;
           SELECT * FROM albums WHERE sales < 20 ;
           SELECT * FROM albums WHERE genre = 'Rock';


-- The query results do not include albums with a genre of "Hard rock" or "Progressive rock"
-- because the condition in the query is an exact match for the genre column, and it doesn't include subgenres.
-- To include albums with subgenres, you can use the LIKE operator with wildcard characters.
-- For example:
-- SELECT * FROM albums WHERE genre LIKE 'Rock%';
-- This will include albums with a genre of "Rock", "Hard rock", "Progressive rock", and any other subgenres of "Rock".
