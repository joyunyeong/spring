--------------------------------------------------------
--  파일이 생성됨 - 수요일-6월-26-2019   
--------------------------------------------------------
DROP TABLE "KITRI"."BOARD";
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "KITRI"."BOARD" 
   (	"SEQ" NUMBER, 
	"NAME" VARCHAR2(10 BYTE), 
	"ID" VARCHAR2(16 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"SUBJECT" VARCHAR2(100 BYTE), 
	"CONTENT" CLOB, 
	"HIT" NUMBER DEFAULT 0, 
	"LOGTIME" DATE DEFAULT SYSDATE, 
	"BCODE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
 

   COMMENT ON COLUMN "KITRI"."BOARD"."SEQ" IS '글번호';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."NAME" IS '작성자이름';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."ID" IS '작성자아이디';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."EMAIL" IS '작성자이메일';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."SUBJECT" IS '제목';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."CONTENT" IS '내용';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."HIT" IS '조회수';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."LOGTIME" IS '작성일자';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."BCODE" IS '게시판번호';
 
   COMMENT ON TABLE "KITRI"."BOARD"  IS '게시판';
REM INSERTING into KITRI.BOARD
SET DEFINE OFF;
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (65,'정현정','resault','resault@gmail.com','두번째 게시글입니다.',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (74,'김형섭','hiosryk','hiosryk@naver.com','안녕제목이야',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (75,'박광규','gwangq','pgg0406@naver.com','공수래공수거',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (98,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (91,'형태희','hth0893','hth0893@naver.com','ㄻㄴㅇㄻㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (95,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (101,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (35,'안효인','java2','java2@naver.com','i？？e？？ i？？eªⓒi？´i？¼',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (47,'고세라','tpfk624','tpfk624@naver.com','i？？e？？ e？？ i？？eªⓒi？´i？¼',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (53,'안효인','java2','java2@naver.com','i？？e¸？i？？e¸？',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (56,'정현정','resault','resault@gmail.com','i²≪e²？i§¸ e²？i？？e¸？i？？e？？e？¤.',0,to_date('19/06/24','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (57,'포식자영찬','yahoho','yahoho@gmail.com','i？？e？？i？？i？¸i？？? i？？i？？i？？i？？',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (64,'안효인','java2','java2@naver.com','한글',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (71,'안병욱','calubang','calubang@gmail.com','스프링 한글지원 안된다던데',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (76,'포식자영찬','yahoho','yahoho@gmail.com','해변파티영찬',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (77,'고세라','tpfk624','tpfk624@naver.com','안녕 난 제목이야',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (78,'황선혜','seon','seon@naver.com','제목',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (80,'신지영','shzy232','shzy232@naver.com','111',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (82,'포식자영찬','yahoho','yahoho@gmail.com','아이디 6글자 쓰고싶네요',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (85,'포식자영찬','yahoho','yahoho@gmail.com','아이디가 아니고 이름이었음.',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (104,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (105,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (113,'포식자영찬','yahoho','yahoho@gmail.com','태희야.....',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (120,'권범준입','hihihidf','qjawns0617@naver.com','ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (121,'권범준입','hihihidf','qjawns0617@naver.com','ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (100,'eeee','admin','eeee@naver.com','12321',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (96,'포식자영찬','yahoho','yahoho@gmail.com','국산스프링 찾기이전에',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (99,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (106,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (107,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (117,'조윤영','mnmm97','claire97j@naver.com','유녕유녕',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (122,'박광규','gwangq','pgg0406@naver.com','가입 인사입니다.',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (128,'권범준입','hihihidf','qjawns0617@naver.com','ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (173,'박광규','gwangq','pgg0406@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (197,'박미래','simb-7','alfo8360@naver.com','제목1',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (34,'안효인','java2','java2@naver.com','i？？e？？i？？i？¸i？？ i？？eªⓒi？？e？？e？¤.',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (248,'정현정','resault','resault@gmail.com','첫번째 게시글입니다.',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (43,'안효인','java2','java2@naver.com','i？？eªⓒi？？e？？e？¤.',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (46,'신지영','shzy232','shzy232@naver.com','i？？eªⓒi？？eªⓒi？？eªⓒ',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (50,'포식자영찬','yahoho','yahoho@gmail.com','dddddddddd',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (54,'kitri','abcde','kitri@kitri.re.kr','a？￡a？？a？？a？￡i？？a？？a？？',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (102,'eeee','admin','eeee@naver.com','12321ㄹ와ㅣㅇㄹ너ㅏㅣㅇㄹㄴ머ㅏㅣㅇㄹㄴ머ㅏㅣ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (103,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (115,'지금','now1234','now1234@naver.com','김 나 박 이 김 나',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (116,'지금','now1234','now1234@naver.com','김 나 박 이 김 나',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (118,'조윤영','mnmm97','claire97j@naver.com','유녕유녕',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (130,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (132,'안효인','java2','java2@naver.com','''검블유'' 이동욱, 특별출연 예고…임수정과 마주친 후 "오랜만이야" [TV포커스]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (211,'조윤영','mnmm97','claire97j@naver.com','정현정',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (241,'안효인','java2','java2@naver.com','dsf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (242,'이세현','tpgus534','tpgus534@naver.com','123',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (249,'조윤영','mnmm97','claire97j@naver.com','234',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (133,'조윤영','mnmm97','claire97j@naver.com','[IS 인터뷰] ”하면 된다” 곱씹은 한선태, 역사적 1이닝 뒷이야기',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (144,'지금','now1234','now1234@naver.com','”모네→애프터문” ''슈퍼밴드'' 6팀, 결선 진출 프로필 공개',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (172,'고세라','tpfk624','tpfk624@naver.com','이동욱 오늘 ‘검블유’ 특별출연… 임수정과 美친 케미 [공식입장]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (218,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (220,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (224,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇ러ㅏㅣㄴㅁㅇㅁㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (135,'kitri','abcde','kitri@kitri.re.kr','트럼프에 선 긋는 파월 “일시 변화에 과민대응 않겠다”',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (136,'eeee','admin','eeee@naver.com','이승윤 매니저 강현석 "채무관련 내용 사실…진심으로 죄송"[전문]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (137,'황선혜','seon','seon@naver.com','제목',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (139,'지금','now1234','now1234@naver.com','”모네→애프터문” ''슈퍼밴드'' 6팀, 결선 진출 프로필 공개',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (142,'안병욱','calubang','calubang@gmail.com','스마트폰 싸게 사는 법 (구매 편, 완결)',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (143,'지금','now1234','now1234@naver.com','”모네→애프터문” ''슈퍼밴드'' 6팀, 결선 진출 프로필 공개',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (150,'정현정','resault','resault@gmail.com','KT, 유선 통신 장애 나면 5G로 우회하는 기술 개발',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (134,'신지영','shzy232','shzy232@naver.com','무신사 티셔츠 특가 ''퀴즈''…정답 및 참여 방법은?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (140,'김형섭','hiosryk','hiosryk@naver.com','''롤토체스'' 전략적 팀 전투, 28일 한국 출시 오픈',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (141,'박광규','gwangq','pgg0406@naver.com','정부, 26일 ''서비스산업 혁신 전략'' 발표',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (145,'조윤영','mnmm97','claire97j@naver.com','[IS 인터뷰] ”하면 된다” 곱씹은 한선태, 역사적 1이닝 뒷이야기',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (146,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (147,'포식자영찬','yahoho','yahoho@gmail.com','스타크래프트 1.16.1 다운로드(립버전, 한글)',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (148,'박광규','gwangq','pgg0406@naver.com','정부, 26일 ''서비스산업 혁신 전략'' 발표 ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (149,'권범준입','hihihidf','qjawns0617@naver.com','몽쉘을 왜 몽쉘통통이라고 하죠?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (151,'eeee','admin','eeee@naver.com','이승윤 매니저 강현석 "채무관련 내용 사실…진심으로 죄송"[전문]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (152,'eeee','admin','eeee@naver.com','이승윤 매니저 강현석 "채무관련 내용 사실…진심으로 죄송"[전문]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (153,'황선혜','seon','seon@naver.com','제목',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (154,'황선혜','seon','seon@naver.com','제목',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (155,'조윤영','mnmm97','claire97j@naver.com','프리미어리그, ”박지성은 역대 최고의 아시아선수인가?”',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (156,'안병욱','calubang','calubang@gmail.com','스마트폰 싸게 사는 법 (구매 편, 완결) 3탄',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (157,'김형섭','hiosryk','hiosryk@naver.com','자바뉴스 JAVA Study: Evaluating ivWatch Technology in Pediatric IV Sites',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (158,'고세라','tpfk624','tpfk624@naver.com','이동욱 오늘 ‘검블유’ 특별출연… 임수정과 美친 케미 [공식입장]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (160,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (161,'eeee','admin','eeee@naver.com','123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (159,'고세라','tpfk624','tpfk624@naver.com','이동욱 오늘 ‘검블유’ 특별출연… 임수정과 美친 케미 [공식입장]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (162,'고세라','tpfk624','tpfk624@naver.com','이동욱 오늘 ‘검블유’ 특별출연… 임수정과 美친 케미 [공식입장]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (163,'조윤영','mnmm97','claire97j@naver.com','갸악',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (165,'안병욱','calubang','calubang@gmail.com','스마트폰 싸게 사는 법 (구매 편, 완결) 4탄',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (166,'포식자영찬','yahoho','yahoho@gmail.com','123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (167,'박광규','gwangq','pgg0406@naver.com','asdfasdfasdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (169,'조윤영','mnmm97','claire97j@naver.com','dasf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (170,'kitri','abcde','kitri@kitri.re.kr','SK하이닉스, 세계 최초 1테라비트 128단 4D 낸드 양산',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (171,'eeee','admin','eeee@naver.com','이승윤 매니저 강현석 "채무관련 내용 사실…진심으로 죄송"[전문]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (180,'eeee','admin','eeee@naver.com','이승윤 매니저 강현석 "채무관련 내용 사실…진심으로 죄송"[전문]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (181,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (182,'이세현','tpgus534','tpgus534@naver.com','123',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (185,'이세현','tpgus534','tpgus534@naver.com','똑똑 안녕하세요 방구입니다',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (187,'정현정','resault','resault@gmail.com','당신만 모르는,  애견 분양샵에서  알려주지 않는 진실 4',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (188,'권범준입','hihihidf','qjawns0617@naver.com','몽쉘 통통??',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (191,'권범준입','hihihidf','qjawns0617@naver.com','몽쉘???',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (194,'박미래','simb-7','alfo8360@naver.com','제목1',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (198,'권범준입','hihihidf','qjawns0617@naver.com','아아 들리십니까?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (200,'권범준입','hihihidf','qjawns0617@naver.com','나능야 만능맨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (202,'권범준입','hihihidf','qjawns0617@naver.com','나능야 만능맨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (204,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄹㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (206,'황선혜','seon','seon@naver.com','제목',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (207,'조윤영','mnmm97','claire97j@naver.com','정현정바보',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (210,'권범준입','hihihidf','qjawns0617@naver.com','아아 들리십니까?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (213,'황선혜','seon','seon@naver.com','제목',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (228,'이소담','dam','dam@naver.com','123123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (229,'안효인','java2','java2@naver.com','저 누구 시러요',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (230,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (231,'박미래','simb-7','alfo8360@naver.com','ㄹㄴㄹㄴㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (232,'조윤영','mnmm97','claire97j@naver.com','빠라밤 ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (233,'신지영','shzy232','shzy232@naver.com','라라라랄',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (234,'포식자영찬','yahoho','yahoho@gmail.com','ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (235,'황선혜','seon','seon@naver.com','제목이야',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (236,'이소담','dam','dam@naver.com','희희',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (192,'박미래','simb-7','alfo8360@naver.com','올라가라',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (193,'박미래','simb-7','alfo8360@naver.com','글목록확인',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (195,'박미래','simb-7','alfo8360@naver.com','올라',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (196,'박미래','simb-7','alfo8360@naver.com','올라',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (199,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (201,'eeee','admin','eeee@naver.com','이승윤 매니저 강현석 "채무관련 내용 사실…진심으로 죄송"[전문]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (203,'권범준입','hihihidf','qjawns0617@naver.com','나능야 만능맨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (205,'형태희','hth0893','hth0893@naver.com','띄어쓰기 되나 확인',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (208,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (209,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (212,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (214,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (237,'박광규','gwangq','pgg0406@naver.com','정부, 26일 ''서비스산업 혁신 전략'' 발표',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (238,'이세현','tpgus534','tpgus534@naver.com','세현',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (239,'박미래','simb-7','alfo8360@naver.com','ㄴㅇㄹㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (240,'이세현','tpgus534','tpgus534@naver.com','123',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (177,'조윤영','mnmm97','claire97j@naver.com','aa',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (179,'eeee','admin','eeee@naver.com','이승윤 매니저 강현석 "채무관련 내용 사실…진심으로 죄송"[전문]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (183,'형태희','hth0893','hth0893@naver.com','에러테스트',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (184,'안병욱','calubang','calubang@gmail.com','스마트폰 싸게 사는 법 (구매 편, 완결) 6탄',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (186,'권범준입','hihihidf','qjawns0617@naver.com','몽쉘을 왜 몽쉘통통이라고 하죠?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (190,'정현정','resault','resault@gmail.com','이통3사 5G 스마트폰 공시지원금 잇단 하향…출혈경쟁 완화',0,to_date('19/06/26','RR/MM/DD'),13);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (216,'형태희','hth0893','hth0893@naver.com','ㅁㄴㅇㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (215,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (217,'박광규','gwangq','pgg0406@naver.com','정부, 26일 ''서비스산업 혁신 전략'' 발표 ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (245,'포식자영찬','yahoho','yahoho@gmail.com','test',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (221,'박광규','gwangq','pgg0406@naver.com','정부, 26일 ''서비스산업 혁신 전략'' 발표',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (222,'박광규','gwangq','pgg0406@naver.com','정부, 26일 ''서비스산업 혁신 전략'' 발표',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (223,'박광규','gwangq','pgg0406@naver.com','정부, 26일 ''서비스산업 혁신 전략'' 발표',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (227,'이세현','tpgus534','tpgus534@naver.com','핳ㅎ',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (243,'박광규','gwangq','pgg0406@naver.com','정부, 26일 ''서비스산업 혁신 전략'' 발표',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (244,'이세현','tpgus534','tpgus534@naver.com','꺄꺅',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (246,'안효인','java2','java2@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (174,'eeee','admin','eeee@naver.com','이승윤 매니저 강현석 "채무관련 내용 사실…진심으로 죄송"[전문]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (175,'안효인','java2','java2@naver.com','''검블유'' 이동욱, 특별출연 예고…임수정과 마주친 후 "오랜만이야" [TV포커스]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (176,'안병욱','calubang','calubang@gmail.com','스마트폰 싸게 사는 법 (구매 편, 완결) 5탄',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (178,'kitri','abcde','kitri@kitri.re.kr','美 금지명령에도…화웨이에 반도체 계속 판매',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (275,'김형섭','hiosryk','hiosryk@naver.com','글쓰기등록확인',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (304,'형태희','hth0893','hth0893@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (253,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (254,'조윤영','mnmm97','claire97j@naver.com','test',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (255,'안효인','java2','java2@naver.com','df',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (257,'안효인','java2','java2@naver.com','adsf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (261,'안효인','java2','java2@naver.com','asdfasdfasd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (262,'고세라','tpfk624','tpfk624@naver.com','안녕 난 제목이야',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (263,'박광규','gwangq','pgg0406@naver.com','우하하하하하하ㅏ하학',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (264,'황선혜','seon','seon@naver.com','ㄴㅇㅁㄻㄴㅇㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (265,'박미래','simb-7','alfo8360@naver.com','나오라ㄹ1',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (266,'조윤영','mnmm97','claire97j@naver.com','니나노',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (267,'kitri','abcde','kitri@kitri.re.kr','아야어요',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (268,'신지영','shzy232','shzy232@naver.com','되나',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (269,'eeee','admin','eeee@naver.com','1234',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (270,'조윤영','mnmm97','claire97j@naver.com','낄꺌꺌',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (271,'고세라','tpfk624','tpfk624@naver.com','이동욱 오늘 ‘검블유’ 특별출연… 임수정과 美친 케미 [공식입장]sd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (272,'박미래','simb-7','alfo8360@naver.com','또나와라',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (273,'박광규','gwangq','pgg0406@naver.com','공수래공수거',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (274,'kitri','abcde','kitri@kitri.re.kr','234',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (283,'박미래','simb-7','alfo8360@naver.com','오오오오오오오!!!',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (284,'kitri','abcde','kitri@kitri.re.kr','히히히히',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (285,'eeee','admin','eeee@naver.com','1234',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (286,'이세현','tpgus534','tpgus534@naver.com','느낌있는 느낌으로 ',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (287,'eeee','admin','eeee@naver.com','12345',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (250,'지금','now1234','now1234@naver.com','김 나 박 이 김 나 박 이김 나 박 이',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (251,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (252,'고세라','tpfk624','tpfk624@naver.com',' "180도 다르다"…''검블유→비스트'' 포텐 터진 존재감',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (256,'안효인','java2','java2@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (258,'안효인','java2','java2@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (259,'고세라','tpfk624','tpfk624@naver.com','이동욱 오늘 ‘검블유’ 특별출연… 임수정과 美친 케미 [공식입장]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (260,'안효인','java2','java2@naver.com','asdfasd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (276,'신지영','shzy232','shzy232@naver.com','한번더',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (277,'정현정','resault','resault@gmail.com','ㄴㄴㄴㄴ',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (278,'이소담','dam','dam@naver.com','돌돌도돌돌돌',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (279,'권범준입','hihihidf','qjawns0617@naver.com','asd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (280,'정현정','resault','resault@gmail.com','ㄷㄷㄷㄷ',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (281,'권범준입','hihihidf','qjawns0617@naver.com','111',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (282,'지금','now1234','now1234@naver.com','”모네→애프터문” ''슈퍼밴드'' 6팀, 결선 진출 프로필 공개',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (288,'박광규','gwangq','pgg0406@naver.com','정부, 26일 ''서비스산업 혁신 전략'' 발표',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (289,'포식자영찬','yahoho','yahoho@gmail.com','123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (290,'포식자영찬','yahoho','yahoho@gmail.com','123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (291,'eeee','admin','eeee@naver.com','제목입니다!!!!!!!!!!',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (292,'포식자영찬','yahoho','yahoho@gmail.com','dddddddddd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (293,'지금','now1234','now1234@naver.com','”모네→애프터문” ''슈퍼밴드'' 6팀, 결선 진출 프로필 공개',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (294,'지금','now1234','now1234@naver.com','”모네→애프터문” ''슈퍼밴드'' 6팀, 결선 진출 프로필 공개',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (295,'김형섭','hiosryk','hiosryk@naver.com','글쓰기등록확인',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (296,'형태희','hth0893','hth0893@naver.com','sADfsdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (297,'지금','now1234','now1234@naver.com','”모네→애프터문” ''슈퍼밴드'' 6팀, 결선 진출 프로필 공개',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (298,'지금','now1234','now1234@naver.com','”모네→애프터문” ''슈퍼밴드'' 6팀, 결선 진출 프로필 공개',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (299,'이소담','dam','dam@naver.com','ㅁㄴㅇㄻㄴㄹ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (300,'지금','now1234','now1234@naver.com','”모네→애프터문” ''슈퍼밴드'' 6팀, 결선 진출 프로필 공개',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (301,'이소담','dam','dam@naver.com','ㄴㅁㄴㅇㅁ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (302,'이소담','dam','dam@naver.com','휴ㅜㅠㅜㅠㅍ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (303,'황선혜','seon','seon@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (305,'황선혜','seon','seon@naver.com','sadfasdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (306,'황선혜','seon','seon@naver.com','asdfasdfsadf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (307,'형태희','hth0893','hth0893@naver.com','asdasd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (308,'형태희','hth0893','hth0893@naver.com','asdfasdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (309,'정현정','resault','resault@gmail.com','1111',0,to_date('19/06/26','RR/MM/DD'),9);
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "KITRI"."PK_BOARD" ON "KITRI"."BOARD" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "KITRI"."BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KITRI"."BOARD" MODIFY ("SEQ" NOT NULL ENABLE);
 
  ALTER TABLE "KITRI"."BOARD" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "KITRI"."BOARD" MODIFY ("SUBJECT" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "KITRI"."BOARD" ADD CONSTRAINT "FK_BOARD_LIST_TO_BOARD" FOREIGN KEY ("BCODE")
	  REFERENCES "KITRI"."BOARD_LIST" ("BCODE") ENABLE;
