/*
        
CREATE TABLE books
(
    id          INT          NOT NULL AUTO_INCREMENT,
    title       VARCHAR(255) NULL    ,
    num_of_page INT          NULL    ,
    created_at  timestamp    NULL    ,
    updated_at  timestamp    NULL    ,
    PRIMARY KEY (id)
);

CREATE TABLE favorites
(
    users_id INT NOT NULL ,
    book_id  INT NOT NULL
);

CREATE TABLE users
(
    id         INT          NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NULL    ,
    last_name  VARCHAR(255) NULL    ,
    created_at timestamp    NULL    ,
    updated_at timestamp    NULL    ,
    PRIMARY KEY (id)
);

ALTER TABLE favorites
    ADD CONSTRAINT FK_users_TO_favorites
    FOREIGN KEY (users_id)
    REFERENCES users (id);

ALTER TABLE favorites
    ADD CONSTRAINT FK_books_TO_favorites
    FOREIGN KEY (book_id)
    REFERENCES books (id);

INSERT users (first_name, last_name, created_at, updated_at)
VALUES ('Jane', 'Amsden',NOW(),NOW()),
('Emily','Dixon', NOW(),NOW()),
('Theodore', 'Dostoevsky',NOW(),NOW()),
('William','Shapiro',NOW(),NOW()),
('Lao','Xiu',NOW(),NOW());

SELECT *
FROM users;

INSERT books (title,num_of_page,created_at,updated_at)
VALUES ('C sharp', 200,NOW(),NOW()),
('Java', 250, NOW(), NOW()),
('Python', 275, NOW(),NOW()),
('PHP',300,NOW(),NOW()),
('Ruby',325,NOW(),NOW());

SELECT*
FROM books;

UPDATE books
SET title= 'C #'
Where title = 'C SHARP';

SELECT *
FROM books;

UPDATE users
SET first_name = 'Bill'
WHERE first_name = 'William';

Select*
FROM users;

INSERT favorites (users_id,book_id)
VALUES (1,1),(1,2),(1,3);

INSERT favorites (users_id,book_id)
VALUES (2,1),(2,2),(2,3);

INSERT favorites (users_id,book_id)
VALUES (3,1),(3,2),(3,3),(3,4);

INSERT favorites (users_id,book_id)
VALUES (4,1),(4,2),(4,3),(4,4),(4,5);
Select *
FROM favorites;

Select id, first_name, last_name
FROM users
JOIN favorites on users.id = favorites.users_id
Where favorites.book_id = 3;

DELETE FROM favorites
WHERE users_id = 1 AND book_id = 3;
INSERT favorites(users_id,book_id)
VALUES (5,2);

Select *
FROM books
LEFT JOIN favorites on books.id = favorites.book_id
WHERE favorites.users_id = 3;

Select *
FROM users
LEFT JOIN favorites on favorites.users_id = users.id
WHERE favorites.book_id = 5;
*/