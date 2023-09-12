--liquibase formatted sql
--changeset BillyBolton:create-books-table

DROP TABLE IF EXISTS books CASCADE;
CREATE TABLE books(
                        id CHAR(36) PRIMARY KEY,
                        title VARCHAR(40) NOT NULL,
                        author_id CHAR(36) NOT NULL,
                        publisher_id CHAR(36) NOT NULL,
                        FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE,
                        FOREIGN KEY (publisher_id) REFERENCES publishers(id) ON DELETE CASCADE,
                        UNIQUE(title, author_id)
);