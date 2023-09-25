-- create databases for each environment
CREATE DATABASE IF NOT EXISTS `library-books-DEV`;
CREATE DATABASE IF NOT EXISTS `library-books-STG`;
CREATE DATABASE IF NOT EXISTS `library-books-PROD`;

-- Check if user exists and create it if it does not
DROP USER IF EXISTS 'changeme'@'%';
CREATE USER 'changeme'@'%' IDENTIFIED BY 'changeme';

-- Grant full privileges on each database
GRANT ALL PRIVILEGES ON `library-books-DEV`.* TO 'changeme'@'%';
GRANT ALL PRIVILEGES ON `library-books-STG`.* TO 'changeme'@'%';
GRANT ALL PRIVILEGES ON `library-books-PROD`.* TO 'changeme'@'%';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;
