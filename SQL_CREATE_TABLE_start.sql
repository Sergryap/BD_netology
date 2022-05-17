/* К предыдущему заданию */

CREATE TABLE IF NOT EXISTS singers (
id SERIAL PRIMARY KEY, 
name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums ( 
id SERIAL PRIMARY KEY, 
singer_id INT REFERENCES signers(Id) ,
name VARCHAR(100) NOT NULL,
release_year DATE
);

CREATE TABLE IF NOT EXISTS tracks (
id SERIAL PRIMARY KEY, 
albums_id INT REFERENCES albums(id),
name VARCHAR(100) NOT NULL,
duration INTEGER
);

CREATE TABLE IF NOT EXISTS genres ( 
id SERIAL PRIMARY KEY, 
singer_id INT REFERENCES singers(id), 
name VARCHAR(50) NOT NULL
);