use `webDevelopment`;
CREATE TABLE `languages`
(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `language` VARCHAR(12)
);
ENGINE=INNODB;
CREATE TABLE `tools`
(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `tools` VARCHAR(12)
);
ENGINE=INNODB;
CREATE TABLE `frameworks`
(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(12)
);
ENGINE=INNODB;
CREATE TABLE `libraries`
(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `library` VARCHAR(12)
);
ENGINE=INNODB;
CREATE TABLE `ide`
(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `ideName` VARCHAR(12)
);
ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS `frameworks`
(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(12)
);
ENGINE=INNODB;
DROP TABLE IF EXISTS `tools`;
DROP TABLE `libraries`;
DROP TABLE `ide`;

-- Tp
CREATE DATABASE `codex`;
use `codex`;
CREATE TABLE `clients`
(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `lastname` VARCHAR(10),
    `firstname` VARCHAR(10),
    `birthDate` DATE,
    `adress` VARCHAR (30),
    `firstPhoneNumber` INT,
    `secondPhoneNumber` INT,
    `mail` VARCHAR(30)
);
ENGINE=INNODB;
+-------------------+-------------+------+-----+---------+----------------+
| Field             | Type        | Null | Key | Default | Extra          |
+-------------------+-------------+------+-----+---------+----------------+
| id                | int(11)     | NO   | PRI | NULL    | auto_increment |
| lastname          | varchar(10) | YES  |     | NULL    |                |
| firstname         | varchar(10) | YES  |     | NULL    |                |
| birthDate         | date        | YES  |     | NULL    |                |
| adress            | varchar(30) | YES  |     | NULL    |                |
| firstPhoneNumber  | int(11)     | YES  |     | NULL    |                |
| secondPhoneNumber | int(11)     | YES  |     | NULL    |                |
| mail              | varchar(30) | YES  |     | NULL    |                |
+-------------------+-------------+------+-----+---------+----------------+

-- Fin TP
