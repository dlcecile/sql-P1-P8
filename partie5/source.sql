use `webDevelopment`;
-- Dans la table languages, afficher toutes les données de la table.
SELECT * FROM `languages`;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+

-- Dans la table languages, afficher toutes les versions de PHP
SELECT `version` FROM `languages` WHERE `language`='php';
+-------------+
| version     |
+-------------+
| version 5.2 |
| version 5.4 |
| version 7   |
+-------------+
ou
SELECT * FROM `languages` WHERE `language`='php';
+----+----------+-------------+
| id | language | version     |
+----+----------+-------------+
|  2 | PHP      | version 5.2 |
|  3 | PHP      | version 5.4 |
|  8 | PHP      | version 7   |
+----+----------+-------------+
-- Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
 SELECT * FROM `languages` WHERE `language`='JavaScript' OR `language`='PHP';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
-- Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
 SELECT * FROM `languages` WHERE `id` IN (3,5,7);
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+
-- Dans la table languages,afficher les deux première entrées de JavaScript.
SELECT * FROM `languages` WHERE `language` = 'Javascript' LIMIT 2;
+----+------------+-----------+
| id | language   | version   |
+----+------------+-----------+
|  1 | JavaScript | version 5 |
|  5 | JavaScript | version 6 |
+----+------------+-----------+
-- Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP
SELECT * FROM `languages` WHERE `language` != 'PHP';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+
-- Dans la table languages,afficher toutes les données par ordre alphabétique.
SELECT * FROM `languages` ORDER BY `language`;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  4 | HTML       | version 5.1 |
|  1 | JavaScript | version 5   |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  8 | PHP        | version 7   |
+----+------------+-------------+
