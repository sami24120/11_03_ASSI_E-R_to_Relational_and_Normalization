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
-Partidos(**code**,name_team,game_date)  
-Entradas(**code**,*codePartidos*)  
 -codePartidos: FOREIGN KEY de Partidos(*code*)  
Las relaciones con cardinalidad 1:N no generan una tabla. La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  

![image](https://github.com/sami24120/11_03_ASSI_E-R_to_Relational_and_Normalization/assets/91737963/a3915432-e6d2-4209-99c0-7416c68f0a2a)  
Aqui tenemos:  
-Partidos(**code**,name_team,game_date)  
-Goles(goles_por_jugador,minute_gol,*codePartidos*)  
 -codePartidos: FOREIGN KEY de Partidos(*code*)  
Las relaciones con cardinalidad 1:N no generan una tabla. La clave primaria de la entidad que participa en la relación con cardinalidad 1 se guarda en la tabla de la entidad que participa con cardinalidad N.  




# DDL 

En la carpeta `BBDD` hay dos archivos:

El `archivo DDL.sql` es donde hemos creado las tablas

El archivo `Insertar.sql `es el script para rellenar las tablas 

