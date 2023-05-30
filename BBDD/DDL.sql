CREATE TABLE Personas (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  phone_number VARCHAR(255)
);

CREATE TABLE Entradas (
  code INT PRIMARY KEY,
  codePartidos INT,
  precio DECIMAL,
  id_personas INT,
  FOREIGN KEY (codePartidos) REFERENCES Partidos(code),
  FOREIGN KEY (id_personas) REFERENCES Partidos(id)
);


CREATE TABLE Partidos (
  code INT PRIMARY KEY,
  name_team VARCHAR(255),
  game_date DATE,
  idArbitraje INT,
  local_team VARCHAR(30),
  away_team VARCHAR(30),
  FOREIGN KEY (idPartidos) REFERENCES Arbitraje(id)
);

CREATE TABLE Arbitraje(
  id INT, 
  name VARCHAR(30),
  faltas_por_partidos INT
);

CREATE TABLE Goles (
  id INT PRIMARY KEY,
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

CREATE TABLE Teams_Has_Seasons_Has_Presidente(
  idTeams INT,
  codeSeasons INT,
  idPresidente INT,
  FOREIGN KEY (idTeams) REFERENCES Teams(id),
  FOREIGN KEY (codeSeasons) REFERENCES Seasons(code),
  FOREIGN KEY (idPresidente) REFERENCES Presidente(id)
);

CREATE TABLE Team_Has_Stadium(
  idStadium INT,
  idTeams INT,
  FOREIGN KEY (idStadium) REFERENCES Stadium(id),
  FOREIGN KEY (idTeams) REFERENCES Teams(id)
);

CREATE TABLE Stadium (
  id INT PRIMARY KEY,
  name_stadium VARCHAR(255)
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

