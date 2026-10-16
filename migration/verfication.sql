-- Etape 1
SELECT * FROM Plat ORDER BY prix DESC;

-- Etape 2
SELECT c.nom AS categorie, COUNT(p.id) AS nombre_plat
FROM categories c
LEFT JOIN Plat p ON p.idCategories = c.id
GROUP BY c.id, c.nom
ORDER BY c.nom;