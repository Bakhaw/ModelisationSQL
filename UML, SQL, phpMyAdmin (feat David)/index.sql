CREATE TABLE lists
(
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(255),
   PRIMARY KEY (id)
);

INSERT INTO lists(name) VALUES
(‘backlogs’),
(‘A faire’),
(‘En cours’),
(‘Fait’);

CREATE TABLE cards(
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(255),
   list_id INt,
   PRIMARY KEY (id),
   FOREIGN KEY(list_id) REFERENCES lists(id) on delete set null,
   index (list_id)
 );

 INSERT INTO cards(name, list_id) VALUES
  (‘faure un e requête SQL’, 4),
  (‘faire une appli NodeJS’, 2),
  (‘connecter l appli à la BDD’, 1),
  (‘Créer des routes d API’, 2),
  (‘Utiliser un ORM sur une base relationnelle’, 1),
  (‘utiliser un ORM sur une base non-relationnelle’, 4),
  (‘Créer une web app pour intégréer lAPI’, 2),
  (‘créer une relation one to many’, 3),
  (‘créer une relation many to many’, 3);

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
