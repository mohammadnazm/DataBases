CREATE DATABASE gravity_books;

USE gravity_books;

CREATE TABLE author (
    author_id INT,
    author_name VARCHAR(400),
    CONSTRAINT pk_author PRIMARY KEY (author_id)
);


CREATE TABLE PUBLISHER (
	publisher_id INT,
    publisher_name VARCHAR(400),
    CONSTRAINT pk_publisher PRIMARY KEY (publisher_id)
);

CREATE TABLE book_language (
    language_id INT,
    language_code VARCHAR(8),
    language_name VARCHAR(50),
    CONSTRAINT pk_language PRIMARY KEY (language_id)
);