--Cursor que enliste todos los catequistas de confirmación por cada año cuantos estudiantes tuvieron en confirmación.
do $$
declare
        tabla record;
        listado cursor for select * from catequista as c1 
							inner join registro_curso as r1 on c1.cat_id = r1.cat_id
							inner join curso as c2 on r1.cur_id = c2.cur_id 
							WHERE c2.cur_nivel like '%Confirmacion%'
							order by  c2.cur_periodo,c2.cur_nivel  asc;
begin
for tabla in listado loop
Raise notice 'Nombre del catequista: %,Año:  %, Nivel: %, Cantidad alumnos: %', tabla.cat_nombre, 
tabla.cur_periodo, tabla.cur_nivel, tabla.cur_cant_alumno;
end loop;
end $$
language 'plpgsql';