--SELECT * FROM equipos;
--SELECT * FROM equipos where nombre = 'EQUIPO B';
--SELECT nombre FROM equipos;
--SELECT nombre, estadio FROM equipos;

-- Ej 1 
-- Obtén el nombre de todos los futbolistas de la base de datos.
SELECT nombre FROM futbolistas;
-- Ahora queremos saber la posicion que ocupan estos futbolistas (aunque se repitan valores).
SELECT posicion FROM futbolistas;
-- Se quiere saber las posiciones existentes por lo que se requieren la posicion de los futbolistas sin que se repitan.
SELECT DISTINCT posicion FROM futbolistas;

--Ej 2
-- Obtén todas las posiciones posibles (diferentes) de los futbolistas bajo encabezado "Demarcaciones".
SELECT DISTINCT posicion "Demarcaciones" FROM futbolistas;
--Muestra todos los datos almacenados de todos los futbolistas
SELECT * FROM futbolistas;
/* Se quieren todos los datos de los futbolistas pero con los siguientes alias de columna:
- id
- nombre
- apellidos
- fecha de nacimiento
- posición
- salario actual
- identificador equipo actual
*/
select 
    ID "id", 
    nombre "nombre",
    apellidos "apellidos",
    fecha_nacimiento "fecha de nacimiento",
    posicion  "posición",
    salario "salario actual",
    id_equipo "identificador equipo actual"
from futbolistas;
select * from equipos;
select * from futbolistas;
select * from equipos, futbolistas where id_equipo = equipo.id;
--EXPLICACIÓN
select id from equipos ;
select equipos.id from equipos;
select id from equipos e;
select e.id from equipos; --IMPORTANTE
select e.id from equipos e;
--EJ 3
select F.apellidos
    from futbolistas 
    where posicion = 'DEFENSA';
    
select e.id, f.nombre
    from equipos e,futbolistas f;
