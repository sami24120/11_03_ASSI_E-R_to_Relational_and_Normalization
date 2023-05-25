CREATE TABLE Personas (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  phone_number VARCHAR(255)
);

CREATE TABLE Entradas (
  code INT PRIMARY KEY,
  codePartidos INT,
  FOREIGN KEY (codePartidos) REFERENCES Partidos(code)
);

CREATE TABLE PERSONA_BUY_ENTRADAS (
  codeEntradas INT,
  idPersonas INT,
  precio DECIMAL(10, 2),
  FOREIGN KEY (codeEntradas) REFERENCES Entradas(code),
  FOREIGN KEY (idPersonas) REFERENCES Personas(id)
);

CREATE TABLE Partidos (
  code INT PRIMARY KEY,
  name_team VARCHAR(255),
  game_date DATE
);

CREATE TABLE Goles (
  goles_por_jugador INT,
  minute_gol INT,
  codePartidos INT,
  FOREIGN KEY (codePartidos) REFERENCES Partidos(code)
);

CREATE TABLE Players (
  id INT PRIMARY KEY,
  posicion_Campo VARCHAR(255),
  nombre VARCHAR(255),
  birth_Date DATE,
  idTeams INT,
  FOREIGN KEY (idTeams) REFERENCES Teams(id)
);

CREATE TABLE Portero (
  idPlayers INT,
  gol_por_partido INT,
  Paradas_por_partido INT,
  FOREIGN KEY (idPlayers) REFERENCES Players(id)
);

CREATE TABLE Jugador_de_Campo (
  idPlayers INT,
  Gol_por_partido INT,
  Minutos_jugados INT,
  FOREIGN KEY (idPlayers) REFERENCES Players(id)
);

CREATE TABLE Teams (
  id INT PRIMARY KEY,
  name_team VARCHAR(255),
  name_stadium VARCHAR(255),
  ciudadFundada DATE
);

CREATE TABLE Seasons (
  code INT,
  date DATE
);

CREATE TABLE Presidente (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  dni VARCHAR(255),
  birth_date DATE,
  año_seleccionado INT,
  equipo_lidera VARCHAR(255)
);

CREATE TABLE Stadium (
  id INT PRIMARY KEY,
  name_Stadium VARCHAR(255)
);

CREATE TABLE Seat (
  id INT PRIMARY KEY,
  n_seat INT,
  idStadium INT,
  FOREIGN KEY (idStadium) REFERENCES Stadium(id)
);

CREATE TABLE Players_Idol_Players (
  idPlayers INT,
  idIdol INT,
  FOREIGN KEY (idPlayers) REFERENCES Players(id),
  FOREIGN KEY (idIdol) REFERENCES Players(id)
);

