
DROP SEQUENCE SQ_TM_USER;

CREATE SEQUENCE SQ_TM_USER
	INCREMENT BY 1
	START WITH 1;

DROP SEQUENCE SQ_TT_DOCUMENT;

CREATE SEQUENCE SQ_TT_DOCUMENT
	INCREMENT BY 1
	START WITH 1;

DROP TABLE HS_TM_USER CASCADE CONSTRAINTS PURGE;

DROP TABLE HS_TT_DOCUMENT CASCADE CONSTRAINTS PURGE;

CREATE TABLE HS_TM_USER
(
	ID                   NUMBER NOT NULL ,
	LOGIN_NAME           VARCHAR2(20) NULL ,
	ENG_NAME             VARCHAR2(20) NULL ,
	CHIN_NAME            VARCHAR2(20) NULL ,
	OVSD_NAME            VARCHAR2(20) NULL ,
	SHIFT                VARCHAR2(20) NULL ,
	EMP_NUMER            VARCHAR2(20) NULL ,
	CREATED_ON           DATE NULL ,
	UPDATED_ON           DATE NULL ,
	ENABLE               NUMBER(1) NULL 
);

CREATE UNIQUE INDEX XPKHS_TM_USER ON HS_TM_USER
(ID   ASC);

ALTER TABLE HS_TM_USER
	ADD CONSTRAINT  XPKHS_TM_USER PRIMARY KEY (ID);

CREATE TABLE HS_TT_DOCUMENT
(
	ID                   NUMBER NOT NULL ,
	TITLE                VARCHAR2(50) NOT NULL ,
	PATH                 VARCHAR2(100) NULL ,
	CONTENT              CLOB NULL ,
	VISIT_COUNT          NUMBER(10) NOT NULL ,
	CREATED_ON           DATE NULL ,
	CREATED_BY           VARCHAR2(20) NULL ,
	UPDATED_ON           DATE NULL ,
	UPDATED_BY           VARCHAR2(20) NULL ,
	KEYWORDS             VARCHAR2(20) NULL ,
	CLASSFY              VARCHAR2(20) NULL 
);

CREATE UNIQUE INDEX XPKHS_TT_DOCUMENT ON HS_TT_DOCUMENT
(ID   ASC);

ALTER TABLE HS_TT_DOCUMENT
	ADD CONSTRAINT  XPKHS_TT_DOCUMENT PRIMARY KEY (ID);
