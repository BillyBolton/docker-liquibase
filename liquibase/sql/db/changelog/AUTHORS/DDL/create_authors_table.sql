--liquibase formatted sql
--changeset BillyBolton:create-authors-table

DROP TABLE IF EXISTS authors CASCADE;
CREATE TABLE authors(
                        id CHAR(36) PRIMARY KEY,
                        name VARCHAR(40) NOT NULL,
                        UNIQUE(name)
);