/*--OBLIGATORIO
select COLUMNAS from TABLAS.
--OPCIONALES
select COLUMNAS 
    FROM TABLAS
    WHERE CONDICIONES 
    ORDER BY columnas;
*/
select nombre, apellidos, salario from futbolistas order by salario;
select nombre, apellidos, salario from futbolistas order by salario asc; 
select nombre, apellidos, salario from futbolistas order by salario desc;
update futbolistas set apellidos='GALVEZ' where nombre='PABLO';
select nombre, apellidos, salario from futbolistas order by apellidos desc, salario desc;
select nombre, apellidos, salario from futbolistas order by 2 desc, 3 desc;
select nombre, fecha_nacimiento from futbolistas;
select nombre, fecha_nacimiento from futbolistas order by fecha_nacimiento desc;
--Ej 4
select apellidos from futbolistas where posicion = 'DEFENSA' order by apellidos desc;
--Ej 5
select * from futbolistas order by posicion asc,  apellidos asc;
/*
select (4+4)*3 || 'a' from dual;
select to_char(sysdate,'dd/mm/yy hh:mi:ss') from dual;
posicion = 'DEFENSA' or posicion = 'PORTERO'
posicion in ('DEFENSA','PORTERO')
posicion = 'DEFENSA' and salario > 100000
*/
select 'antes: ' || salario || ' € - ' "Salario bonito" from futbolistas;
select nombre FROM futbolistas where salario2023 != salario2024;
select nombre from futbolistas;
-- El porcentaje % ignora todo lo que haya detrás o delante y cuantos caracteres haya
-- La barra baja _ solo ignora un caracter 
select nombre from futbolistas where nombre like '%LUIS'; --cuando esta el porcentaje delante 
select nombre from futbolistas where nombre like '_E%'; -- cuando hay una _ delante 
select nombre from futbolistas where LOWER (nombre) like '_e%';-- cuando esta el porcentaje detrás 
select count (nombre) from futbolistas;
--Ej 6
select nombre from futbolistas where salario > 150000;
select id from futbolistas where apellidos = 'GOMEZ';
select apellidos from futbolistas where apellidos like 'G%';
select * from futbolistas where posicion = 'DEFENSA' or posicion = 'DELANTERO';
select nombre from futbolistas where salario between 100000 and 200000; 
--15/01/24--
--Operador entre dos valores
select 4*(4+3)+ null from dual;
--Operador entre campo y un valor
select presupuesto + 50 from equipos;
--Operador entre dos campos
select presupuesto+presupuesto from equipos;
--Ej 7
--Se va a hacer un aumento de sueldo de los PORTEROS. 
--Para ello obtén el nombre, apellido y el nuevo salario de los PORTEROS si se aumenta un 10% el que tienen actualmente. 
--La lista debe estar ordenada alfabéticamente por los apellidos.
--select salario from futbolistas where posicion = 'PORTERO';
select nombre, apellidos,salario *1.10 "nuevo salario" from futbolistas where posicion = 'PORTERO' order by apellidos;
select 'lo que sea' || 'lo que sea' from dual;
select 'lo que sea' || salario from futbolistas;
select apellidos || ', ' || nombre from futbolistas;
select lower (apellidos) || ', ' || lower (nombre) from futbolistas;
select initcap(apellidos || ', ' || nombre) "Futbolista" from futbolistas;
/*Ej 8
Devuelve en una única columna el nombre del futbolista seguido de la
palabra “es” y a continuación la posición que ocupa. 
La columna debe llamarse “Posiciones”. */
select nombre || ' es ' || posicion "Posiciones" from futbolistas;
/* Ej 9 
Queremos saber todos los datos de los futbolistas que ganen más de 150.000 euros y sean defensas.*/
SELECT * FROM FUTBOLISTAS WHERE NOT (salario > 150000 AND POSICION = 'DEFENSA');
/* Ej 10
El 'LIKE' solo se usa con expresiones regulares( _ , % )
En la siguiente consulta:
SELECT APELLIDOS FROM FUTBOLISTAS WHERE APELLIDOS LIKE ‘A%S%’;
¿QUÉ SE ESTARÍA SELECCIONANDO?
a) Aquellos futbolistas cuyos apellidos contienen la letra A y la S.
b) Aquellos futbolistas cuyos apellidos comienzan por la A y contienen la S.
c) Aquellos futbolistas cuyos apellidos no contienen ni la A ni la S.
d) Todos los apellidos de todos los futbolistas menos los que su apellido comienza por S.*/
select apellidos from futbolistas where apellidos like 'G%E%';
select apellidos from futbolistas where apellidos like 'G__E%';
select apellidos from futbolistas where apellidos like 'G__EZ';
select * from futbolistas;
/* Ej 11
Realiza una consulta que te devuelva los campos Nombre, Salario, Salario bruto terminado en la palabra “euros” y llamando a esa columna “Salario bruto”.
Nota: el salario bruto de un futbolista se obtiene añadiéndole el 50% de impuestos, es decir multiplicando por 1,5.*/
select initcap(nombre), salario, salario * 1.5 || 'euros' "Salario Bruto" from futbolistas where posicion = 'MEDIOCENTRO' ORDER BY nombre;
select lower (upper(initcap(nombre))), salario, salario * 1.5 || 'euros' "Salario Bruto" from futbolistas where posicion = 'MEDIOCENTRO' ORDER BY nombre;
-- ¿Y si quiero que se compare la posicion en minisculas?
select initcap(nombre), salario, salario * 1.5 || ' euros' "Salario Bruto" from futbolistas where lower (posicion) = 'mediocentro' order by nombre;
/* Ej 12
Realiza las siguientes operaciones utilizando funciones numéricas:*/
--1. Calcula el valor absoluto de -10.
select  ABS(-10) FROM DUAL;
--2. Obtén el exponente en base e de 4.
SELECT EXP(4) FROM DUAL;
--3. Redondea el número 15,3 a 16.
SELECT CEIL(15.3) FROM DUAL;
--4. Redondea el número anterior (15,3) a 15. 
SELECT FLOOR(15.3) FROM DUAL;
--5. Calcula el resto de 15 entre 3 (15/3).
SELECT MOD(15,3) FROM DUAL;
--6. Eleva 15 al exponente 2 (152).
SELECT POWER(15,2) FROM DUAL;
--Ejercicio 13
--Realiza las siguientes operaciones utilizando funciones numéricas:
--1. Redondea 15,789 con un decimal.
select round (15.789,1) from dual;
--2. Obtén la raíz cuadrada de 128.
SELECT SQRT(128) FROM DUAL;
--3. Trunca 15,789 a 1 decimal.
SELECT TRUNC(15.789, 1) FROM DUAL;
--4. Trunca 15,789 para dejarlo sin decimales (15).
SELECT TRUNC(15.789) FROM DUAL;
--5. Trunca 157,89 para dejarlo en 100.
SELECT TRUNC(157.89, -2) FROM DUAL;
--6. Obtén el signo de -15 (es decir -1) 
SELECT SIGN(-15) FROM DUAL;
--16/01/24
select chr(65) from dual;
select ascii('A') from dual;
select ascii('a') from dual;
select ascii('Ñ') from dual;
CONCAT = ||
SELECT CONCAT(CONCAT(NOMBRE,ESTADIO),PRESUPUESTO) FROM EQUIPOS;
SELECT RPAD('NOMBREAAA',10,'-') FROM DUAL;

select lpad(substr(nombre,1,3),5,'-') from futbolistas 
    where id_equipo = (
        select id 
        from equipos 
        where nombre ='EQUIPO A');
select substr(nombre,1,3) from futbolistas;
select replace(nombre,'QUI','KI') from equipos;
select replace(nombre,'E','-') from futbolistas;
select length(nombre) from futbolistas;
select nombre,length(substr(nombre,7,4)) from futbolistas;
select nombre from futbolistas;
select nombre,instr(nombre,'E') "Primera E" ,
    instr(nombre, 'E',1,2) "Segunda E",
    instr(nombre,'E',5,1) "Trampa"
    from futbolistas;
select instr('la b no la d','a',-2,1) from dual;
--Funciones para fechas

