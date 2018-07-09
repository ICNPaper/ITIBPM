drop sequence IF EXISTS SEQ_BPM_workitem;
drop sequence IF EXISTS SEQ_BPM_PROCDEF;
drop sequence IF EXISTS SEQ_BPM_PROCDEFVER;
drop sequence IF EXISTS SEQ_BPM_PROCINST;
drop sequence IF EXISTS SEQ_BPM_PROCVAR;
drop sequence IF EXISTS SEQ_BPM_ROLEMAPPING;
drop sequence IF EXISTS SEQ_BPM_ACLTABLE;
drop sequence IF EXISTS SEQ_BPM_DOC_COMMENTS;

create sequence SEQ_BPM_WORKITEM;
create sequence SEQ_BPM_PROCDEF;
create sequence SEQ_BPM_PROCDEFVER;
create sequence SEQ_BPM_PROCINST;
create sequence SEQ_BPM_PROCVAR;
create sequence SEQ_BPM_ROLEMAPPING;
create sequence SEQ_BPM_ACLTABLE;
create sequence SEQ_BPM_DOC_COMMENTS;

DROP TABLE IF EXISTS BPM_ACLTABLE;
CREATE TABLE BPM_ACLTABLE
(
   ACLTABLEID bigint,
   DEFID bigint,
   COMCODE varchar(20),
   PARTCODE varchar(20),
   EMPCODE varchar(20),
   ROLECODE varchar(20),
   DEFAULTUSER char(1),
   PERMISSION char(1),
   CONSTRAINT PK_BPM_ACLTABLE
   PRIMARY KEY ( acltableid )
)
;

DROP TABLE IF EXISTS BPM_DEADLN_DIM;
CREATE TABLE BPM_DEADLN_DIM
(
   DEADLN_ID int NOT NULL,
   DEADLN_DESC varchar(255),
   CONSTRAINT PK_BPM_DEADLN_DIM
   PRIMARY KEY ( DEADLN_ID )
)
;
INSERT INTO BPM_DEADLN_DIM (DEADLN_ID, DEADLN_DESC) VALUES (0, 'Complete in Duedate');
INSERT INTO BPM_DEADLN_DIM (DEADLN_ID, DEADLN_DESC) VALUES (1, 'Delay Work');

DROP TABLE IF EXISTS BPM_PRFM_FACT_2006;
CREATE TABLE BPM_PRFM_FACT_2006
(
   INST_ID bigint,
   ROOTINST_ID bigint,
   RSRC_ID varchar(50),
   TIME_ID bigint,
   ACT_ID varchar(100),
   ACT_NAME varchar(100),
   DEF_ID bigint,
   DEF_NAME varchar(200),
   PRSNGTIME bigint,
   TRNRNDTIME bigint,
   IDLETIME bigint,
   CHOVRTIME bigint,
   SSPNDTIME bigint,
   COST bigint,
   SLA_STFTRY bigint,
   MODTIME date,
   DEADLNHT int
)
;

DROP TABLE IF EXISTS BPM_PROCDEF;
CREATE TABLE BPM_PROCDEF
(
   DEFID bigint NOT NULL,
   DESCRIPTION varchar(255),
   PARENTFOLDER bigint,
   ISFOLDER int DEFAULT 0,
   ISADHOC int DEFAULT 0,
   OBJTYPE varchar(10),
   PRODVER int DEFAULT 0,
   PRODVERID bigint,
   NAME varchar(255),
   ISDELETED smallint DEFAULT 0,
   MODDATE timestamp,
   ALIAS varchar(100),
   COMCODE varchar(20),
   ISVISIBLE smallint,
   CONSTRAINT PK_BPM_PROCDEF
   PRIMARY KEY ( DEFID )
)
;

