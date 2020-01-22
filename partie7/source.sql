use `webDevelopment`;
-- Dans la table languages, supprimer toutes les lignes parlant de HTML.
DELETE FROM `languages` WHERE `language`='HTML';
 -- Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.
UPDATE `frameworks` SET `framework`='Symfony2' WHERE `framework`='Symfony';
+-----------+
| framework |
+-----------+
| Symfony2  |
| Symfony2  |
| Jquery    |
| Jquery    |
+-----------+
-- Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1 ( condition si le language est le javascript et que la version est égale à la version 5.1)
UPDATE `languages` SET `version`='version 5.1' WHERE `language`='JavaScript' AND `version`='version 5';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5.1 |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
