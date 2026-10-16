CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

ALTER TABLE Plat ADD COLUMN idCategories INTEGER;
ALTER TABLE Plat ADD CONSTRAINT fk_plat_categories
FOREIGN KEY (idCategories) REFERENCES categories(id);

INSERT INTO categories (nom) VALUES ('Plat malagasy'),('Plat chinois'),('Soupe'),('Dessert et goûter'),('Boisson');


UPDATE Plat
SET idCategories = (SELECT id FROM categories WHERE nom = 'Plat malagasy')
WHERE nom IN ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');

UPDATE Plat
SET idCategories = (SELECT id FROM categories WHERE nom = 'Plat chinois')
WHERE nom = 'Misao';

UPDATE Plat
SET idCategories = (SELECT id FROM categories WHERE nom = 'Soupe')
WHERE nom = 'Soupe chinoise';

UPDATE Plat
SET idCategories = (SELECT id FROM categories WHERE nom = 'Dessert et goûter')
WHERE nom = 'Mofo gasy';

UPDATE Plat
SET idCategories = (SELECT id FROM categories WHERE nom = 'Boisson')
WHERE nom = 'Ranon amapango';