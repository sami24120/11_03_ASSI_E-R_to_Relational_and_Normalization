# 11_03_ASSI_E-R_to_Relational_and_Normalization



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
- Entradas(**code**)  
- Personas(**id**,name,phone_number)  
Creamos una tabla porque la relacion tiene un atributo **precio**
- PERSONA_BUY_ENTRADAS(**codeEntradas**,**idPersonas**,precio)  
  - codeEntradas: FOREIGN KEY de Entradas(code)
  - idPersonas: FOREIGN KEY de Personas(id)  
![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/2bc72a18-b48c-427c-b655-fe94cd9d4910)
Aqui tenemos:
- Partidos(**code**,name_team,game_date)  
- Entradas(**code**,*codePartidos*)  
 - codePartidos: FOREIGN KEY de Partidos(*code*)  
Las relaciones con cardinalidad 1:N no generan una tabla. La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/a3915432-e6d2-4209-99c0-7416c68f0a2a)  
Aqui tenemos:  
- Partidos(**code**,name_team,game_date)  
- Goles(goles_por_jugador,minute_gol,*codePartidos*)  
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


----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
# DDL 

En la carpeta `BBDD` hay dos archivos:

El `archivo DDL.sql` es donde hemos creado las tablas

El archivo `Insertar.sql `es el script para rellenar las tablas 

