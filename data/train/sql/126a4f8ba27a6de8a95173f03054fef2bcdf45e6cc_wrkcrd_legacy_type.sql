CREATE TABLE "WRKCRD"."CC_WRKCRD_LEGACY_TYPE"
  (
    "CODE" VARCHAR2(5 BYTE) NOT NULL ENABLE,
    CONSTRAINT "CC_WRKCRD_LEGACY_TYPE_PK" PRIMARY KEY ("CODE") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "CC_DEVELOPMENT" ENABLE
  )
  SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE
  (
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  )
  TABLESPACE "CC_DEVELOPMENT" ;
  
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('M');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('F');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('R');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('B');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('G');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('S');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('T');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('U');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('C');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('V');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('A');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('Z');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('Y');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('W');
INSERT INTO "WRKCRD"."CC_WRKCRD_LEGACY_TYPE" (CODE) VALUES ('P');
COMMIT;
/