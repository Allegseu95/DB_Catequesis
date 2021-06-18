/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     15/6/2021 23:05:26                           */
/*==============================================================*/


drop index RELATIONSHIP_21_FK;

drop index RELATIONSHIP_20_FK;

drop index RELATIONSHIP_1_FK;

drop index ALUMNO_PK;

drop table ALUMNO;

drop index BITACORA_CLASE_FK;

drop index BITACORA_CLASE2_FK;

drop index BITACORA_CLASE_PK;

drop table BITACORA_CLASE;

drop index RELATIONSHIP_15_FK;

drop index CALIFICACION_PK;

drop table CALIFICACION;

drop index RELATIONSHIP_3_FK;

drop index CATEQUISTA_PK;

drop table CATEQUISTA;

drop index RELATIONSHIP_24_FK;

drop index CLASE_PK;

drop table CLASE;

drop index CURSO_PK;

drop table CURSO;

drop index RELATIONSHIP_13_FK;

drop index RELATIONSHIP_23_FK;

drop index RELATIONSHIP_14_FK;

drop index DETALLE_CALIFICACION_PK;

drop table DETALLE_CALIFICACION;

drop index GENERO_PK;

drop table GENERO;

drop index MATRICULA_FK;

drop index MATRICULA2_FK;

drop index MATRICULA_PK;

drop table MATRICULA;

drop index PARAMETRO_PK;

drop table PARAMETRO;

drop index PARENTESCO_REPRESENTANTE_PK;

drop table PARENTESCO_REPRESENTANTE;

drop index REGISTRO_CURSO_FK;

drop index REGISTRO_CURSO2_FK;

drop index REGISTRO_CURSO_PK;

drop table REGISTRO_CURSO;

drop index RELATIONSHIP_2_FK;

drop index REPRESENTANTE_PK;

drop table REPRESENTANTE;

/*==============================================================*/
/* Table: ALUMNO                                                */
/*==============================================================*/
create table ALUMNO (
   AL_ID                INT4                 not null,
   GEN_ID               INT4                 not null,
   REP_ID               INT4                 not null,
   PARENT_ID            INT4                 not null,
   AL_CEDULA            CHAR(30)             not null,
   AL_NOMBRE            CHAR(50)             not null,
   AL_APELLIDO          CHAR(50)             not null,
   AL_FECHA_NACIMIENTO  DATE                 not null,
   AL_TELEFONO          CHAR(10)             null,
   AL_BARRIO            CHAR(50)             not null,
   AL_CALLES            CHAR(100)            not null,
   AL_OBSERVACION       CHAR(50)             null,
   constraint PK_ALUMNO primary key (AL_ID)
);

