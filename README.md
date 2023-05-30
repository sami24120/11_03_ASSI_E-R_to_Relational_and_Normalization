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
- Entradas(**code**,id_personas,precio,codePartido)
  - id_personas: FOREIGN KEY de Personas(id)  
  - codePartido: FOREIGN KEY de Partidos(code) 
- Personas(**id**,name,phone_number)  
Las relaciones con cardinalidad 1:N no generan una tabla. La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/2bc72a18-b48c-427c-b655-fe94cd9d4910)
Aqui tenemos:
- Partidos(**code**,name_team,game_date, idArbitraje,local_team, away_team)
  - idArbitraje: FOREIGN KEY de Arbitraje(id)  
Las relaciones con cardinalidad 1:N no generan una tabla. La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/f7d636bb-a02e-4460-948d-75ca902f8467)  
Aqui tenemos:  
- Goles(**id**,goles_por_jugador,minute_gol,*codePartidos*)  
  - codePartidos: FOREIGN KEY de Partidos(*code*)  
Las relaciones con cardinalidad 1:N no generan una tabla. La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/fa58d5e8-6a2d-4d5b-9ce5-e54300c3e201)  
Aqui tenemos:  
- Players(**id**,posicion_Campo,nombre,birth_Date,*idTeams*)
  - idTeams:FOREIGN KEY de Teams(id)
- Portero(, **idPlayers**,gol_por_partido,Paradas_por_partido)  
   -idPlayers: FOREIGN KEY de Players(*id*)
- Jugador_de_Campo(**idPlayers**,Gol_por_partido,Minutos_jugados)  
  -idPlayers: FOREIGN KEY de Players(*id*)  
Aqui creamos una tabla para cada una de las entidades, tanto para la superclase como las subclase. En este caso las subclases tendrían que guardar la clave primaria de la superclase.  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/18c41207-870a-4ed2-8201-84e57797a450)  
Aqui tenemos:  
- Teams(**id**,name_team,name_stadium,ciudadFundada)  
La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/d038ed6b-093d-4974-9ad7-c566d78b2516)  
Aqui tenemos:  
- Seasons(**code**,date)
- Presidente(**id**,name,dni,birth_date,año_seleccionado,equipo_lidera)  
- Teams_Has_Seasons_Has_Presidente(idTeams,codeSeasons,idPresidente)  
  - idTeams: FOREIGN KEY de Teams(id)
  - codeSeasons: FOREIGN KEY de Seasons(code)  
  - idPresidente: FOREIGN KEY de Presidente(id)  

Aqui creamos una tabla auxiliar, ya que se trata de una ternary.
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/17afce37-103d-4925-a8e5-5c2e71dd500a)  
Aqui tenemos:
- Stadium(**id**,name_Stadium)
- Seat(**id**,nºseat,**idStadium**)
  - idStadium: FOREIGN KEY de Stadium(id)  
Aqui creamos 2 tablas por el hecho que son entidades fuertes y débil. Le añadimos un FOREIGN KEY por el hecho que en el otro lado tiene 1,* por lo tanto el id de stadium pasa a ser de **Seat**  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/ffc757c4-dd1d-419e-8c39-df8a1fa1cf5c)  
Aqui tenemos:  
- Players_Idol_Players(**idPlayers**,**idIdol**)
  - idPlayers: FOREIGN KEY de Players(id)
  - idIdol: FOREIGN KEY de Player(id)  
Aqui creamos 2 tablas. La tabla Players y una nueva tabla que enlaza con la relacion llamada Players_Idol_Players  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/5b311234-eb86-4a5e-8c0d-be1959d65449)  
Aqui tenemos:
- Arbitraje(**id**,name,faltas_por_partido)

Aqui el id de arbitraje se ira a la tabla Partido que actuara como FK.  

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/ff884f55-648f-4d74-b12c-cbb2d580e8cf)  
Aqui tenemos:  
- Team_Has_Stadium(**idStadium**,**idTeams**)
  - idStadium: FOREIGN KEY de Stadium(id)
  - idTeams: FOREIGN KEY de Teams(id)  

Aqui creamos una tabla auxiliar ya que la relacion es N:M
  
  ![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/2cfa7130-c60f-4ed0-bc04-bab3b02aafcd)  
  Aqui insertamos **local_team** y **away_team** y lo almacenamos dentro de la entidad **Team**  



  

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
# DDL 

En la carpeta `BBDD` hay dos archivos:

El `archivo DDL.sql` es donde hemos creado las tablas

El archivo `Insertar.sql `es el script para rellenar las tablas 

