--------------------------------------------------------
--  File created - Saturday-April-04-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RM_LM_CAUSALITY
--------------------------------------------------------

  CREATE TABLE "MART_USER"."RM_LM_CAUSALITY" 
   (	"ENTERPRISE_ID" NUMBER DEFAULT SYS_CONTEXT('ARGUS_MART_CTX','enterprise_id'), 
	"CAUSALITY_ID" NUMBER, 
	"CAUSALITY" VARCHAR2(35 CHAR), 
	"REPORTABILITY" NUMBER, 
	"PROTECTED" NUMBER, 
	"DISPLAY" NUMBER, 
	"CAUSALITY_J" VARCHAR2(35 CHAR), 
	"DELETED" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AM_MART_DATA_01" ;
--------------------------------------------------------
--  DDL for Index PK_RM_LM_CAUSALITY
--------------------------------------------------------

  CREATE UNIQUE INDEX "MART_USER"."PK_RM_LM_CAUSALITY" ON "MART_USER"."RM_LM_CAUSALITY" ("ENTERPRISE_ID", "CAUSALITY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AM_MART_INDEX_01" ;
--------------------------------------------------------
--  Constraints for Table RM_LM_CAUSALITY
--------------------------------------------------------

  ALTER TABLE "MART_USER"."RM_LM_CAUSALITY" ADD CONSTRAINT "PK_RM_LM_CAUSALITY" PRIMARY KEY ("ENTERPRISE_ID", "CAUSALITY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AM_MART_INDEX_01"  ENABLE;
 
  ALTER TABLE "MART_USER"."RM_LM_CAUSALITY" MODIFY ("ENTERPRISE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MART_USER"."RM_LM_CAUSALITY" MODIFY ("CAUSALITY" NOT NULL ENABLE);
