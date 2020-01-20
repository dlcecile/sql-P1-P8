use `webDevelopment`;
-- Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).
SELECT * FROM `frameworks` WHERE `version` LIKE '2.%';
--Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.
SELECT * FROM `frameworks` WHERE id IN (1, 3);
+----+-----------+-------------+
| id | framework | version     |
+----+-----------+-------------+
|  1 | Symfony   | version 2.8 |
|  3 | Jquery    | version 1.6 |
+----+-----------+-------------+
-- Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.
SELECT * FROM `ide` WHERE date BETWEEN '2010-01-01' AND '2011-12-31';
+----+----------+---------+------------+
| id | name     | version | date       |
+----+----------+---------+------------+
|  3 | Eclipse  | 3.6     | 2010-06-01 |
|  4 | Eclipse  | 3.7     | 2011-06-01 |
|  6 | NetBeans | 7       | 2011-04-01 |
+----+----------+---------+------------+
