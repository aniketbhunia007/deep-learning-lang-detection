--------------------------------------------------------
--  Constraints for Table INVENT
--------------------------------------------------------

  ALTER TABLE "INVENT" ADD CONSTRAINT "PK_EPI_INVENT" PRIMARY KEY ("INVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "INVENT" MODIFY ("INVENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "INVENT" MODIFY ("SUBJ_ID" NOT NULL ENABLE);
 
  ALTER TABLE "INVENT" MODIFY ("GIS_ID" NOT NULL ENABLE);
 
  ALTER TABLE "INVENT" MODIFY ("INVENT_TYPE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "INVENT" MODIFY ("STATUS_ID" NOT NULL ENABLE);
