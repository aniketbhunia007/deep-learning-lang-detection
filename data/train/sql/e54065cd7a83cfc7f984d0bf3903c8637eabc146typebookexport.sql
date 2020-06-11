--------------------------------------------------------
--  File created - Tuesday-December-15-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AA_TYPEBOOK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AA_TYPEBOOK" 
   (	"ID_TYPE" NUMBER, 
	"NAME" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.AA_TYPEBOOK
SET DEFINE OFF;
Insert into SYSTEM.AA_TYPEBOOK (ID_TYPE,NAME) values (100,'นวนิยาย :โรแมนติก');
Insert into SYSTEM.AA_TYPEBOOK (ID_TYPE,NAME) values (200,'วรรณกรรม');
Insert into SYSTEM.AA_TYPEBOOK (ID_TYPE,NAME) values (300,'หนังสือเด็ก');
Insert into SYSTEM.AA_TYPEBOOK (ID_TYPE,NAME) values (400,'การศึกษา');
Insert into SYSTEM.AA_TYPEBOOK (ID_TYPE,NAME) values (500,'ความรู้รอบตัว');
--------------------------------------------------------
--  DDL for Index AA_TYPEBOOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."AA_TYPEBOOK_PK" ON "SYSTEM"."AA_TYPEBOOK" ("ID_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table AA_TYPEBOOK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."AA_TYPEBOOK" ADD CONSTRAINT "AA_TYPEBOOK_PK" PRIMARY KEY ("ID_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."AA_TYPEBOOK" MODIFY ("ID_TYPE" NOT NULL ENABLE);
