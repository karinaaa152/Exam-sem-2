-- Calcularea suprafeței și perimetrului campusului universitar
SELECT 
  id, 
  nume, 
  ST_Area(geom) AS area, 
  ST_Perimeter(geom) AS perimeter 
FROM 
  universitate;

-- Determinarea centroidului campusului universitar
SELECT 
  id, 
  nume, 
  ST_Centroid(geom) AS centroid 
FROM 
  universitate;
-- Calcularea suprafeței și perimetrului pentru fiecare facultate
SELECT 
  id, 
  nume, 
  ST_Area(geom) AS area, 
  ST_Perimeter(geom) AS perimeter 
FROM 
  facultate;

-- Determinarea centroidului fiecărei facultăți
SELECT 
  id, 
  nume, 
  ST_Centroid(geom) AS centroid 
FROM 
  facultate;
-- Calcularea suprafeței și perimetrului pentru fiecare departament
SELECT 
  id, 
  nume, 
  ST_Area(geom) AS area, 
  ST_Perimeter(geom) AS perimeter 
FROM 
  departament;

-- Determinarea centroidului fiecărui departament
SELECT 
  id, 
  nume, 
  ST_Centroid(geom) AS centroid 
FROM 
  departament;
-- Determinarea coordonatelor locațiilor programelor de studii
SELECT 
  id, 
  nume, 
  ST_AsText(geom) AS location 
FROM 
  program_de_studii;

-- Calcularea distanței față de un punct de referință (de exemplu, centrul campusului)
SELECT 
  id, 
  nume, 
  ST_Distance(geom, ST_GeomFromText('POINT(30.5 50.5)', 4326)) AS distance 
FROM 
  program_de_studii;
-- Determinarea coordonatelor birourilor profesorilor
SELECT 
  id, 
  nume, 
  ST_AsText(geom) AS location 
FROM 
  profesor;

-- Calcularea distanței dintre birourile profesorilor și un punct de referință (de exemplu, centrul facultății)
SELECT 
  id, 
  nume, 
  ST_Distance(geom, ST_GeomFromText('POINT(30.5 50.5)', 4326)) AS distance 
FROM 
  profesor;
-- Determinarea coordonatelor locațiilor studenților
SELECT 
  id, 
  nume, 
  ST_AsText(geom) AS location 
FROM 
  student;

-- Calcularea distanței dintre locațiile studenților și un punct de referință (de exemplu, centrul campusului)
SELECT 
  id, 
  nume, 
  ST_Distance(geom, ST_GeomFromText('POINT(30.5 50.5)', 4326)) AS distance 
FROM 
  student;-- Determinarea coordonatelor birourilor profesorilor
SELECT 
  id, 
  nume, 
  ST_AsText(geom) AS location 
FROM 
  profesor;

-- Calcularea distanței dintre birourile profesorilor și un punct de referință (de exemplu, centrul facultății)
SELECT 
  id, 
  nume, 
  ST_Distance(geom, ST_GeomFromText('POINT(30.5 50.5)', 4326)) AS distance 
FROM 
  profesor;
-- Determinarea coordonatelor locațiilor studenților
SELECT 
  id, 
  nume, 
  ST_AsText(geom) AS location 
FROM 
  student;

-- Calcularea distanței dintre locațiile studenților și un punct de referință (de exemplu, centrul campusului)
SELECT 
  id, 
  nume, 
  ST_Distance(geom, ST_GeomFromText('POINT(30.5 50.5)', 4326)) AS distance 
FROM 
  student;
-- Determinarea coordonatelor locațiilor pentru materii
SELECT 
  id, 
  nume, 
  ST_AsText(geom) AS location 
FROM 
  materie;

-- Calcularea distanței dintre locațiile materiilor și un punct de referință
SELECT 
  id, 
  nume, 
  ST_Distance(geom, ST_GeomFromText('POINT(30.5 50.5)', 4326)) AS distance 
FROM 
  materie;
-- Determinarea coordonatelor locațiilor părinților
SELECT 
  id, 
  nume, 
  ST_AsText(geom) AS location 
FROM 
  parinte;

-- Calcularea distanței dintre locațiile părinților și un punct de referință
SELECT 
  id, 
  nume, 
  ST_Distance(geom, ST_GeomFromText('POINT(30.5 50.5)', 4326)) AS distance 
FROM 
  parinte;

