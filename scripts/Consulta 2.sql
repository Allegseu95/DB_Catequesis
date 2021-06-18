select c2.cat_nombre||' '||c2.cat_apellido as catequista, 
lpad(c1.cur_periodo, 12,'Periodo ') as periodo, c1.cur_nivel as nivel,
c1.cur_cant_al_aprobado ||'  '|| trim('Aprobados')as aprobados, 
c1.cur_cant_al_reprobado ||'  '||trim('Reprobados')as reprobados,
CASE    WHEN r1.reg_cargo = true 
		THEN 'Catequista a cargo' 
    	ELSE 'Catequista ayudante' 
END 	AS  tipo_de_catequista
from  curso as c1 inner join registro_curso as r1 on c1.cur_id = r1.cur_id
inner join catequista as c2 on r1.cat_id = c2.cat_id
order by catequista, periodo asc