-- Crear tabla Partidos
CREATE TABLE Partidos (
  code INT PRIMARY KEY,
  name_team VARCHAR(255),
  game_date DATE
);

-- Crear tabla Players
CREATE TABLE Players (
  id INT PRIMARY KEY,
  posicion_campo VARCHAR(255),
  nombre VARCHAR(255),
  birth_date DATE
);

-- Crear tabla Portero
CREATE TABLE Portero (
  id INT PRIMARY KEY,
  paradas_por_partido INT,
  gol_por_partido INT,
  FOREIGN KEY (id) REFERENCES Players(id)
);

-- Crear tabla Teams
CREATE TABLE Teams (
  id INT PRIMARY KEY,
  name_stadium VARCHAR(255),
  ciudad_fundada VARCHAR(255),
  name_team VARCHAR(255)
);

-- Crear tabla Stadium
CREATE TABLE Stadium (
  id INT PRIMARY KEY,
  name_stadium VARCHAR(255)
);

-- Crear tabla Seat
CREATE TABLE Seat (
  id INT PRIMARY KEY,
  seat_number INT
);

-- Crear tabla Seasons
CREATE TABLE Seasons (
  code INT PRIMARY KEY,
  date DATE
);

-- Crear tabla Presidente
CREATE TABLE Presidente (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  dni VARCHAR(255),
  birth_date DATE,
  año_seleccionado INT,
  equipo_lidera VARCHAR(255)
);

-- Crear tabla Goles
CREATE TABLE Goles (
  id INT PRIMARY KEY,
  goles_por_jugador INT,
  minute_gol INT
);

-- Crear tabla JugadorDeCampo
CREATE TABLE JugadorDeCampo (
  id INT PRIMARY KEY,
  gol_por_partido INT,
  minutos_jugados INT
);