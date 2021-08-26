/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     30/6/2021 10:48:41                           */
/*==============================================================*/


if exists (select 1
            from  sysindexes
           where  id    = object_id('ALUMNO')
            and   name  = 'RELATIONSHIP_21_FK'
            and   indid > 0
            and   indid < 255)
   drop index ALUMNO.RELATIONSHIP_21_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ALUMNO')
            and   name  = 'RELATIONSHIP_20_FK'
            and   indid > 0
            and   indid < 255)
   drop index ALUMNO.RELATIONSHIP_20_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ALUMNO')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index ALUMNO.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ALUMNO')
            and   type = 'U')
   drop table ALUMNO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BITACORA_CLASE')
            and   name  = 'BITACORA_CLASE_FK'
            and   indid > 0
            and   indid < 255)
   drop index BITACORA_CLASE.BITACORA_CLASE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BITACORA_CLASE')
            and   name  = 'BITACORA_CLASE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index BITACORA_CLASE.BITACORA_CLASE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BITACORA_CLASE')
            and   type = 'U')
   drop table BITACORA_CLASE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CALIFICACION')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index CALIFICACION.RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CALIFICACION')
            and   type = 'U')
   drop table CALIFICACION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CATEQUISTA')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index CATEQUISTA.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATEQUISTA')
            and   type = 'U')
   drop table CATEQUISTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLASE')
            and   name  = 'RELATIONSHIP_24_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLASE.RELATIONSHIP_24_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLASE')
            and   type = 'U')
   drop table CLASE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CURSO')
            and   type = 'U')
   drop table CURSO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALLE_CALIFICACION')
            and   name  = 'RELATIONSHIP_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index DETALLE_CALIFICACION.RELATIONSHIP_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALLE_CALIFICACION')
            and   name  = 'RELATIONSHIP_23_FK'
            and   indid > 0
            and   indid < 255)
   drop index DETALLE_CALIFICACION.RELATIONSHIP_23_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALLE_CALIFICACION')
            and   name  = 'RELATIONSHIP_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index DETALLE_CALIFICACION.RELATIONSHIP_14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DETALLE_CALIFICACION')
            and   type = 'U')
   drop table DETALLE_CALIFICACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GENERO')
            and   type = 'U')
   drop table GENERO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATRICULA')
            and   name  = 'MATRICULA_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATRICULA.MATRICULA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATRICULA')
            and   name  = 'MATRICULA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATRICULA.MATRICULA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MATRICULA')
            and   type = 'U')
   drop table MATRICULA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARAMETRO')
            and   type = 'U')
   drop table PARAMETRO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARENTESCO_REPRESENTANTE')
            and   type = 'U')
   drop table PARENTESCO_REPRESENTANTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REGISTRO_CURSO')
            and   name  = 'REGISTRO_CURSO_FK'
            and   indid > 0
            and   indid < 255)
   drop index REGISTRO_CURSO.REGISTRO_CURSO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REGISTRO_CURSO')
            and   name  = 'REGISTRO_CURSO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index REGISTRO_CURSO.REGISTRO_CURSO2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REGISTRO_CURSO')
            and   type = 'U')
   drop table REGISTRO_CURSO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REPRESENTANTE')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index REPRESENTANTE.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REPRESENTANTE')
            and   type = 'U')
   drop table REPRESENTANTE
go

