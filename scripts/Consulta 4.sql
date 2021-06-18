select  alumno.al_nombre ||' '|| alumno.al_apellido as alumno, 
count(matricula.cur_id) as matriculas
from alumno inner join matricula on alumno.al_id = matricula.al_id
group by alumno having count(matricula.cur_id) > 4 

