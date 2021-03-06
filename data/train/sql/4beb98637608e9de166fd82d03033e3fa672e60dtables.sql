--------------------------------------------------------
--  DDL for Table DETAIL
--------------------------------------------------------

  CREATE TABLE "KEYFOOD"."DETAIL" 
   (	"ITEMID" NUMBER, 
	"PACK" NUMBER, 
	"ITEM_SIZE" NUMBER, 
	"LIST_COST" NUMBER, 
	"SR_UNITS" NUMBER, 
	"SR_PRICE" NUMBER(10,2), 
	"SR_BRAND" NUMBER, 
	"DI_AMOUNT" NUMBER(10,2), 
	"DI_SDATE" DATE, 
	"DI_EDATE" DATE, 
	"OI_AMOUNT" NUMBER(10,2), 
	"OI_SDATE" DATE, 
	"OI_EDATE" DATE, 
	"REVALUE" NUMBER(10,2), 
	"RW_UNITS" NUMBER, 
	"RW_PRICE" NUMBER(10,2), 
	"CLIMIT" NUMBER, 
	"MIN_PURCHASE" NUMBER(10,2), 
	"CTYPE" NUMBER, 
	"ADDRESS1" VARCHAR2(80 BYTE), 
	"ADDRESS2" VARCHAR2(80 BYTE), 
	"CITY" VARCHAR2(80 BYTE), 
	"STATE" VARCHAR2(80 BYTE), 
	"ZIPCODE" VARCHAR2(5 BYTE), 
	"DETAILID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DETAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KEYFOOD"."DETAIL_PK" ON "KEYFOOD"."DETAIL" ("DETAILID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table DETAIL
--------------------------------------------------------

  ALTER TABLE "KEYFOOD"."DETAIL" ADD CONSTRAINT "DETAIL_PK" PRIMARY KEY ("DETAILID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KEYFOOD"."DETAIL" MODIFY ("DETAILID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DETAIL
--------------------------------------------------------

  ALTER TABLE "KEYFOOD"."DETAIL" ADD CONSTRAINT "DETAIL_ITEM_FK1" FOREIGN KEY ("ITEMID")
	  REFERENCES "KEYFOOD"."ITEM" ("ITEMID") ENABLE;