/*==============================================================*/
/* Table: ALUMNO                                                */
/*==============================================================*/
create table ALUMNO (
   AL_ID                int                  not null,
   GEN_ID               int                  not null,
   REP_ID               int                  not null,
   PARENT_ID            int                  not null,
   AL_CEDULA            char(30)             not null,
   AL_NOMBRE            char(50)             not null,
   AL_APELLIDO          char(50)             not null,
   AL_FECHA_NACIMIENTO  datetime             not null,
   AL_TELEFONO          char(10)             null,
   AL_BARRIO            char(50)             not null,
   AL_CALLES            char(100)            not null,
   AL_OBSERVACION       char(50)             null,
   constraint PK_ALUMNO primary key nonclustered (AL_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on ALUMNO (
GEN_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_20_FK on ALUMNO (
REP_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_21_FK on ALUMNO (
PARENT_ID ASC
)
go

/*==============================================================*/
/* Table: BITACORA_CLASE                                        */
/*==============================================================*/
create table BITACORA_CLASE (
   CAT_ID               int                  not null,
   CLA_ID               int                  not null,
   constraint PK_BITACORA_CLASE primary key nonclustered (CAT_ID, CLA_ID)
)
go

/*==============================================================*/
/* Index: BITACORA_CLASE2_FK                                    */
/*==============================================================*/
create index BITACORA_CLASE2_FK on BITACORA_CLASE (
CLA_ID ASC
)
go

/*==============================================================*/
/* Index: BITACORA_CLASE_FK                                     */
/*==============================================================*/
create index BITACORA_CLASE_FK on BITACORA_CLASE (
CAT_ID ASC
)
go

/*==============================================================*/
/* Table: CALIFICACION                                          */
/*==============================================================*/
create table CALIFICACION (
   CAL_ID               int                  not null,
   AL_ID                int                  not null,
   CAL_CODIGO           char(50)             not null,
   CAL_NOTA_FINAL       decimal(4,2)         not null,
   CAL_OBSERVACION      char(100)            null,
   constraint PK_CALIFICACION primary key nonclustered (CAL_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on CALIFICACION (
AL_ID ASC
)
go

/*==============================================================*/
/* Table: CATEQUISTA                                            */
/*==============================================================*/
create table CATEQUISTA (
   CAT_ID               int                  not null,
   GEN_ID               int                  not null,
   CAT_CEDULA           char(30)             not null,
   CAT_NOMBRE           char(50)             not null,
   CAT_APELLIDO         char(50)             not null,
   CAT_FECHA_NACIMIENTO datetime             not null,
   CAT_TELEFONO         char(10)             not null,
   CAT_BARRIO           char(50)             not null,
   CAT_CALLES           char(100)            not null,
   CAT_FECHA_ULTIMA_SALIDA datetime             null,
   CAT_FECHA_ULTIMO_INGRESO datetime             null,
   CAT_NUMERO_CICLOS    int                  null,
   CAT_OBSERVACION      char(100)            null,
   constraint PK_CATEQUISTA primary key nonclustered (CAT_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on CATEQUISTA (
GEN_ID ASC
)
go

/*==============================================================*/
/* Table: CLASE                                                 */
/*==============================================================*/
create table CLASE (
   CLA_ID               int                  not null,
   CUR_ID               int                  not null,
   CLA_TEMA             char(50)             not null,
   CLA_FECHA            datetime             not null,
   CLA_DESCRIPCION      char(100)            not null,
   CLA_OBSERVACION      char(100)            null,
   constraint PK_CLASE primary key nonclustered (CLA_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on CLASE (
CUR_ID ASC
)
go

/*==============================================================*/
/* Table: CURSO                                                 */
/*==============================================================*/
create table CURSO (
   CUR_ID               int                  not null,
   CUR_NIVEL            char(50)             not null,
   CUR_PERIODO          char(50)             not null,
   CUR_UBICACION        char(50)             null,
   CUR_PARALELO         char(1)              null,
   CUR_FECHA_INICIO     datetime             not null,
   CUR_FECHA_FIN        datetime             not null,
   CUR_CANT_CATEQUISTA  int                  null,
   CUR_CANT_ALUMNO      int                  null,
   CUR_CANT_AL_APROBADO int                  null,
   CUR_CANT_AL_REPROBADO int                  null,
   CUR_ESTADO           bit                  not null,
   constraint PK_CURSO primary key nonclustered (CUR_ID)
)
go

/*==============================================================*/
/* Table: DETALLE_CALIFICACION                                  */
/*==============================================================*/
create table DETALLE_CALIFICACION (
   DET_ID               int                  not null,
   CAL_ID               int                  not null,
   CUR_ID               int                  not null,
   PAR_ID               int                  not null,
   DET_NOTA             decimal(4,2)         not null,
   DET_FECHA            datetime             not null,
   constraint PK_DETALLE_CALIFICACION primary key nonclustered (DET_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on DETALLE_CALIFICACION (
CAL_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on DETALLE_CALIFICACION (
CUR_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on DETALLE_CALIFICACION (
PAR_ID ASC
)
go

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO (
   GEN_ID               int                  not null,
   GEN_NOMBRE           char(50)             not null,
   constraint PK_GENERO primary key nonclustered (GEN_ID)
)
go

/*==============================================================*/
/* Table: MATRICULA                                             */
/*==============================================================*/
create table MATRICULA (
   CUR_ID               int                  not null,
   AL_ID                int                  not null,
   MAT_FECHA            datetime             not null,
   constraint PK_MATRICULA primary key nonclustered (CUR_ID, AL_ID)
)
go

/*==============================================================*/
/* Index: MATRICULA2_FK                                         */
/*==============================================================*/
create index MATRICULA2_FK on MATRICULA (
AL_ID ASC
)
go

/*==============================================================*/
/* Index: MATRICULA_FK                                          */
/*==============================================================*/
create index MATRICULA_FK on MATRICULA (
CUR_ID ASC
)
go

/*==============================================================*/
/* Table: PARAMETRO                                             */
/*==============================================================*/
create table PARAMETRO (
   PAR_ID               int                  not null,
   PAR_NOMBRE           char(50)             not null,
   PAR_DESCRIPCION      char(100)            null,
   constraint PK_PARAMETRO primary key nonclustered (PAR_ID)
)
go

/*==============================================================*/
/* Table: PARENTESCO_REPRESENTANTE                              */
/*==============================================================*/
create table PARENTESCO_REPRESENTANTE (
   PARENT_ID            int                  not null,
   PARENT_NOMBRE        char(40)             not null,
   constraint PK_PARENTESCO_REPRESENTANTE primary key nonclustered (PARENT_ID)
)
go

/*==============================================================*/
/* Table: REGISTRO_CURSO                                        */
/*==============================================================*/
create table REGISTRO_CURSO (
   CAT_ID               int                  not null,
   CUR_ID               int                  not null,
   REG_FECHA            datetime             not null,
   REG_CARGO            bit                  not null,
   constraint PK_REGISTRO_CURSO primary key nonclustered (CAT_ID, CUR_ID)
)
go

/*==============================================================*/
/* Index: REGISTRO_CURSO2_FK                                    */
/*==============================================================*/
create index REGISTRO_CURSO2_FK on REGISTRO_CURSO (
CUR_ID ASC
)
go

/*==============================================================*/
/* Index: REGISTRO_CURSO_FK                                     */
/*==============================================================*/
create index REGISTRO_CURSO_FK on REGISTRO_CURSO (
CAT_ID ASC
)
go

/*==============================================================*/
/* Table: REPRESENTANTE                                         */
/*==============================================================*/
create table REPRESENTANTE (
   REP_ID               int                  not null,
   GEN_ID               int                  not null,
   REP_CEDULA           char(30)             not null,
   REP_NOMBRE           char(50)             not null,
   REP_APELLIDO         char(50)             not null,
   REP_FECHA_NACIMIENTO datetime             not null,
   REP_TELEFONO_DOM     char(10)             not null,
   REP_TELEFONO_TRA     char(15)             null,
   REP_DIRECCION_DOM    char(50)             not null,
   REP_DIRECCION_TRA    char(50)             null,
   REP_HORAS_DISPONIBLES char(50)             not null,
   constraint PK_REPRESENTANTE primary key nonclustered (REP_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on REPRESENTANTE (
GEN_ID ASC
)
go

