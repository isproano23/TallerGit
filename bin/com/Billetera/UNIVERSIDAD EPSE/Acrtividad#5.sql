create database Admisiones
use Admisiones

create table universidad(
 codUni int primary key identity,
 nombreUniversidad varchar(200) not null,
 runcUni varchar(13) not null,
 nombreRector varchar(200) not null,
 nombreCordinador varchar(200) not null
);

create table facultad(
 codUni int,
 codFac int identity,
 nombreFacultad varchar(250) not null,
 nombreDecano varchar(250) not null
 constraint claveprimaria primary key (codUni,codFac)
 constraint clavexterna foreign key (codUni) references universidad (codUni)
);

create table carrera(
codUni int not null,
codFac int not null,
codEsc int not null,
nombrecarrera varchar(100) not null,
constraint claveprimarias primary key (codUni,codFac,codEsc),
constraint claveexternas foreign key (codUni, codFac) references facultad(codUni,codFac)
);

create table semestre(
codper int not null,
codUni int not null,
codFac int not null,
codEsc int not null,
desPeriodo varchar (50) not null,
fechaInicio  date,
fechaFin date, 
constraint clavep primary key (codPer),
constraint claveE foreign key (codUni,codFac,codEsc) references carrera (codUni,codFac,codEsc)

);

create table Alumno(
aluCedula varchar(10) primary key not null,
aluNombre varchar(205) not null,
alugenero char(1) not null,
aluFechaNac date not null
);

create table Matricula(
 Matriculanum  int  not null,
 AluCedula varchar(10) not null,
 codPer int not null,
 FechaMatricula date not null,
 NroCreditos int not null
 constraint cprimaria primary key (Matriculanum),
 constraint cexterna  foreign key (AluCedula) references alumno (Alucedula),
 constraint externa foreign key  (codPer) references semestre (codPer)

);

 select *from universidad

 insert into universidad(nombreUniversidad,runcUni,nombreRector,nombreCordinador)values
 ('Universidad Central','4526311489','Cesar Hidalgo','Sebastian Perez')
 
 insert into universidad(nombreUniversidad,runcUni,nombreRector,nombreCordinador)values
 ('Universidad Udla','1756398654','Santiago Molina ','Ariel Fialllos')

 select*from facultad

 insert into facultad(codUni,nombreFacultad,nombreDecano)values
 ('1','Fac Arquitectura','	Isaac Proaño');
 insert into facultad(codUni,nombreFacultad,nombreDecano)values
 ('2','Fac IngQuimica','Diego Mosquera');
 insert into facultad(codUni,nombreFacultad,nombreDecano)values
 ('1','Fac Artes','Janeth Espin');
 insert into facultad(codUni,nombreFacultad,nombreDecano)values
 ('2','Fac IngSistemas','Marcelo Paladines');
  insert into facultad(codUni,nombreFacultad,nombreDecano)values
 ('2','Fac IngFilosofia','Antonio Navarrete');

 select*from alumno
 insert into Alumno(aluCedula,aluNombre,alugenero,aluFechaNac)values
 ('172477986','Viviana Samaniego','F','1998-02-08')
  insert into Alumno(aluCedula,aluNombre,alugenero,aluFechaNac)values
 ('1796336741','Sebastian Padilla','M','2001-04-11')
 insert into Alumno(aluCedula,aluNombre,alugenero,aluFechaNac)values
 ('1763699952','Helen Bolaños','F','1984-01-20')
 insert into Alumno(aluCedula,aluNombre,alugenero,aluFechaNac)values
 ('1763336957','Carlos Garcia','M','1999-10-05')
 insert into Alumno(aluCedula,aluNombre,alugenero,aluFechaNac)values
 ('1751856332','Jacob Arias','M','2002-02-13')

 select*from carrera
 insert into carrera(codUni,codFac,codEsc,nombrecarrera)values
 ('1','1','1','Odontologia');
  insert into carrera(codUni,codFac,codEsc,nombrecarrera)values
 ('2','2','2','Medicina');

 select*from semestre
 insert into semestre(codper,codUni,codFac,codEsc,desPeriodo,fechaInicio,fechaFin)values
 ('1','1','1','1','25% descuento','2022-08-13','2025-05-13');
  insert into semestre(codper,codUni,codFac,codEsc,desPeriodo,fechaInicio,fechaFin)values
 ('2','2','2','2','15% descuento','2021-08-13','2024-04-20');
 select*from matricula

 insert into Matricula(Matriculanum,AluCedula,codPer,FechaMatricula,NroCreditos)values
 ('11','172477986','1','2025-04-15','8');
  insert into Matricula(Matriculanum,AluCedula,codPer,FechaMatricula,NroCreditos)values
 ('28','1796336741','2','2022-01-25','12');

 --Realice dos updates, por cada update o Indique que desea obtener 
 --o Aplique condicionales (mínimo 3) o Código (consulta) o Resultado obtenido

 --1.Actualizar el nombre del rector y del 
 --coordinador de la universidad , solo si cumple varias condiciones relacionadas con su nombre y RUC.
 update universidad
 set nombreRector='Carlos Andrade',
 nombreCordinador='Luis Herrera'
 where nombreUniversidad='Universoidad Central' and runcUni='4526311489' and codUni='1'

 --2.Actualizar  el número de créditos de la matricula que sea = 12
  update Matricula
  set NroCreditos='15'
  where  Matriculanum='28'

 --Realice dos eliminaciones, por cada eliminación
