CREATE TABLE movies (
    index int Primary Key
    ,title VARCHAR
    ,genres VARCHAR
    ,director VARCHAR
    ,release_year NUMERIC
    ,country VARCHAR
    ,budget NUMERIC
    ,gross NUMERIC
    ,imdb_score NUMERIC
    ,rating VARCHAR
);

COPY movies FROM '/Users/hannah-janehuntoon/git/ETLproject/cleaned_other_movies.csv' DELIMITER ',' CSV HEADER;

select * from movies;

CREATE TABLE netflix (
index int Primary Key
    ,title VARCHAR
    ,type VARCHAR
    ,country VARCHAR
    ,director VARCHAR
    ,release_year INT
    ,rating VARCHAR
);

COPY netflix FROM '/Users/hannah-janehuntoon/git/ETLproject/cleaned_netflix.csv' DELIMITER ',' CSV HEADER;

select * from netflix;

SELECT * FROM netflix,movies
where REGEXP_REPLACE(netflix.title, '[^0-9a-zA-Z.,]+$', '') = REGEXP_REPLACE(movies.title, '[^0-9a-zA-Z.,]+$', '')
order by movies.title

