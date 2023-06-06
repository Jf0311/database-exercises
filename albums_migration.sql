USE codeup_test_db;

DROP TABLE IF EXISTS albums;

-- Create the albums table
CREATE TABLE albums (
                        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        artist VARCHAR(255),
                        name VARCHAR(255),
                        release_date INT,
                        sales FLOAT,
                        genre VARCHAR(255)
);