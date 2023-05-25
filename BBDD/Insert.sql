
INSERT INTO Partidos (code, name_team, game_date) VALUES
(1, 'FC Barcelona ', '2023-05-20'),
(2, 'RCD Mallorca', '2023-05-22'),
(3, 'Real Madrid', '2023-05-25');


INSERT INTO Players (id, posicion_campo, nombre, birth_date) VALUES
(1, 'Delantero', 'Jugador 1', '1990-01-01'),
(2, 'Defensa', 'Jugador 2', '1992-03-15'),
(3, 'Mediocampista', 'Jugador 3', '1988-07-10');


INSERT INTO Portero (id, paradas_por_partido, gol_por_partido) VALUES
(1, 5, 0),
(2, 3, 0),
(3, 2, 0);


INSERT INTO Teams (id, name_stadium, ciudad_fundada, name_team) VALUES
(1, 'Camp Nou', 'Barcelona', 'FC Barcelona'),
(2, 'Son Moix', 'Mallorca', 'RCD Mallorca'),
(3, 'Santiago Bernabeu', 'Madrid', 'Real Madrid ');


INSERT INTO Stadium (id, name_stadium) VALUES
(1, 'Camp Nou'),
(2, 'Son Moix'),
(3, 'Santiago Bernabeu');


INSERT INTO Seat (id, seat_number) VALUES
(1, 1),
(2, 2),
(3, 3);


INSERT INTO Seasons (code, date) VALUES
(1, '2023-01-01'),
(2, '2023-05-01'),
(3, '2023-09-01');


INSERT INTO Presidente (id, name, dni, birth_date, año_seleccionado, equipo_lidera) VALUES
(1, 'Joan Laporta', '123456789', '1975-02-10', 2023, 'FC Barcelona'),
(2, 'Andy Kohlberg', '987654321', '1980-06-20', 2023, 'RCD Mallorca'),
(3, 'Florentino Perez', '543216789', '1978-12-05', 2023, 'Real Madrid');


INSERT INTO Goles (id, goles_por_jugador, minute_gol) VALUES
(1, 2, 30),
(2, 1, 60),
(3, 0, 0);


INSERT INTO JugadorDeCampo (id, gol_por_partido, minutos_jugados) VALUES
(1, 0.5, 90),
(2, 0.25, 90),
(3, 0, 0);