DROP TABLE IF EXISTS BPM_PROCDEFVER;
CREATE TABLE BPM_PROCDEFVER
(
   DEFVERID bigint,
   FILEPATH varchar(255),
   VER bigint,
   DEFID bigint,
   DEFNAME varchar(255),
   MODDATE timestamp,
   PRODSTARTDATE timestamp,
   ISDELETED smallint DEFAULT 0,
   CONSTRAINT PK_BPM_PROCDEFVER
   PRIMARY KEY ( defverid )
)
;

DROP TABLE IF EXISTS BPM_PROCINST;
CREATE TABLE BPM_PROCINST
(
   INSTID bigint NOT NULL,
   DEFVERID bigint,
   DEFID bigint,
   DEFNAME varchar(255),
   DEFPATH varchar(255),
   DEFMODDATE timestamp,
   STARTEDDATE timestamp,
   FINISHEDDATE timestamp,
   DUEDATE timestamp,
   STATUS varchar(20),
   INFO varchar(255),
   NAME varchar(255),
   ISDELETED smallint DEFAULT 0,
   ISADHOC smallint DEFAULT 0,
   ISARCHIVE smallint DEFAULT 0,
   ISSUBPROCESS smallint DEFAULT 0,
   ISEVENTHANDLER smallint DEFAULT 0,
   ROOTINSTID bigint,
   MAININSTID bigint,
   MAINDEFVERID bigint,
   MAINACTTRCTAG varchar(20),
   MAINEXECSCOPE varchar(20),
   ABSTRCPATH varchar(200),
   DONTRETURN bigint,
   MODDATE timestamp,
   EXT1 varchar(100),
   INITEP varchar(100),
   INITRSNM varchar(100),
   CURREP varchar(100),
   CURRRSNM varchar(100),
   STRATEGYID bigint,
   CONSTRAINT PK_BPM_PROCINST
   PRIMARY KEY ( INSTID )
)
;

DROP TABLE IF EXISTS BPM_PROCVAR;
CREATE TABLE BPM_PROCVAR
(
   VARID bigint,
   INSTID bigint,
   DATATYPE bigint,
   VALUESTRING varchar(4000),
   VALUELONG bigint,
   VALUEBOOLEAN bigint,
   VALUEDATE timestamp,
   VARINDEX bigint,
   TRCTAG varchar(20),
   ISPROPERTY bigint,
   MODDATE timestamp,
   KEYNAME varchar(100),
   KEYSTRING varchar(200),
   CONSTRAINT PK_BPM_PROCVAR
   PRIMARY KEY ( VARID )
)
;

DROP TABLE IF EXISTS BPM_ROLEMAPPING;
CREATE TABLE BPM_ROLEMAPPING
(
   ROLEMAPPINGID bigint,
   INSTID bigint,
   ROOTINSTID bigint,
   ROLENAME varchar(20),
   ENDPOINT varchar(255),
   VALUE varchar(4000),
   RESNAME varchar(200),
   ASSIGNTYPE bigint,
   ASSIGNPARAM1 varchar(100),
   DISPATCHOPTION bigint,
   DISPATCHPARAM1 varchar(100),
   GROUPID VARCHAR(30),
   CONSTRAINT PK_BPM_ROLEMAPPING
   PRIMARY KEY ( rolemappingID )
)
;

DROP TABLE IF EXISTS BPM_RSRC_DIM;
CREATE TABLE BPM_RSRC_DIM
(
   RSRC_ID varchar(20) NOT NULL,
   RSRC_NAME varchar(100),
   DEPT_NAME varchar(100),
   DEPT_ID varchar(20),
   PSTN_NAME varchar(50),
   PSTN_ID varchar(20),
   TITLE varchar(50),
   GENDER bigint,
   BIRTHDAY timestamp,
   CONSTRAINT PK_BPM_RSRC_DIM
   PRIMARY KEY ( RSRC_ID )
)
;

DROP TABLE IF EXISTS BPM_TIME_DIM;
CREATE TABLE BPM_TIME_DIM
(
   TIME_ID int NOT NULL,
   YR bigint,
   MNTH bigint,
   QUTR bigint,
   DAY bigint,
   MODDATE timestamp,
   CONSTRAINT PK_BPM_TIME_DIM
   PRIMARY KEY ( TIME_ID )
)
;

