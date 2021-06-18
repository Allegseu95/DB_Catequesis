--genero
begin;
insert into genero(gen_id, gen_nombre)
values (1,'Masculino');
insert into genero(gen_id, gen_nombre)
values (2,'Femenino');
insert into genero(gen_id, gen_nombre)
values (3,'Transgenero');
insert into genero(gen_id, gen_nombre)
values (4,'Otro');
commit;

--parentesco_representante
begin;
insert into parentesco_representante(parent_id, parent_nombre)
values (1,'Padre/Madre');
insert into parentesco_representante(parent_id, parent_nombre)
values (2,'Tio/a');
insert into parentesco_representante(parent_id, parent_nombre)
values (3,'Primo/a');
insert into parentesco_representante(parent_id, parent_nombre)
values (4,'Abuelo/a');
insert into parentesco_representante(parent_id, parent_nombre)
values (5,'Hermano/a');
commit;

--parametro
begin;
insert into parametro(par_id, par_nombre, par_descripcion)
values (1,'Examen Oral','Leccion oral de 10 minutos');
insert into parametro(par_id, par_nombre, par_descripcion)
values (2,'Examen Escrito','Leccion escrita de 20 preguntas');
insert into parametro(par_id, par_nombre, par_descripcion)
values (3,'Examen Virtual','Leccion de seleccion multiple en linea');
insert into parametro(par_id, par_nombre, par_descripcion)
values (4,'Examen Practico','Leccion practica en la vida real');
insert into parametro(par_id, par_nombre, par_descripcion)
values (5,'Demostracion','Demostracion de conocimientos');
insert into parametro(par_id, par_nombre, par_descripcion)
values (6,'Ensayo Escrito','Ensayo escrito de 200 palabras');
commit;