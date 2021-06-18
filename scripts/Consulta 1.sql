select r1.rep_apellido as apellido, count(a1.al_id) as hermanos
from alumno as a1 inner join representante as r1 on a1.rep_id = r1.rep_id 
inner join parentesco_representante as p1 on a1.parent_id = p1.parent_id
where p1.parent_nombre ='Padre/Madre' 
group by apellido having count(a1.al_id) > 1 order by hermanos desc
