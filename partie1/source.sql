-- permet de créer la base de donnée
CREATE DATABASE IF NOT EXISTS `languages`;
-- permet de créer la base de donnée avec un encodage utf-8
CREATE DATABASE `webDevelopment` CHARACTER SET 'utf8';
-- permet de créer la base de donnée si elle n'existe pas avec un encodage utf-8
CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET 'utf8';
CREATE DATABASE IF NOT EXISTS `languages` CHARACTER SET 'utf8';
-- supprime la base de donnée
DROP DATABASE `languages`;
-- supprime la base de donnée si elle existe
DROP DATABASE IF EXISTS `frameworks`;
DROP DATABASE IF EXISTS `languages`;
