--Procedimiento almacenado que introduzca el apellido del catequista y que muestre todos los cursos 
--en los que ha dado clases y la cantidad de alumnos inscritos.
CREATE or replace  FUNCTION obtenerCursoCatequista(varchar)	RETURNS varchar
AS $BODY$
DECLARE
	apellido alias for $1;
	datos RECORD;
	cur_datos cursor FOR select c2.cur_nivel as nivel, sum( c2.cur_cant_alumno) as cantidad
								from catequista as c1 
								inner join registro_curso as r1 on c1.cat_id = r1.cat_id
								inner join curso as c2 on r1.cur_id = c2.cur_id 
								where c1.cat_apellido = $1
								group by nivel	order by nivel , cantidad asc;		
begin
	for datos in cur_datos loop
	Raise notice 'Nivel: %, Cantidad alumnos: %', datos.nivel, datos.cantidad;
	end loop;
end; $BODY$
language 'plpgsql';


--selects de comprobacion del prodecimiento almacenado

select obtenerCursoCatequista('Roughey')

select obtenerCursoCatequista('Absolon')

select obtenerCursoCatequista('Dregan')

select cat_apellido from catequista;
