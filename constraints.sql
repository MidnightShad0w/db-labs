ALTER TABLE book
ADD CONSTRAINT fk_publisher
FOREIGN KEY (publisher_id) REFERENCES publisher (publisher_id),
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id) REFERENCES location (location_id);

ALTER TABLE book_author
ADD CONSTRAINT fk_book
FOREIGN KEY (book_id) REFERENCES book (book_id),
ADD CONSTRAINT fk_author
FOREIGN KEY (author_id) REFERENCES author (author_id),
ADD CONSTRAINT pk_book_author PRIMARY KEY (book_id, author_id);

ALTER TABLE loan
ADD CONSTRAINT fk_loan_book
FOREIGN KEY (book_id) REFERENCES book (book_id),
ADD CONSTRAINT fk_loan_reader
FOREIGN KEY (reader_id) REFERENCES reader (reader_id);

CREATE INDEX idx_author_name ON author (last_name, first_name);
CREATE INDEX idx_book_title ON book (title);
CREATE INDEX idx_reader_name ON reader (last_name, first_name);
CREATE INDEX idx_loan_issue_date ON loan (issue_date);

ALTER TABLE reader
ADD CONSTRAINT gender_check CHECK (gender IN ('M', 'F')),
ADD CONSTRAINT education_level_check CHECK (education_level IN ('High School', 'Bachelor', 'Master', 'PhD'));