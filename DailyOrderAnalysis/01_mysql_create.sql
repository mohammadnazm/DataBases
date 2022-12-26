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


CREATE TABLE book (
    book_id INT,
    title VARCHAR(400),
    isbn13 VARCHAR(13),
    language_id INT,
    num_pages INT,
    publication_date DATE,
    publisher_id INT,
    CONSTRAINT pk_book PRIMARY KEY (book_id),
    CONSTRAINT fk_book_lang FOREIGN KEY (language_id) REFERENCES book_language (language_id),
    CONSTRAINT fk_book_pub FOREIGN KEY (publisher_id) REFERENCES publisher (publisher_id)
);

CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    CONSTRAINT pk_bookauthor PRIMARY KEY (book_id, author_id),
    CONSTRAINT fk_ba_book FOREIGN KEY (book_id) REFERENCES book (book_id),
    CONSTRAINT fk_ba_author FOREIGN KEY (author_id) REFERENCES author (author_id)
);