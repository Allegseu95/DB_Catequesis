select  lpad(c1.cur_periodo, 12,'Periodo ') as periodo, c1.cur_nivel as nivel,
count( p1.parent_nombre)||' '||p1.parent_nombre as representantes,
(c1.cur_cant_alumno - count( p1.parent_nombre))||' '||trim('No son Padre/Madre')as reprentantes2
from curso as c1 inner join matricula on c1.cur_id = matricula.cur_id
inner join alumno on matricula.al_id = alumno.al_id 
inner join parentesco_representante as p1 on alumno.parent_id = p1.parent_id
where p1.parent_nombre = 'Padre/Madre'
group by periodo, nivel , c1.cur_cant_alumno,p1.parent_nombre
order by periodo,nivel asc


