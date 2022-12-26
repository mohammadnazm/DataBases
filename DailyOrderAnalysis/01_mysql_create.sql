CREATE DATABASE gravity_books;

USE gravity_books;

CREATE TABLE author (
    author_id INT,
    author_name VARCHAR(400),
    CONSTRAINT pk_author PRIMARY KEY (author_id)
);
