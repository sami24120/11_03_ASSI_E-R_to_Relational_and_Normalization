# 11_03_ASSI_E-R_to_Relational_and_Normalization

Authors

**Kevin Coaquira Choquecallata**  
**Sami Said Benyacoub Manseur**  

INDICE

+ Modelo Entidad Relacion 
* Modelo Relacional 
- DDL

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





# Modelo Entidad Relacion 

 Este es el diagrama Entidad Relacion en el que hemos hecho el trabajo

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/4c9a31c5-e05b-4fad-b231-c5d57166586c)



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Modelo Relacional

Este es el modelo Relacional 

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/6c1cfb32-1f29-4796-929a-c99d8470a3ea)  
Aqui tenemos:  
- Entradas(**code**,id_personas,precio)
  - id_personas: FOREIGN KEY de Personas(id)  
- Personas(**id**,name,phone_number)  


![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/2bc72a18-b48c-427c-b655-fe94cd9d4910)
Aqui tenemos:
- Partidos(**code**,name_team,game_date)  
- Entradas(**code**,*codePartidos*)  
 - codePartidos: FOREIGN KEY de Partidos(*code*)  
Las relaciones con cardinalidad 1:N no generan una tabla. La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/f7d636bb-a02e-4460-948d-75ca902f8467)  
Aqui tenemos:  
- Partidos(**code**,name_team,game_date)  
- Goles(**id**,goles_por_jugador,minute_gol,*codePartidos*)  
 - codePartidos: FOREIGN KEY de Partidos(*code*)  
Las relaciones con cardinalidad 1:N no generan una tabla. La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/ddfb9444-6998-4fad-b93d-d6d836691fb6)  
Aqui tenemos:  
- Players(**id**,posicion_Campo,nombre,birth_Date)
- Portero(*idPlayers*,gol_por_partido,Paradas_por_partido)  
   -idPlayers: FOREIGN KEY de Players(*id*)
- Jugador_de_Campo(*idPlayers*,Gol_por_partido,Minutos_jugados)  
  -idPlayers: FOREIGN KEY de Players(*id*)  
Aqui creamos una tabla para cada una de las entidades, tanto para la superclase como las subclase. En este caso las subclases tendrían que guardar la clave primaria de la superclase.  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/18c41207-870a-4ed2-8201-84e57797a450)  
Aqui tenemos:  
- Teams(**id**,name_team,name_stadium,ciudadFundada)  
- Players(**id**,posicion_Campo,nombre,birth_Date,*idTeams*)
  -idTeams: FOREIGN KEY de Teams(id)  
La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/d038ed6b-093d-4974-9ad7-c566d78b2516)  
Aqui tenemos:  
- Teams(**id**,name_team,name_stadium,ciudadFundada)
- Seasons(**code**,date)
- Presidente(**id**,name,dni,birth_date,año_seleccionado,equipo_lidera)  
- Teams_Has_Seasons_Has_Presidente(idTeams,codeSeasons,idPresidente)  
  - idTeams: FOREIGN KEY de Teams(id)
  - codeSeasons: FOREIGN KEY de Seasons(code)  
  - idPresidente: FOREIGN KEY de Presidente(id)
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/17afce37-103d-4925-a8e5-5c2e71dd500a)  
Aqui tenemos:
- Stadium(**id**,name_Stadium)
- Seat(**id**,nºseat,*idStadium*)
  - idStadium: FOREIGN KEY de Stadium(id)
Aqui creamos 2 tablas por el hecho que son entidades fuertes y débil. Le añadimos un FOREIGN KEY por el hecho que en el otro lado tiene 1,* por lo tanto el id de stadium pasa a ser de **Seat**  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/4fa94acc-1c52-4355-89b4-0ba62ff89a25)  
Aqui tenemos:  
- Players(**id**,posicion_Campo,nombre,birth_Date)
- Players_Idol_Players(idPlayers,idIdol)
  - idPlayers: FOREIGN KEY de Players(id)
  - idIdol: FOREIGN KEY de Player(id)  
Aqui creamos 2 tablas. La tabla Players y una nueva tabla que enlaza con la relacion llamada Players_Idol_Players  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/5b311234-eb86-4a5e-8c0d-be1959d65449)  
Aqui tenemos:
- Arbitraje(**id**,name,faltas_por_partido)
- Partidos(**code**,game_Date,idArbitraje)
  - idArbitraje: FOREIGN KEY de Arbitraje(id)  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/ff884f55-648f-4d74-b12c-cbb2d580e8cf)  
Aqui tenemos:  
- Stadium(**id**,name_stadium)
- Teams(**id**,ciudadFundada,name_stadium,name_team)
- Team_Has_Stadium(idStadium,idTeams)
  - idStadium: FOREIGN KEY de Stadium(id)
  - idTeams: FOREIGN KEY de Teams(id)  
  
  ![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/2cfa7130-c60f-4ed0-bc04-bab3b02aafcd)  
Aqui tenemos:  
- Partidos(**code**,game_date,name_team)
- Teams(**id**,name_team,ciudadFundada,name_stadium)
- Partidos_Local_Teams(codePartidos,idTeams)
  - codePartidos: FOREIGN KEY de Partidos(code)
  - idTeams: FOREIGN KEY de Teams(id)
- Partidos_Visitante_Local(codePartidos,idTeams)
  - codePartidos: FOREIGN KEY de Partidos(code)
  - idTeams: FOREIGN KEY de Teams(id)  
Creamos una nueva tabla donde se almacenan las claves primarias de las dos entidades que participan en la relación. Las claves primarias de las entidades también serán claves primarias de la nueva tabla.
  

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
# DDL 

En la carpeta `BBDD` hay dos archivos:

El `archivo DDL.sql` es donde hemos creado las tablas

El archivo `Insertar.sql `es el script para rellenar las tablas 