/*==============================================================*/
/* Index: ALUMNO_PK                                             */
/*==============================================================*/
create unique index ALUMNO_PK on ALUMNO (
AL_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on ALUMNO (
GEN_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on ALUMNO (
REP_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_21_FK on ALUMNO (
PARENT_ID
);

/*==============================================================*/
/* Table: BITACORA_CLASE                                        */
/*==============================================================*/
create table BITACORA_CLASE (
   CAT_ID               INT4                 not null,
   CLA_ID               INT4                 not null,
   constraint PK_BITACORA_CLASE primary key (CAT_ID, CLA_ID)
);

/*==============================================================*/
/* Index: BITACORA_CLASE_PK                                     */
/*==============================================================*/
create unique index BITACORA_CLASE_PK on BITACORA_CLASE (
CAT_ID,
CLA_ID
);

/*==============================================================*/
/* Index: BITACORA_CLASE2_FK                                    */
/*==============================================================*/
create  index BITACORA_CLASE2_FK on BITACORA_CLASE (
CLA_ID
);

/*==============================================================*/
/* Index: BITACORA_CLASE_FK                                     */
/*==============================================================*/
create  index BITACORA_CLASE_FK on BITACORA_CLASE (
CAT_ID
);

/*==============================================================*/
/* Table: CALIFICACION                                          */
/*==============================================================*/
create table CALIFICACION (
   CAL_ID               INT4                 not null,
   AL_ID                INT4                 not null,
   CAL_CODIGO           CHAR(50)             not null,
   CAL_NOTA_FINAL       DECIMAL(4,2)         not null,
   CAL_OBSERVACION      CHAR(100)            null,
   constraint PK_CALIFICACION primary key (CAL_ID)
);

/*==============================================================*/
/* Index: CALIFICACION_PK                                       */
/*==============================================================*/
create unique index CALIFICACION_PK on CALIFICACION (
CAL_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on CALIFICACION (
AL_ID
);

/*==============================================================*/
/* Table: CATEQUISTA                                            */
/*==============================================================*/
create table CATEQUISTA (
   CAT_ID               INT4                 not null,
   GEN_ID               INT4                 not null,
   CAT_CEDULA           CHAR(30)             not null,
   CAT_NOMBRE           CHAR(50)             not null,
   CAT_APELLIDO         CHAR(50)             not null,
   CAT_FECHA_NACIMIENTO DATE                 not null,
   CAT_TELEFONO         CHAR(10)             not null,
   CAT_BARRIO           CHAR(50)             not null,
   CAT_CALLES           CHAR(100)            not null,
   CAT_FECHA_ULTIMA_SALIDA DATE                 null,
   CAT_FECHA_ULTIMO_INGRESO DATE                 null,
   CAT_NUMERO_CICLOS    INT4                 null,
   CAT_OBSERVACION      CHAR(100)            null,
   constraint PK_CATEQUISTA primary key (CAT_ID)
);

/*==============================================================*/
/* Index: CATEQUISTA_PK                                         */
/*==============================================================*/
create unique index CATEQUISTA_PK on CATEQUISTA (
CAT_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on CATEQUISTA (
GEN_ID
);

/*==============================================================*/
/* Table: CLASE                                                 */
/*==============================================================*/
create table CLASE (
   CLA_ID               INT4                 not null,
   CUR_ID               INT4                 not null,
   CLA_TEMA             CHAR(50)             not null,
   CLA_FECHA            DATE                 not null,
   CLA_DESCRIPCION      CHAR(100)            not null,
   CLA_OBSERVACION      CHAR(100)            null,
   constraint PK_CLASE primary key (CLA_ID)
);

/*==============================================================*/
/* Index: CLASE_PK                                              */
/*==============================================================*/
create unique index CLASE_PK on CLASE (
CLA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_24_FK on CLASE (
CUR_ID
);

/*==============================================================*/
/* Table: CURSO                                                 */
/*==============================================================*/
create table CURSO (
   CUR_ID               INT4                 not null,
   CUR_NIVEL            CHAR(50)             not null,
   CUR_PERIODO          CHAR(50)             not null,
   CUR_UBICACION        CHAR(50)             null,
   CUR_PARALELO         CHAR(1)              null,
   CUR_FECHA_INICIO     DATE                 not null,
   CUR_FECHA_FIN        DATE                 not null,
   CUR_CANT_CATEQUISTA  INT4                 null,
   CUR_CANT_ALUMNO      INT4                 null,
   CUR_CANT_AL_APROBADO INT4                 null,
   CUR_CANT_AL_REPROBADO INT4                 null,
   CUR_ESTADO           BOOL                 not null,
   constraint PK_CURSO primary key (CUR_ID)
);

/*==============================================================*/
/* Index: CURSO_PK                                              */
/*==============================================================*/
create unique index CURSO_PK on CURSO (
CUR_ID
);

/*==============================================================*/
/* Table: DETALLE_CALIFICACION                                  */
/*==============================================================*/
create table DETALLE_CALIFICACION (
   DET_ID               INT4                 not null,
   CAL_ID               INT4                 not null,
   CUR_ID               INT4                 not null,
   PAR_ID               INT4                 not null,
   DET_NOTA             DECIMAL(4,2)         not null,
   DET_FECHA            DATE                 not null,
   constraint PK_DETALLE_CALIFICACION primary key (DET_ID)
);

/*==============================================================*/
/* Index: DETALLE_CALIFICACION_PK                               */
/*==============================================================*/
create unique index DETALLE_CALIFICACION_PK on DETALLE_CALIFICACION (
DET_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_14_FK on DETALLE_CALIFICACION (
CAL_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on DETALLE_CALIFICACION (
CUR_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on DETALLE_CALIFICACION (
PAR_ID
);

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO (
   GEN_ID               INT4                 not null,
   GEN_NOMBRE           CHAR(50)             not null,
   constraint PK_GENERO primary key (GEN_ID)
);

/*==============================================================*/
/* Index: GENERO_PK                                             */
/*==============================================================*/
create unique index GENERO_PK on GENERO (
GEN_ID
);

/*==============================================================*/
/* Table: MATRICULA                                             */
/*==============================================================*/
create table MATRICULA (
   CUR_ID               INT4                 not null,
   AL_ID                INT4                 not null,
   MAT_FECHA            DATE                 not null,
   constraint PK_MATRICULA primary key (CUR_ID, AL_ID)
);

/*==============================================================*/
/* Index: MATRICULA_PK                                          */
/*==============================================================*/
create unique index MATRICULA_PK on MATRICULA (
CUR_ID,
AL_ID
);

/*==============================================================*/
/* Index: MATRICULA2_FK                                         */
/*==============================================================*/
create  index MATRICULA2_FK on MATRICULA (
AL_ID
);

/*==============================================================*/
/* Index: MATRICULA_FK                                          */
/*==============================================================*/
create  index MATRICULA_FK on MATRICULA (
CUR_ID
);

/*==============================================================*/
/* Table: PARAMETRO                                             */
/*==============================================================*/
create table PARAMETRO (
   PAR_ID               INT4                 not null,
   PAR_NOMBRE           CHAR(50)             not null,
   PAR_DESCRIPCION      CHAR(100)            null,
   constraint PK_PARAMETRO primary key (PAR_ID)
);

/*==============================================================*/
/* Index: PARAMETRO_PK                                          */
/*==============================================================*/
create unique index PARAMETRO_PK on PARAMETRO (
PAR_ID
);

/*==============================================================*/
/* Table: PARENTESCO_REPRESENTANTE                              */
/*==============================================================*/
create table PARENTESCO_REPRESENTANTE (
   PARENT_ID            INT4                 not null,
   PARENT_NOMBRE        CHAR(40)             not null,
   constraint PK_PARENTESCO_REPRESENTANTE primary key (PARENT_ID)
);

/*==============================================================*/
/* Index: PARENTESCO_REPRESENTANTE_PK                           */
/*==============================================================*/
create unique index PARENTESCO_REPRESENTANTE_PK on PARENTESCO_REPRESENTANTE (
PARENT_ID
);

/*==============================================================*/
/* Table: REGISTRO_CURSO                                        */
/*==============================================================*/
create table REGISTRO_CURSO (
   CAT_ID               INT4                 not null,
   CUR_ID               INT4                 not null,
   REG_FECHA            DATE                 not null,
   REG_CARGO            BOOL                 not null,
   constraint PK_REGISTRO_CURSO primary key (CAT_ID, CUR_ID)
);

/*==============================================================*/
/* Index: REGISTRO_CURSO_PK                                     */
/*==============================================================*/
create unique index REGISTRO_CURSO_PK on REGISTRO_CURSO (
CAT_ID,
CUR_ID
);

/*==============================================================*/
/* Index: REGISTRO_CURSO2_FK                                    */
/*==============================================================*/
create  index REGISTRO_CURSO2_FK on REGISTRO_CURSO (
CUR_ID
);

/*==============================================================*/
/* Index: REGISTRO_CURSO_FK                                     */
/*==============================================================*/
create  index REGISTRO_CURSO_FK on REGISTRO_CURSO (
CAT_ID
);

/*==============================================================*/
/* Table: REPRESENTANTE                                         */
/*==============================================================*/
create table REPRESENTANTE (
   REP_ID               INT4                 not null,
   GEN_ID               INT4                 not null,
   REP_CEDULA           CHAR(30)             not null,
   REP_NOMBRE           CHAR(50)             not null,
   REP_APELLIDO         CHAR(50)             not null,
   REP_FECHA_NACIMIENTO DATE                 not null,
   REP_TELEFONO_DOM     CHAR(10)             not null,
   REP_TELEFONO_TRA     CHAR(15)             null,
   REP_DIRECCION_DOM    CHAR(50)             not null,
   REP_DIRECCION_TRA    CHAR(50)             null,
   REP_HORAS_DISPONIBLES CHAR(50)             not null,
   constraint PK_REPRESENTANTE primary key (REP_ID)
);

/*==============================================================*/
/* Index: REPRESENTANTE_PK                                      */
/*==============================================================*/
create unique index REPRESENTANTE_PK on REPRESENTANTE (
REP_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on REPRESENTANTE (
GEN_ID
);

alter table ALUMNO
   add constraint FK_ALUMNO_RELATIONS_GENERO foreign key (GEN_ID)
      references GENERO (GEN_ID)
      on delete restrict on update restrict;

alter table ALUMNO
   add constraint FK_ALUMNO_RELATIONS_REPRESEN foreign key (REP_ID)
      references REPRESENTANTE (REP_ID)
      on delete restrict on update restrict;

alter table ALUMNO
   add constraint FK_ALUMNO_RELATIONS_PARENTES foreign key (PARENT_ID)
      references PARENTESCO_REPRESENTANTE (PARENT_ID)
      on delete restrict on update restrict;

alter table BITACORA_CLASE
   add constraint FK_BITACORA_BITACORA__CATEQUIS foreign key (CAT_ID)
      references CATEQUISTA (CAT_ID)
      on delete restrict on update restrict;

alter table BITACORA_CLASE
   add constraint FK_BITACORA_BITACORA__CLASE foreign key (CLA_ID)
      references CLASE (CLA_ID)
      on delete restrict on update restrict;

alter table CALIFICACION
   add constraint FK_CALIFICA_RELATIONS_ALUMNO foreign key (AL_ID)
      references ALUMNO (AL_ID)
      on delete restrict on update restrict;

alter table CATEQUISTA
   add constraint FK_CATEQUIS_RELATIONS_GENERO foreign key (GEN_ID)
      references GENERO (GEN_ID)
      on delete restrict on update restrict;

alter table CLASE
   add constraint FK_CLASE_RELATIONS_CURSO foreign key (CUR_ID)
      references CURSO (CUR_ID)
      on delete restrict on update restrict;

alter table DETALLE_CALIFICACION
   add constraint FK_DETALLE__RELATIONS_PARAMETR foreign key (PAR_ID)
      references PARAMETRO (PAR_ID)
      on delete restrict on update restrict;

alter table DETALLE_CALIFICACION
   add constraint FK_DETALLE__RELATIONS_CALIFICA foreign key (CAL_ID)
      references CALIFICACION (CAL_ID)
      on delete restrict on update restrict;

alter table DETALLE_CALIFICACION
   add constraint FK_DETALLE__RELATIONS_CURSO foreign key (CUR_ID)
      references CURSO (CUR_ID)
      on delete restrict on update restrict;

alter table MATRICULA
   add constraint FK_MATRICUL_MATRICULA_CURSO foreign key (CUR_ID)
      references CURSO (CUR_ID)
      on delete restrict on update restrict;

alter table MATRICULA
   add constraint FK_MATRICUL_MATRICULA_ALUMNO foreign key (AL_ID)
      references ALUMNO (AL_ID)
      on delete restrict on update restrict;

alter table REGISTRO_CURSO
   add constraint FK_REGISTRO_REGISTRO__CATEQUIS foreign key (CAT_ID)
      references CATEQUISTA (CAT_ID)
      on delete restrict on update restrict;

alter table REGISTRO_CURSO
   add constraint FK_REGISTRO_REGISTRO__CURSO foreign key (CUR_ID)
      references CURSO (CUR_ID)
      on delete restrict on update restrict;

alter table REPRESENTANTE
   add constraint FK_REPRESEN_RELATIONS_GENERO foreign key (GEN_ID)
      references GENERO (GEN_ID)
      on delete restrict on update restrict;

