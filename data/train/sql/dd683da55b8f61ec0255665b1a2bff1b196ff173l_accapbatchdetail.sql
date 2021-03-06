SET DEFINE OFF;
CREATE TABLE L_ACCAPBATCHDETAIL
(
  BATCHID           VARCHAR2(40 BYTE)           NOT NULL,
  RESNUMBER         NUMBER(18)                  NOT NULL,
  SERVICESEQ        INTEGER                     NOT NULL,
  SUPPLIERID        VARCHAR2(15 BYTE),
  SUPPLIERNAME      VARCHAR2(50 BYTE),
  PAYTO             VARCHAR2(50 BYTE),
  BILLAMT           NUMBER(18,2),
  PAYAMT            NUMBER(18,2),
  ESTIMATE          NUMBER(18,2),
  VARIANCE          NUMBER(18,2),
  DUEDATE           DATE,
  FULLPAYMENT       CHAR(1 BYTE),
  GAINLOSSEXCHRATE  FLOAT(126),
  REMARKS           VARCHAR2(500 BYTE),
  DESCRIPTION       VARCHAR2(250 BYTE)
)
TABLESPACE DTW_ADV_TABLES
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          80K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