DROP TABLE IF EXISTS BPM_WORKLIST;
CREATE TABLE BPM_WORKLIST
(
   TASKID int NOT NULL,
   TITLE varchar(200),
   DESCRIPTION varchar(500),
   ENDPOINT varchar(200),
   STATUS varchar(100),
   PRIORITY bigint,
   STARTDATE timestamp,
   ENDDATE timestamp,
   DUEDATE timestamp,
   INSTID bigint,
   DEFID bigint,
   DEFNAME varchar(200),
   TRCTAG varchar(100),
   TOOL varchar(200),
   PARAMETER varchar(4000),
   GROUPID bigint,
   GROUPNAME bigint,
   EXT1 varchar(200),
   EXT2 varchar(200),
   EXT3 varchar(200),
--   EXT4 varchar(200),
--   EXT5 varchar(200),
--   EXT6 varchar(200),
--   EXT7 varchar(200),
--   EXT8 varchar(200),
--   EXT9 varchar(200),
   ISURGENT bigint,
   HASATTACHFILE bigint,
   HASCOMMENT bigint,
   DOCUMENTCATEGORY varchar(200),
   ISDELETED smallint,
   ROOTINSTID bigint,
   DISPATCHOPTION bigint,
   DISPATCHPARAM1 varchar(100),
   ROLENAME varchar(100),
   RESNAME varchar(100),
   REFROLENAME varchar(100),
   EXECSCOPE varchar(5),
   SAVEDATE timestamp,
   CONSTRAINT PK_WORKLIST
   PRIMARY KEY ( TASKID )
)
;

DROP TABLE IF EXISTS COMTABLE;
CREATE TABLE COMTABLE
(
   COMCODE varchar(20),
   COMNAME varchar(30),
   DESCRIPTION varchar(255),
   ISDELETED int DEFAULT 0,--ISDELETED varchar(1) DEFAULT '0'
   CONSTRAINT PK_COMTABLE
   PRIMARY KEY ( COMCODE )
)
;
insert into COMTABLE (COMCODE, COMNAME) values ('uEngine', 'UENGINE');

DROP TABLE IF EXISTS DOC_COMMENTS;
CREATE TABLE DOC_COMMENTS
(
   ID int NOT NULL,
   INSTANCE_ID bigint,
   CONTENTS varchar(3000),
   OPT_TYPE varchar(100),
   EMPNO varchar(20),
   EMPNAME varchar(100),
   EMPTITLE varchar(100),
   TRACINGTAG varchar(10),
   CREATED_DATE timestamp,
   CREATED_BY varchar(20),
   UPDATED_DATE timestamp,
   UPDATED_BY varchar(20),
   APPRTITLE varchar(100),
   CONSTRAINT PK_DOC_COMMENTS
   PRIMARY KEY ( ID )
)
;

DROP TABLE IF EXISTS DUAL;
CREATE TABLE DUAL
(
   ID varchar
)
;
insert into DUAL values ('value');

DROP TABLE IF EXISTS EMPTABLE;
CREATE TABLE EMPTABLE
(
   EMPNAME varchar(100),
   EMPCODE varchar(20) NOT NULL,
   PASSWORD varchar(20),
   ISADMIN smallint,
   JIKNAME varchar(100),
   EMAIL varchar(100),
   PARTCODE varchar(20),
   GLOBALCOM varchar(20),
   ISDELETED smallint DEFAULT 0, --ISDELETED varchar(1) DEFAULT '0'
   LOCALE varchar(10) DEFAULT 'en',
   NATEON varchar(50),
   MSN varchar(50),
   MOBILECMP varchar(50), 
   MOBILENO varchar(50),
   CONSTRAINT PK_EMPTABLE
   PRIMARY KEY ( EMPCODE )
)
;
insert into emptable (empname, empcode, partcode, globalcom, isadmin, password) values ('Tester', 'test', 'DEV', 'uEngine', 1, 'test');

