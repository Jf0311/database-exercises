USE codeup_test_db;

-- Albums released after 1991
SELECT * FROM albums WHERE release_date > 1991;

-- Convert the SELECT statement to DELETE
DELETE FROM albums WHERE release_date > 1991;

-- Verify the deletion
SELECT * FROM albums;

-- Albums with the genre 'disco'
SELECT * FROM albums WHERE genre = 'disco';

-- Convert the SELECT statement to DELETE
DELETE FROM albums WHERE genre = 'disco';

-- Verify the deletion
SELECT * FROM albums;

-- Albums by 'Whitney Houston' (or an artist of your choice)
SELECT * FROM albums WHERE artist = 'Whitney Houston';

-- Convert the SELECT statement to DELETE
DELETE FROM albums WHERE artist = 'Whitney Houston';

-- Verify the deletion
SELECT * FROM albums;
