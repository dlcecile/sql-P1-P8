-- Aller sur webDevelopment
use webDevelopment;
-- Ajouter une colonne à une table
ALTER TABLE `languages`
ADD versions VARCHAR(255);
-- Ajouter une colonne à une table
ALTER TABLE `frameworks`
ADD version INT;
-- Renommer une colonne
ALTER TABLE `languages`
CHANGE versions version VARCHAR(255);
-- Renommer une colonne;
ALTER TABLE `frameworks`
CHANGE name framework VARCHAR(255);
-- changer le type de la colonne
ALTER TABLE `frameworks`
MODIFY version VARCHAR(10);
-- Tp
-- Reprise du TP 2
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
-- Modification
-- Supprimer la colonne secondPhoneNumber
ALTER TABLE `clients`
DROP `secondPhoneNumber`;
-- renommer la colonne firstPhoneNumber en phoneNumber
ALTER TABLE `clients`
CHANGE `firstPhoneNumber` `phoneNumber` INT;
-- changer le type de la colonne phoneNumber en VARCHAR
ALTER TABLE `clients`
MODIFY `phoneNumber` VARCHAR(10);
-- ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
ALTER TABLE `clients`
ADD (`zipCode` VARCHAR(5),`city` VARCHAR(10));
-- Fin TP
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id          | int(11)     | NO   | PRI | NULL    | auto_increment |
| lastname    | varchar(10) | YES  |     | NULL    |                |
| firstname   | varchar(10) | YES  |     | NULL    |                |
| birthDate   | date        | YES  |     | NULL    |                |
| adress      | varchar(30) | YES  |     | NULL    |                |
| phoneNumber | varchar(10) | YES  |     | NULL    |                |
| mail        | varchar(30) | YES  |     | NULL    |                |
| zipCode     | varchar(5)  | YES  |     | NULL    |                |
| city        | varchar(10) | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
