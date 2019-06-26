--------------------------------------------------------
--  ������ ������ - ������-6��-26-2019   
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
 

   COMMENT ON COLUMN "KITRI"."BOARD"."SEQ" IS '�۹�ȣ';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."NAME" IS '�ۼ����̸�';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."ID" IS '�ۼ��ھ��̵�';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."EMAIL" IS '�ۼ����̸���';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."SUBJECT" IS '����';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."CONTENT" IS '����';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."HIT" IS '��ȸ��';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."LOGTIME" IS '�ۼ�����';
 
   COMMENT ON COLUMN "KITRI"."BOARD"."BCODE" IS '�Խ��ǹ�ȣ';
 
   COMMENT ON TABLE "KITRI"."BOARD"  IS '�Խ���';
REM INSERTING into KITRI.BOARD
SET DEFINE OFF;
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (65,'������','resault','resault@gmail.com','�ι�° �Խñ��Դϴ�.',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (74,'������','hiosryk','hiosryk@naver.com','�ȳ������̾�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (75,'�ڱ���','gwangq','pgg0406@naver.com','������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (98,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (91,'������','hth0893','hth0893@naver.com','��������������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (95,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (101,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (35,'��ȿ��','java2','java2@naver.com','i����e���� i����e����i����i����',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (47,'����','tpfk624','tpfk624@naver.com','i����e���� e���� i����e����i����i����',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (53,'��ȿ��','java2','java2@naver.com','i����e����i����e����',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (56,'������','resault','resault@gmail.com','i����e����i�ע� e����i����e����i����e����e����.',0,to_date('19/06/24','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (57,'�����ڿ���','yahoho','yahoho@gmail.com','i����e����i����i����i����? i����i����i����i����',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (64,'��ȿ��','java2','java2@naver.com','�ѱ�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (71,'�Ⱥ���','calubang','calubang@gmail.com','������ �ѱ����� �ȵȴٴ���',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (76,'�����ڿ���','yahoho','yahoho@gmail.com','�غ���Ƽ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (77,'����','tpfk624','tpfk624@naver.com','�ȳ� �� �����̾�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (78,'Ȳ����','seon','seon@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (80,'������','shzy232','shzy232@naver.com','111',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (82,'�����ڿ���','yahoho','yahoho@gmail.com','���̵� 6���� ����ͳ׿�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (85,'�����ڿ���','yahoho','yahoho@gmail.com','���̵� �ƴϰ� �̸��̾���.',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (104,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (105,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (113,'�����ڿ���','yahoho','yahoho@gmail.com','�����.....',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (120,'�ǹ�����','hihihidf','qjawns0617@naver.com','������������������������������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (121,'�ǹ�����','hihihidf','qjawns0617@naver.com','������������������������������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (100,'eeee','admin','eeee@naver.com','12321',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (96,'�����ڿ���','yahoho','yahoho@gmail.com','���꽺���� ã��������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (99,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (106,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (107,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (117,'������','mnmm97','claire97j@naver.com','��������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (122,'�ڱ���','gwangq','pgg0406@naver.com','���� �λ��Դϴ�.',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (128,'�ǹ�����','hihihidf','qjawns0617@naver.com','������������������������������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (173,'�ڱ���','gwangq','pgg0406@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (197,'�ڹ̷�','simb-7','alfo8360@naver.com','����1',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (34,'��ȿ��','java2','java2@naver.com','i����e����i����i����i���� i����e����i����e����e����.',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (248,'������','resault','resault@gmail.com','ù��° �Խñ��Դϴ�.',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (43,'��ȿ��','java2','java2@naver.com','i����e����i����e����e����.',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (46,'������','shzy232','shzy232@naver.com','i����e����i����e����i����e����',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (50,'�����ڿ���','yahoho','yahoho@gmail.com','dddddddddd',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (54,'kitri','abcde','kitri@kitri.re.kr','a����a����a����a����i����a����a����',0,to_date('19/06/24','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (102,'eeee','admin','eeee@naver.com','12321���ͤӤ����ʤ��Ӥ������Ӥ��Ӥ������Ӥ���',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (103,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (115,'����','now1234','now1234@naver.com','�� �� �� �� �� ��',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (116,'����','now1234','now1234@naver.com','�� �� �� �� �� ��',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (118,'������','mnmm97','claire97j@naver.com','��������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (130,'������','hth0893','hth0893@naver.com','��������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (132,'��ȿ��','java2','java2@naver.com','''�˺���'' �̵���, Ư���⿬ �����Ӽ����� ����ģ �� "�������̾�" [TV��Ŀ��]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (211,'������','mnmm97','claire97j@naver.com','������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (241,'��ȿ��','java2','java2@naver.com','dsf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (242,'�̼���','tpgus534','tpgus534@naver.com','123',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (249,'������','mnmm97','claire97j@naver.com','234',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (133,'������','mnmm97','claire97j@naver.com','[IS ���ͺ�] ���ϸ� �ȴ١� ������ �Ѽ���, ������ 1�̴� ���̾߱�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (144,'����','now1234','now1234@naver.com','����ס�����͹��� ''���۹��'' 6��, �ἱ ���� ������ ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (172,'����','tpfk624','tpfk624@naver.com','�̵��� ���� ���˺����� Ư���⿬�� �Ӽ����� ڸģ �ɹ� [��������]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (218,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (220,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (224,'������','hth0893','hth0893@naver.com','�����������Ӥ�������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (135,'kitri','abcde','kitri@kitri.re.kr','Ʈ������ �� �ߴ� �Ŀ� ���Ͻ� ��ȭ�� ���δ��� �ʰڴ١�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (136,'eeee','admin','eeee@naver.com','�̽��� �Ŵ��� ������ "ä������ ���� ��ǡ��������� �˼�"[����]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (137,'Ȳ����','seon','seon@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (139,'����','now1234','now1234@naver.com','����ס�����͹��� ''���۹��'' 6��, �ἱ ���� ������ ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (142,'�Ⱥ���','calubang','calubang@gmail.com','����Ʈ�� �ΰ� ��� �� (���� ��, �ϰ�)',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (143,'����','now1234','now1234@naver.com','����ס�����͹��� ''���۹��'' 6��, �ἱ ���� ������ ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (150,'������','resault','resault@gmail.com','KT, ���� ��� ��� ���� 5G�� ��ȸ�ϴ� ��� ����',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (134,'������','shzy232','shzy232@naver.com','���Ż� Ƽ���� Ư�� ''����''������ �� ���� �����?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (140,'������','hiosryk','hiosryk@naver.com','''����ü��'' ������ �� ����, 28�� �ѱ� ��� ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (141,'�ڱ���','gwangq','pgg0406@naver.com','����, 26�� ''���񽺻�� ���� ����'' ��ǥ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (145,'������','mnmm97','claire97j@naver.com','[IS ���ͺ�] ���ϸ� �ȴ١� ������ �Ѽ���, ������ 1�̴� ���̾߱�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (146,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (147,'�����ڿ���','yahoho','yahoho@gmail.com','��Ÿũ����Ʈ 1.16.1 �ٿ�ε�(������, �ѱ�)',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (148,'�ڱ���','gwangq','pgg0406@naver.com','����, 26�� ''���񽺻�� ���� ����'' ��ǥ ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (149,'�ǹ�����','hihihidf','qjawns0617@naver.com','������ �� ���������̶�� ����?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (151,'eeee','admin','eeee@naver.com','�̽��� �Ŵ��� ������ "ä������ ���� ��ǡ��������� �˼�"[����]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (152,'eeee','admin','eeee@naver.com','�̽��� �Ŵ��� ������ "ä������ ���� ��ǡ��������� �˼�"[����]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (153,'Ȳ����','seon','seon@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (154,'Ȳ����','seon','seon@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (155,'������','mnmm97','claire97j@naver.com','�����̾��, ���������� ���� �ְ��� �ƽþƼ����ΰ�?��',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (156,'�Ⱥ���','calubang','calubang@gmail.com','����Ʈ�� �ΰ� ��� �� (���� ��, �ϰ�) 3ź',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (157,'������','hiosryk','hiosryk@naver.com','�ڹٴ��� JAVA Study: Evaluating ivWatch Technology in Pediatric IV Sites',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (158,'����','tpfk624','tpfk624@naver.com','�̵��� ���� ���˺����� Ư���⿬�� �Ӽ����� ڸģ �ɹ� [��������]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (160,'������','hth0893','hth0893@naver.com','��������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (161,'eeee','admin','eeee@naver.com','123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (159,'����','tpfk624','tpfk624@naver.com','�̵��� ���� ���˺����� Ư���⿬�� �Ӽ����� ڸģ �ɹ� [��������]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (162,'����','tpfk624','tpfk624@naver.com','�̵��� ���� ���˺����� Ư���⿬�� �Ӽ����� ڸģ �ɹ� [��������]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (163,'������','mnmm97','claire97j@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (165,'�Ⱥ���','calubang','calubang@gmail.com','����Ʈ�� �ΰ� ��� �� (���� ��, �ϰ�) 4ź',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (166,'�����ڿ���','yahoho','yahoho@gmail.com','123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (167,'�ڱ���','gwangq','pgg0406@naver.com','asdfasdfasdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (169,'������','mnmm97','claire97j@naver.com','dasf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (170,'kitri','abcde','kitri@kitri.re.kr','SK���̴н�, ���� ���� 1�׶��Ʈ 128�� 4D ���� ���',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (171,'eeee','admin','eeee@naver.com','�̽��� �Ŵ��� ������ "ä������ ���� ��ǡ��������� �˼�"[����]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (180,'eeee','admin','eeee@naver.com','�̽��� �Ŵ��� ������ "ä������ ���� ��ǡ��������� �˼�"[����]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (181,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (182,'�̼���','tpgus534','tpgus534@naver.com','123',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (185,'�̼���','tpgus534','tpgus534@naver.com','�ȶ� �ȳ��ϼ��� �汸�Դϴ�',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (187,'������','resault','resault@gmail.com','��Ÿ� �𸣴�,  �ְ� �о缥����  �˷����� �ʴ� ���� 4',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (188,'�ǹ�����','hihihidf','qjawns0617@naver.com','���� ����??',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (191,'�ǹ�����','hihihidf','qjawns0617@naver.com','����???',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (194,'�ڹ̷�','simb-7','alfo8360@naver.com','����1',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (198,'�ǹ�����','hihihidf','qjawns0617@naver.com','�ƾ� �鸮�ʴϱ�?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (200,'�ǹ�����','hihihidf','qjawns0617@naver.com','���ɾ� ���ɸ�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (202,'�ǹ�����','hihihidf','qjawns0617@naver.com','���ɾ� ���ɸ�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (204,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (206,'Ȳ����','seon','seon@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (207,'������','mnmm97','claire97j@naver.com','�������ٺ�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (210,'�ǹ�����','hihihidf','qjawns0617@naver.com','�ƾ� �鸮�ʴϱ�?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (213,'Ȳ����','seon','seon@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (228,'�̼Ҵ�','dam','dam@naver.com','123123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (229,'��ȿ��','java2','java2@naver.com','�� ���� �÷���',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (230,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (231,'�ڹ̷�','simb-7','alfo8360@naver.com','����������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (232,'������','mnmm97','claire97j@naver.com','����� ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (233,'������','shzy232','shzy232@naver.com','�����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (234,'�����ڿ���','yahoho','yahoho@gmail.com','����������������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (235,'Ȳ����','seon','seon@naver.com','�����̾�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (236,'�̼Ҵ�','dam','dam@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (192,'�ڹ̷�','simb-7','alfo8360@naver.com','�ö󰡶�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (193,'�ڹ̷�','simb-7','alfo8360@naver.com','�۸��Ȯ��',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (195,'�ڹ̷�','simb-7','alfo8360@naver.com','�ö�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (196,'�ڹ̷�','simb-7','alfo8360@naver.com','�ö�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (199,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (201,'eeee','admin','eeee@naver.com','�̽��� �Ŵ��� ������ "ä������ ���� ��ǡ��������� �˼�"[����]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (203,'�ǹ�����','hihihidf','qjawns0617@naver.com','���ɾ� ���ɸ�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (205,'������','hth0893','hth0893@naver.com','���� �ǳ� Ȯ��',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (208,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (209,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (212,'������','hth0893','hth0893@naver.com','��������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (214,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (237,'�ڱ���','gwangq','pgg0406@naver.com','����, 26�� ''���񽺻�� ���� ����'' ��ǥ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (238,'�̼���','tpgus534','tpgus534@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (239,'�ڹ̷�','simb-7','alfo8360@naver.com','������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (240,'�̼���','tpgus534','tpgus534@naver.com','123',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (177,'������','mnmm97','claire97j@naver.com','aa',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (179,'eeee','admin','eeee@naver.com','�̽��� �Ŵ��� ������ "ä������ ���� ��ǡ��������� �˼�"[����]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (183,'������','hth0893','hth0893@naver.com','�����׽�Ʈ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (184,'�Ⱥ���','calubang','calubang@gmail.com','����Ʈ�� �ΰ� ��� �� (���� ��, �ϰ�) 6ź',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (186,'�ǹ�����','hihihidf','qjawns0617@naver.com','������ �� ���������̶�� ����?',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (190,'������','resault','resault@gmail.com','����3�� 5G ����Ʈ�� ���������� �մ� ���⡦�������� ��ȭ',0,to_date('19/06/26','RR/MM/DD'),13);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (216,'������','hth0893','hth0893@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (215,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (217,'�ڱ���','gwangq','pgg0406@naver.com','����, 26�� ''���񽺻�� ���� ����'' ��ǥ ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (245,'�����ڿ���','yahoho','yahoho@gmail.com','test',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (221,'�ڱ���','gwangq','pgg0406@naver.com','����, 26�� ''���񽺻�� ���� ����'' ��ǥ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (222,'�ڱ���','gwangq','pgg0406@naver.com','����, 26�� ''���񽺻�� ���� ����'' ��ǥ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (223,'�ڱ���','gwangq','pgg0406@naver.com','����, 26�� ''���񽺻�� ���� ����'' ��ǥ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (227,'�̼���','tpgus534','tpgus534@naver.com','�K��',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (243,'�ڱ���','gwangq','pgg0406@naver.com','����, 26�� ''���񽺻�� ���� ����'' ��ǥ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (244,'�̼���','tpgus534','tpgus534@naver.com','����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (246,'��ȿ��','java2','java2@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (174,'eeee','admin','eeee@naver.com','�̽��� �Ŵ��� ������ "ä������ ���� ��ǡ��������� �˼�"[����]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (175,'��ȿ��','java2','java2@naver.com','''�˺���'' �̵���, Ư���⿬ �����Ӽ����� ����ģ �� "�������̾�" [TV��Ŀ��]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (176,'�Ⱥ���','calubang','calubang@gmail.com','����Ʈ�� �ΰ� ��� �� (���� ��, �ϰ�) 5ź',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (178,'kitri','abcde','kitri@kitri.re.kr','ڸ ������ɿ�����ȭ���̿� �ݵ�ü ��� �Ǹ�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (275,'������','hiosryk','hiosryk@naver.com','�۾�����Ȯ��',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (304,'������','hth0893','hth0893@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (253,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (254,'������','mnmm97','claire97j@naver.com','test',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (255,'��ȿ��','java2','java2@naver.com','df',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (257,'��ȿ��','java2','java2@naver.com','adsf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (261,'��ȿ��','java2','java2@naver.com','asdfasdfasd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (262,'����','tpfk624','tpfk624@naver.com','�ȳ� �� �����̾�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (263,'�ڱ���','gwangq','pgg0406@naver.com','�������������Ϥ�����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (264,'Ȳ����','seon','seon@naver.com','��������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (265,'�ڹ̷�','simb-7','alfo8360@naver.com','������1',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (266,'������','mnmm97','claire97j@naver.com','�ϳ���',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (267,'kitri','abcde','kitri@kitri.re.kr','�ƾ߾��',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (268,'������','shzy232','shzy232@naver.com','�ǳ�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (269,'eeee','admin','eeee@naver.com','1234',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (270,'������','mnmm97','claire97j@naver.com','������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (271,'����','tpfk624','tpfk624@naver.com','�̵��� ���� ���˺����� Ư���⿬�� �Ӽ����� ڸģ �ɹ� [��������]sd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (272,'�ڹ̷�','simb-7','alfo8360@naver.com','�ǳ��Ͷ�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (273,'�ڱ���','gwangq','pgg0406@naver.com','������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (274,'kitri','abcde','kitri@kitri.re.kr','234',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (283,'�ڹ̷�','simb-7','alfo8360@naver.com','��������������!!!',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (284,'kitri','abcde','kitri@kitri.re.kr','��������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (285,'eeee','admin','eeee@naver.com','1234',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (286,'�̼���','tpgus534','tpgus534@naver.com','�����ִ� �������� ',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (287,'eeee','admin','eeee@naver.com','12345',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (250,'����','now1234','now1234@naver.com','�� �� �� �� �� �� �� �̱� �� �� ��',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (251,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (252,'����','tpfk624','tpfk624@naver.com',' "180�� �ٸ���"��''�˺������Ʈ'' ���� ���� ���簨',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (256,'��ȿ��','java2','java2@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (258,'��ȿ��','java2','java2@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (259,'����','tpfk624','tpfk624@naver.com','�̵��� ���� ���˺����� Ư���⿬�� �Ӽ����� ڸģ �ɹ� [��������]',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (260,'��ȿ��','java2','java2@naver.com','asdfasd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (276,'������','shzy232','shzy232@naver.com','�ѹ���',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (277,'������','resault','resault@gmail.com','��������',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (278,'�̼Ҵ�','dam','dam@naver.com','������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (279,'�ǹ�����','hihihidf','qjawns0617@naver.com','asd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (280,'������','resault','resault@gmail.com','��������',0,to_date('19/06/26','RR/MM/DD'),9);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (281,'�ǹ�����','hihihidf','qjawns0617@naver.com','111',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (282,'����','now1234','now1234@naver.com','����ס�����͹��� ''���۹��'' 6��, �ἱ ���� ������ ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (288,'�ڱ���','gwangq','pgg0406@naver.com','����, 26�� ''���񽺻�� ���� ����'' ��ǥ',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (289,'�����ڿ���','yahoho','yahoho@gmail.com','123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (290,'�����ڿ���','yahoho','yahoho@gmail.com','123',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (291,'eeee','admin','eeee@naver.com','�����Դϴ�!!!!!!!!!!',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (292,'�����ڿ���','yahoho','yahoho@gmail.com','dddddddddd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (293,'����','now1234','now1234@naver.com','����ס�����͹��� ''���۹��'' 6��, �ἱ ���� ������ ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (294,'����','now1234','now1234@naver.com','����ס�����͹��� ''���۹��'' 6��, �ἱ ���� ������ ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (295,'������','hiosryk','hiosryk@naver.com','�۾�����Ȯ��',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (296,'������','hth0893','hth0893@naver.com','sADfsdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (297,'����','now1234','now1234@naver.com','����ס�����͹��� ''���۹��'' 6��, �ἱ ���� ������ ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (298,'����','now1234','now1234@naver.com','����ס�����͹��� ''���۹��'' 6��, �ἱ ���� ������ ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (299,'�̼Ҵ�','dam','dam@naver.com','������������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (300,'����','now1234','now1234@naver.com','����ס�����͹��� ''���۹��'' 6��, �ἱ ���� ������ ����',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (301,'�̼Ҵ�','dam','dam@naver.com','����������',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (302,'�̼Ҵ�','dam','dam@naver.com','�ޤ̤Ф̤Ф�',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (303,'Ȳ����','seon','seon@naver.com','asdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (305,'Ȳ����','seon','seon@naver.com','sadfasdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (306,'Ȳ����','seon','seon@naver.com','asdfasdfsadf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (307,'������','hth0893','hth0893@naver.com','asdasd',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (308,'������','hth0893','hth0893@naver.com','asdfasdf',0,to_date('19/06/26','RR/MM/DD'),3);
Insert into KITRI.BOARD (SEQ,NAME,ID,EMAIL,SUBJECT,HIT,LOGTIME,BCODE) values (309,'������','resault','resault@gmail.com','1111',0,to_date('19/06/26','RR/MM/DD'),9);
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
