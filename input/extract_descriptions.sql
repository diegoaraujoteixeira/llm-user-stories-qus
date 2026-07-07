-- Extração das descrições utilizadas como entrada no experimento
-- Base: dataset TAWOS (https://github.com/SOLAR-group/TAWOS)

SELECT p.Name AS ProjectName, c.Name AS ComponentName, c.Description
FROM Component c
JOIN Project p ON c.Project_ID = p.ID
WHERE c.Description IS NOT NULL AND LENGTH(c.Description) > 50
LIMIT 20;