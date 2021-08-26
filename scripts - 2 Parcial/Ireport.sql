--Reporte en Ireport que muestre un diagrama de barras de los 4 niveles de la catequesis y 
--los estudiantes inscritos en esos años.
--Ejemplo:
--Primera comunión, 500 estudiantes
--Segunda comunión , 600 estudiantes
--Primera confirmación, 100 estudiantes
--Segunda confirmación , 300 estudiante

select c1.cur_nivel as nivel, sum( c1.cur_cant_alumno) 
as cantidad from curso as c1 group by nivel;
