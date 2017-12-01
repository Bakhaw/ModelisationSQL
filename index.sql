CREATE DATABASE IF NOT EXISTS boarddb1 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE boarddb1;
DROP TABLE IF EXISTS users_cards;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS lists;

CREATE TABLE lists
(
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(255),
   PRIMARY KEY (id)
);

INSERT INTO lists(name) VALUES
('Backlogs'),
('A faire'),
('En cours'),
('Fait');

CREATE TABLE cards(
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(255),
   list_id INt,
   PRIMARY KEY (id),
   FOREIGN KEY(list_id) REFERENCES lists(id) on delete set null,
   index (list_id)
 );

 INSERT INTO cards(name, list_id) VALUES
  ('Faire une requête SQL', 4),
  ('Faire une appli NodeJS', 2),
  ("Connecter l'appli à la BDD", 1),
  ("Créer des routes d'API", 2),
  ('Utiliser un ORM sur une base relationnelle', 1),
  ('Utiliser un ORM sur une base non-relationnelle', 4),
  ("Créer une web app pour intégrer l'API", 2),
  ('Créer une relation One to Many', 3),
  ('Créer une relation Many to Many', 3);

 CREATE TABLE users(
     id INT NOT NULL AUTO_INCREMENT,
     firstname VARCHAR(255),
     lastname VARCHAR(255),
     PRIMARY KEY (id)
  );

INSERT INTO users(lastname, firstname) VALUES
('Bajat', 'Jovana'),
('Be', 'Eugénie'),
('Belferoum', 'Nassim'),
('Châble', 'Stanislas'),
('Chekroun', 'Michael'),
('Cohen', 'Benjamin'),
('Coudoumié', 'Axel'),
('Drame', 'Boubacar'),
('El Bakkal', 'Amelle'),
('Endeki', 'Geoffrey'),
('Hattou', 'Faïssal'),
('Heinis', 'Steve');

CREATE TABLE users_cards(
    user_id INT,
    card_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (card_id) REFERENCES cards(id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, card_id),
    INDEX (user_id),
    INDEX (card_id)
);

INSERT INTO users_cards(user_id, card_id) VALUES
(1, 1),
(1, 9),
(2, 2),
(2, 4),
(2, 7),
(2, 9),
(3, 1),
(3, 8),
(3, 3),
(4, 1),
(4, 6),
(5, 8),
(5, 3),
(5, 4),
(5, 1),
(6, 7),
(7, 7),
(8, 6),
(8, 5),
(9, 4),
(9, 3),
(10, 3),
(11, 2),
(12, 9),
(12, 7);

-- //////////////////////////////////////////////////////

-- Exo 2:

CREATE DATABASE IF NOT EXISTS boarddb2 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE boarddb2;
DROP TABLE IF EXISTS users_cards_lists;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS lists;
CREATE TABLE lists
(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  PRIMARY KEY (id)
);
INSERT INTO lists(name) VALUES ('Backlogs'),('À faire'),('En cours'),('Fait');

CREATE TABLE cards
(
  id INT NOT NULL
  AUTO_INCREMENT,
  name VARCHAR
  (255),
  PRIMARY KEY
  (id)
);

  INSERT INTO cards
    (name)
  VALUES
    ('Faire une requête SQL'),
    ('Faire une appli NodeJS'),
    ('Connecter l''appli à la BDD'),
    ('Créer des routes d''API'),
    ('Utiliser un ORM sur une base relationnelle'),
    ('Utiliser un ORM sur une base non-relationnelle'),
    ('Créer une web app pour interroger l''API'),
    ('Créer une relation One to Many'),
    ('Créer une relation Many to Many');

    CREATE TABLE users
(
  id INT NOT NULL
  AUTO_INCREMENT,
  firstname VARCHAR
  (255),
  lastname VARCHAR
  (255),
  PRIMARY KEY
  (id)
);

  INSERT INTO users
    (lastname, firstname)
  VALUES
    ('Jovana', 'Bajat'),
    ('BE', 'Eugénie'),
    ('BELFEROUM', 'Nassim'),
    ('Châble', 'Stanislas'),
    ('Chekroun', 'Michael'),
    ('COHEN', 'Benjamin'),
    ('Coudoumié', 'Axel'),
    ('drame', 'boubacar'),
    ('EL BAKKAL', 'Amelle'),
    ('ENDEKI', 'Geoffrey'),
    ('Hattou', 'Faïssal'),
    ('Heinis', 'Steve');

    CREATE TABLE users_cards_lists(
 user_id INT,
 card_id INT,
 list_id INT NULL,
 FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
 FOREIGN KEY (card_id) REFERENCES cards(id) ON DELETE CASCADE,
 FOREIGN KEY (list_id) REFERENCES lists(id) ON DELETE SET NULL,
 PRIMARY KEY (user_id, card_id),
 INDEX
(user_id),
 INDEX
(card_id),
 INDEX
(list_id)
);

INSERT INTO users_cards_lists
  (user_id, card_id, list_id)
VALUES
  (1, 1, 3),
  (1, 9, 3),
  (2, 2, 1),
  (2, 4, 2),
  (2, 7, 4),
  (2, 9, 2),
  (3, 1, 1),
  (3, 8, 1),
  (3, 3, 4),
  (4, 1, 2),
  (4, 6, 3),
  (5, 8, 1),
  (5, 3, 3),
  (5, 4, 4),
  (5, 1, 4),
  (6, 7, 2),
  (7, 7, 3),
  (8, 6, 1),
  (8, 5, 4),
  (9, 4, 1),
  (9, 3, 2),
  (10, 3, 3),
  (11, 2, 3),
  (11, 1, 3),
  (12, 8, 1);