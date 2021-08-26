--Trigger que impida asignar un catequista a un curso de confirmación de cualquier nivel, si el catequista ya se ha retirado 3 
--veces o más. (debe lanzar una advertencia y no permitir el ingreso el registro del catequista para ese curso de confirmación)
create or replace function catequistaPermitido() returns trigger
as $catequistaPermitido$
    declare
		cantidadCiclo int;
		nivel varchar(50);
begin
		select cat_numero_ciclos into cantidadCiclo from catequista where cat_id = new.cat_id;
		select cur_nivel into nivel from curso WHERE cur_nivel like '%Confirmacion%' and cur_id = new.cur_id;
        if(cantidadCiclo > 2 and nivel <> '') then
            raise exception 'Este catequista se ha retirado 3 veces y no puede volver a dar clases a un nivel de confirmacion, 
			pruebe asignarlo a un nivel de comunion';
        end if;
        return new;
end;
$catequistaPermitido$
language plpgsql;

create trigger catequistaPermitidoTrigger before insert
on registro_curso for each row
execute procedure catequistaPermitido();