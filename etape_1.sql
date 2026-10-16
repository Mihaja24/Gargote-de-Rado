CREATE DATABASE gargote;
CREATE TABLE Plat (
    id SERIAL PRIMARY KEY,
    nom Varchar(100),
    prix INTEGER   
);

INSERT INTO Plat (nom, prix) VALUES 
    ('Romazava', 7000),
    ('Ravitoto sy henakisoa', 8000),
    ('Akoho sy voanio', 8500),
    ('Misao', 6000),
    ('Soupe chinoise', 5000),
    ('Mofo gasy', 1000),
    ('Ranon amapango', 500); 



