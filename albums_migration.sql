USE codeup_test_db;

DROP TABLE IF EXISTS albums;

-- Create the albums tableS
CREATE TABLE albums (
                        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        artist VARCHAR(255),
                        album VARCHAR(255),
                        release_date INT,
                        genre VARCHAR(255),
                        sales FLOAT
);