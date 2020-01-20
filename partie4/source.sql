use `webDevelopment`;
-- Insérez les données suivantes dans la table languages de la base webDevelopment :
-- JavaScript, version 5 PHP, version 5.2 PHP, version 5.4 HTML, version 5.1 JavaScript, version 6 JavaScript, version 7 JavaScript, version 8 PHP, version 7
    +--------------------------+
    | Tables_in_webDevelopment |
    +--------------------------+
    | frameworks               |
    | languages                |
    +--------------------------+
    +----------+--------------+------+-----+---------+----------------+
    | Field    | Type         | Null | Key | Default | Extra          |
    +----------+--------------+------+-----+---------+----------------+
    | id       | int(11)      | NO   | PRI | NULL    | auto_increment |
    | language | varchar(12)  | YES  |     | NULL    |                |
    | version  | varchar(255) | YES  |     | NULL    |                |
    +----------+--------------+------+-----+---------+----------------+
INSERT INTO `languages`(`language`,`version`)
VALUES
('JavaScript', 'version 5'),
('PHP', 'version 5.2'),
('PHP', 'version 5.4'),
('HTML', 'version 5.1'),
('JavaScript', 'version 6'),
('JavaScript', 'version 7'),
('JavaScript', 'version 8'),
('PHP', 'version 7');
-- Insérez les données suivantes dans la table frameworks de la base webDevelopment :
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int(11)      | NO   | PRI | NULL    | auto_increment |
| framework | varchar(255) | YES  |     | NULL    |                |
| version   | varchar(10)  | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
-- Erreur car version varchar (10)
ALTER TABLE `frameworks`
MODIFY `version` VARCHAR(255);
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int(11)      | NO   | PRI | NULL    | auto_increment |
| framework | varchar(255) | YES  |     | NULL    |                |
| version   | varchar(255) | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+

INSERT INTO `frameworks` (`framework`,`version`)
VALUES
('Symfony', 'version 2.8'),
('Symfony', 'version 3'),
('Jquery', 'version 1.6'),
('Jquery', 'version 2.10');
-- Visualiser le résultat
SELECT `framework`, `version` FROM `frameworks`;
+-----------+--------------+
| framework | version      |
+-----------+--------------+
| Symfony   | version 2.8  |
| Symfony   | version 3    |
| Jquery    | version 1.6  |
| Jquery    | version 2.10 |
+-----------+--------------+
