-- Insertar valores en la tabla Partidos
INSERT INTO Partidos (code, name_team, game_date) VALUES
(1, 'Equipo A', '2023-05-20'),
(2, 'Equipo B', '2023-05-22'),
(3, 'Equipo C', '2023-05-25');

-- Insertar valores en la tabla Players
INSERT INTO Players (id, posicion_campo, nombre, birth_date) VALUES
(1, 'Delantero', 'Jugador 1', '1990-01-01'),
(2, 'Defensa', 'Jugador 2', '1992-03-15'),
(3, 'Mediocampista', 'Jugador 3', '1988-07-10');

-- Insertar valores en la tabla Portero
INSERT INTO Portero (id, paradas_por_partido, gol_por_partido) VALUES
(1, 5, 0),
(2, 3, 0),
(3, 2, 0);

-- Insertar valores en la tabla Teams
INSERT INTO Teams (id, name_stadium, ciudad_fundada, name_team) VALUES
(1, 'Camp Nou', 'Barcelona', 'FC Barcelona'),
(2, 'Son Moix', 'Mallorca', 'RCD Mallorca'),
(3, 'Santiago Bernabeu', 'Madrid', 'Real Madrid ');

-- Insertar valores en la tabla Stadium
INSERT INTO Stadium (id, name_stadium) VALUES
(1, 'Camp Nou'),
(2, 'Son Moix'),
(3, 'SantiagoBernabeu');

-- Insertar valores en la tabla Seat
INSERT INTO Seat (id, seat_number) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insertar valores en la tabla Seasons
INSERT INTO Seasons (code, date) VALUES
(1, '2023-01-01'),
(2, '2023-05-01'),
(3, '2023-09-01');

-- Insertar valores en la tabla Presidente
INSERT INTO Presidente (id, name, dni, birth_date, año_seleccionado, equipo_lidera) VALUES
(1, 'Joan Laporta', '123456789', '1975-02-10', 2023, 'FC Barcelona'),
(2, 'Andy Kohlberg', '987654321', '1980-06-20', 2023, 'RCD Mallorca'),
(3, 'Florentino Perez', '543216789', '1978-12-05', 2023, 'Real Madrid');

-- Insertar valores en la tabla Goles
INSERT INTO Goles (id, goles_por_jugador, minute_gol) VALUES
(1, 2, 30),
(2, 1, 60),
(3, 0, 0);

-- Insertar valores en la tabla JugadorDeCampo
INSERT INTO JugadorDeCampo (id, gol_por_partido, minutos_jugados) VALUES
(1, 0.5, 90),
(2, 0.25, 90),
(3, 0, 0);
