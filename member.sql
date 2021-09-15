create table MEMBER (
    "U_NO"	NUMBER	NOT NULL PRIMARY KEY
    , "U_ID"	VARCHAR2(30 BYTE)	NOT NULL
    , "U_NICKNAME"	VARCHAR2(15 BYTE)	NOT NULL
    , "U_PW"	VARCHAR2(100 BYTE)	NOT NULL
     , "U_PHONE"	VARCHAR2(13 BYTE)	NOT NULL
      , "REG_DATE"	DATE	default SYSDATE not null    
      , "MOD_DATE"	DATE	default SYSDATE not null
       , "U_STATUS"	VARCHAR2(1 BYTE)	default 'Y' NOT NULL
       , "R_NO" number not null
);

COMMENT ON COLUMN "MEMBER"."U_NO" IS 'ȸ����ȣ';
COMMENT ON COLUMN "MEMBER"."U_ID" IS '���̵�';
COMMENT ON COLUMN "MEMBER"."U_NICKNAME" IS '�г���';
COMMENT ON COLUMN "MEMBER"."U_PW" IS '��й�ȣ';
COMMENT ON COLUMN "MEMBER"."U_PHONE" IS '����ó';
COMMENT ON COLUMN "MEMBER"."REG_DATE" IS '������';
COMMENT ON COLUMN "MEMBER"."MOD_DATE" IS '������¥';
COMMENT ON COLUMN "MEMBER"."U_STATUS" IS 'Ż�𿩺�';
COMMENT ON COLUMN "MEMBER"."R_NO" IS '������ ��ȣ';

insert into member values (1, 'test', 'test', 'test', 01012341234, sysdate, sysdate, 'N', 1);

select 
    r_no
    , u_no
    , u_id
    , u_nickname
    , u_pw
    , u_phone
    , reg_date
    , mod_date
    , u_status
    , r_dong
    , r_ho
    , r_name
    , r_email
    , r_type
    , r_status
    , r_date
from member join info_resident using (R_NO);