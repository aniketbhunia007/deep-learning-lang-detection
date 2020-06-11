--------------------------------------------------------
-- Archivo creado  - viernes-diciembre-09-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FASE
--------------------------------------------------------

  CREATE TABLE "femxa"."FASE" 
   (	"FASE_ID" NUMBER, 
	"FECHDE_C" DATE, 
	"FECHE_F" DATE, 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"ESTADO" VARCHAR2(20 BYTE), 
	"PROYECTO_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROYECTO
--------------------------------------------------------

  CREATE TABLE "femxa"."PROYECTO" 
   (	"PROYECTO_ID" NUMBER, 
	"CODIGO" NUMBER, 
	"DESCRIPCION" VARCHAR2(50 BYTE), 
	"HORAS_ESTIMADAS" NUMBER, 
	"NOMBRE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECURSOS
--------------------------------------------------------

  CREATE TABLE "femxa"."RECURSOS" 
   (	"RECURSO_ID" NUMBER, 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"COSTE" NUMBER, 
	"TP_ID" NUMBER, 
	"FASE_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TIPO_RECURSO
--------------------------------------------------------

  CREATE TABLE "femxa"."TIPO_RECURSO" 
   (	"TR_ID" NUMBER, 
	"TIPO" VARCHAR2(20 BYTE) DEFAULT 'HW' || 'SW' || 'EMPLEADO'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into femxa.FASE
SET DEFINE OFF;
REM INSERTING into femxa.PROYECTO
SET DEFINE OFF;
REM INSERTING into femxa.RECURSOS
SET DEFINE OFF;
REM INSERTING into femxa.TIPO_RECURSO
SET DEFINE OFF;
