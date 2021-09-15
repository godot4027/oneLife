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

COMMENT ON COLUMN "MEMBER"."U_NO" IS '회원번호';
COMMENT ON COLUMN "MEMBER"."U_ID" IS '아이디';
COMMENT ON COLUMN "MEMBER"."U_NICKNAME" IS '닉네임';
COMMENT ON COLUMN "MEMBER"."U_PW" IS '비밀번호';
COMMENT ON COLUMN "MEMBER"."U_PHONE" IS '연락처';
COMMENT ON COLUMN "MEMBER"."REG_DATE" IS '가입일';
COMMENT ON COLUMN "MEMBER"."MOD_DATE" IS '수정날짜';
COMMENT ON COLUMN "MEMBER"."U_STATUS" IS '탈퇴여부';
COMMENT ON COLUMN "MEMBER"."R_NO" IS '입주자 번호';

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