--o Indique que desea obtener
--o Aplique condicionales (mínimo 3)
  
---1. Eliminar un registro de la tabla Matricula 
---correspondiente a un alumno en un período específico y con un número de créditos determinado.
 delete from Matricula
where Matriculanum = 11
  and AluCedula = '172477986'
  and codPer = 1
  and NroCreditos = 8;

  --2. Eliminar un alumno del sistema que no tenga matrícula activa 
  delete from Alumno
where aluCedula = '1751856332'
  and aluNombre = 'Jacob Arias'
  and alugenero = 'M'
  and aluFechaNac = '2002-02-13';

  --Realice una consulta que use: distinct, like, group by
--o Indique lo que se desea obtener
--o Código (consulta)
---o Resultado obtenido

--Obtener la cantidad de alumnos matriculados por período, considerando solo los alumnos cuyo nombre empieza con la letra “S”
  select distinct
       s.codPer,
       s.desPeriodo,
       COUNT(m.AluCedula) AS TotalAlumnos
from Matricula m
INNER JOIN Alumno a ON m.AluCedula = a.aluCedula
INNER JOIN semestre s ON m.codPer = s.codPer
where a.aluNombre LIKE 'S%'
group by s.codPer, s.desPeriodo;

--Realice una consulta que use: count, between, group by
--o Indique lo que se desea obtener
--o Código (consulta)
--o Resultado obtenido

--Obtener la cantidad de matrículas realizadas por año
select 
       year(fechamatricula) as aniomatricula,
       count(matriculanum) as totalmatriculas
from matricula
where fechamatricula between '2022-01-01' and '2025-12-31'
group by year(fechamatricula);

---Realice una consulta que use: sum, in, group by
--o Indique lo que se desea obtener
--o Código (consulta)
--o Resultado obtenido

--obtener el total de créditos matriculados por período académico
select 
       codper,
       sum(nrocreditos) as totalcreditos
from matricula
where codper in (1, 2)
group by codper;

--Realice una consulta que use: is null, sum, or, group by, order by,
--UPPER o Indique lo que se desea obtener
--o Código (consulta)
--o Resultado obtenido
--obtener el total de créditos matriculados por alumno, considerando alumnos cuya matrícula no tenga fecha registrad
select 
       upper(a.alunombre) as alumno,
       sum(m.nrocreditos) as totalcreditos
from alumno a
left join matricula m on a.alucedula = m.alucedula
where m.fechamatricula is null
   or a.alucedula = '1796336741'
group by a.alunombre
order by totalcreditos desc;

--Realice una consulta entre dos tablas relacionadas, use los
--comandos: avg, between, group by, LOWER, DATEPART
--o Indique lo que se desea obtener
--o Código (consulta)
--o Resultado obtenido
--obtener el promedio de créditos matriculados por género del alumno,
select 
       lower(a.alugenero) as genero,
       avg(m.nrocreditos) as promedio_creditos
from alumno a
inner join matricula m on a.alucedula = m.alucedula
where datepart(year, m.fechamatricula) between 2022 and 2025
group by a.alugenero;

--Realice una consulta entre tres tablas relacionadas, use los
--comandos: sum, in, group by, order by, UPPER
--o Indique lo que se desea obtener
--o Código (consulta)
--o Resultado obtenido
--obtener el total de carreras registradas por universidad,
select 
       upper(u.nombreuniversidad) as universidad,
       sum(1) as totalcarreras
from universidad u
inner join facultad f on u.coduni = f.coduni
inner join carrera c on f.coduni = c.coduni 
                     and f.codfac = c.codfac
where u.coduni in (1, 2)
group by u.nombreuniversidad
order by totalcarreras desc;
