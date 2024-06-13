-- Tabelul universitate
CREATE TABLE IF NOT EXISTS universitate (
    id SERIAL PRIMARY KEY,
    nume VARCHAR(100),
    geom GEOMETRY(Polygon, 4326)
);

-- Tabelul facultate
CREATE TABLE IF NOT EXISTS facultate (
    id SERIAL PRIMARY KEY,
    nume VARCHAR(100),
    geom GEOMETRY(Polygon, 4326)
);

-- Tabelul departament
CREATE TABLE IF NOT EXISTS departament (
    id SERIAL PRIMARY KEY,
    nume VARCHAR(100),
    geom GEOMETRY(Polygon, 4326)
);

-- Tabelul program_de_studii
CREATE TABLE IF NOT EXISTS program_de_studii (
    id SERIAL PRIMARY KEY,
    nume VARCHAR(100),
    geom GEOMETRY(Point, 4326)
);

-- Tabelul profesor
CREATE TABLE IF NOT EXISTS profesor (
    id SERIAL PRIMARY KEY,
    nume VARCHAR(100),
    geom GEOMETRY(Point, 4326)
);

-- Tabelul student
CREATE TABLE IF NOT EXISTS student (
    id SERIAL PRIMARY KEY,
    nume VARCHAR(100),
    geom GEOMETRY(Point, 4326)
);

-- Tabelul materie
CREATE TABLE IF NOT EXISTS materie (
    id SERIAL PRIMARY KEY,
    nume VARCHAR(100),
    geom GEOMETRY(Point, 4326)
);

-- Tabelul parinte
CREATE TABLE IF NOT EXISTS parinte (
    id SERIAL PRIMARY KEY,
    nume VARCHAR(100),
    geom GEOMETRY(Point, 4326)
);