DROP TABLE IF EXISTS PARTTABLE;
CREATE TABLE PARTTABLE
(
   GLOBALCOM varchar(20),
   PARTCODE varchar(20) NOT NULL,
   PARTNAME varchar(30),
   PARENT_PARTCODE varchar(20),
   ISDELETED smallint DEFAULT 0,
   DESCRIPTION varchar(255),
   CONSTRAINT PK_PARTTABLE
   PRIMARY KEY ( PARTCODE )
)
;
insert into parttable (partcode, globalcom, partname) values ('DEV', 'uEngine', 'Development');

DROP TABLE IF EXISTS ROLETABLE;
CREATE TABLE ROLETABLE
(
   ROLECODE varchar(20) NOT NULL,
   COMCODE varchar(20),
   DESCR varchar(255),
   ISDELETED smallint DEFAULT 0,
   CONSTRAINT PK_ROLETABLE
   PRIMARY KEY ( ROLECODE )
)
;
insert into roletable (rolecode, descr, comcode) values ('TM', 'Trouble Manager', 'uEngine');

DROP TABLE IF EXISTS ROLEUSERTABLE;
CREATE TABLE ROLEUSERTABLE
(
   ROLECODE varchar(20) NOT NULL,
   EMPCODE varchar(20) NOT NULL,
   CONSTRAINT PK_GROUPUSERTABLE
   PRIMARY KEY (ROLECODE, EMPCODE)
)
;
insert into roleUserTable (rolecode, empCode) values ('TM', 'test');

DROP TABLE IF EXISTS SCHEDULE_TABLE;
CREATE TABLE SCHEDULE_TABLE
(
   SCHE_IDX bigint,
   INSTID bigint,
   TRCTAG varchar(100),
   STARTDATE timestamp
   --CONSTRAINT PK_SCHEDULE_TABLE
   --PRIMARY KEY ( INSTID, TRCTAG )
)
;

DROP SEQUENCE IF EXISTS SEQ_BPM_STRTG;
CREATE SEQUENCE SEQ_BPM_STRTG;

DROP TABLE IF EXISTS BPM_STRTG;
CREATE TABLE BPM_STRTG (
   STRTGID int,
   STRTGNM VARCHAR(100),
   TYPE VARCHAR(30),
   ISDELETED smallint DEFAULT 0,
   STATUS CHAR(10),
   INSTCNT int,
   CMPLTINSTCNT int,
   DESCRIPTION VARCHAR(255),
   COMCODE VARCHAR(20),
   STARTDATE date,
   ENDDATE date,
   PARTCODE VARCHAR(20),
   PARTNAME VARCHAR(100),
   CONSTRAINT PK_BPM_STRTG
   PRIMARY KEY ( STRTGID )
);

INSERT INTO BPM_STRTG (STRTGID, STRTGNM,TYPE,DESCRIPTION,COMCODE) VALUES ('0', 'uEngine','','','uEngine');

DROP TABLE IF EXISTS BPM_STRINST;
CREATE TABLE BPM_STRINST (
   INSTID int,
   STRTGID int,
   ISDELETED smallint DEFAULT 0
);


---------------2011.03.07. TAG
DROP SEQUENCE IF EXISTS SEQ_BPM_TAG;
CREATE SEQUENCE SEQ_BPM_TAG;

DROP TABLE IF EXISTS BPM_TAG;
CREATE TABLE BPM_TAG(
TAGID bigint NOT NULL,
NAME VARCHAR (255) NOT NULL,
COMCODE VARCHAR (20) NOT NULL,
CONSTRAINT PK_BPM_TAG PRIMARY KEY (TAGID)
);

DROP TABLE IF EXISTS BPM_TAGMAPPING;
CREATE TABLE BPM_TAGMAPPING(
TAGID bigint NOT NULL,
INSTID bigint NOT NULL,
ROOTINSTID bigint NOT NULL
);