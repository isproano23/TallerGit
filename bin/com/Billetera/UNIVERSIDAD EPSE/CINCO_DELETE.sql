
---1.Eliminar servicios cuyo costo sea menor o igual a $10
DELETE FROM SERVICIO
WHERE COSTO <=10;
use Clinica_BD
select*from servicio

--2.Eliminar las recetas médicas generadas para citas que fueron canceladas
DELETE FROM RECETA
WHERE ID_CITAS IN (
    SELECT ID_CITAS
    FROM CITAS
    WHERE ESTADO = 'Cancelada'
);



--3. Eliminar recetas médicas que contienen Vitamina
   DELETE FROM RECETA
WHERE MEDICAMENTO LIKE '%Vitamina%';

--4.Eliminar historias clínicas que corresponden únicamente a controles sin enfermedad.

DELETE FROM HISTORIA
WHERE DIAGNOSTICO LIKE '%Control%';


--5. Eliminar la especialidad Psicologí

DELETE FROM ESPECIALIDAD
WHERE NOMBRE = 'Psicología';
select*from ESPECIALIDAD




