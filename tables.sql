CREATE TABLE author (
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE publisher (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE location (
    location_id SERIAL PRIMARY KEY,
    address VARCHAR(255)
);

CREATE TABLE book (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    publisher_id INT,
    edition VARCHAR(50),
    publication_year INT,
    location_id INT
);

CREATE TABLE book_author (
    book_id INT,
    author_id INT
);

CREATE TABLE reader (
    reader_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    gender CHAR(1),
    education_level VARCHAR(50)
);

CREATE TABLE loan (
    loan_id SERIAL PRIMARY KEY,
    book_id INT,
    reader_id INT,
    issue_date DATE,
    expected_return_date DATE,
    actual_return_date DATE
);