USE `development`;
+-----------------------+
| Tables_in_development |
+-----------------------+
| frameworks            |
| languages             |
+-----------------------+
-- DESCRIBE frameworks;
+-------------+------------------+------+-----+---------+----------------+
| Field       | Type             | Null | Key | Default | Extra          |
+-------------+------------------+------+-----+---------+----------------+
| id          | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
| name        | varchar(40)      | NO   |     | NULL    |                |
| languagesId | int(11)          | NO   |     | NULL    |                |
+-------------+------------------+------+-----+---------+----------------+
--
-- DESCRIBE languages
+-------+------------------+------+-----+---------+----------------+
| Field | Type             | Null | Key | Default | Extra          |
+-------+------------------+------+-----+---------+----------------+
| id    | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
| name  | varchar(40)      | NO   |     | NULL    |                |
+-------+------------------+------+-----+---------+----------------+

--Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
SELECT * FROM `frameworks` RIGHT JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`;
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
SELECT * FROM `frameworks` LEFT JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`;
-- Afficher le nombre de framework qu'a un langage.
SELECT `languages`.`name`, COUNT(*) FROM `frameworks` INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id` GROUP BY `languages`.`name`;
-- Afficher les langages ayant plus de 3 frameworks.
SELECT `languages`.`name`, COUNT(*) FROM `frameworks` INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id` GROUP BY `languages`.`name` HAVING COUNT(*) > 3;

-- AIDE IMPORTANTE
-- SELECT nom_courant, COUNT(*) as nb_animaux
-- FROM Animal
-- INNER JOIN Espece ON Espece.id = Animal.espece_id
-- GROUP BY nom_courant;
--
-- SELECT sexe, COUNT(*) as nb_animaux
-- FROM Animal
-- GROUP BY sexe;
