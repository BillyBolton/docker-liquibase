--liquibase formatted sql
--changeset BillyBolton:create-publishers-table

DROP TABLE IF EXISTS publishers CASCADE;
CREATE TABLE publishers(
                           id CHAR(36) PRIMARY KEY ,
                           name VARCHAR(40) NOT NULL,
                           UNIQUE(name)
);