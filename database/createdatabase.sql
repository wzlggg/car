DROP DATABASE IF EXISTS YKAT;
CREATE DATABASE YKAT DEFAULT CHARACTER SET UTF8;
USE YKAT;

CREATE TABLE  ykat_store_user  (
   id  int PRIMARY KEY,
   user_name  varchar(50) NOT NULL,
   phone  varchar(11),
   password  varchar(50),
   sex  int(1),
   head_url  varchar(200),
   is_del  int(11),
   create_time  date,
   update_time  date,
   spare_phone  varchar(20)
);

insert into YKAT_STORE_USER (ID, USER_NAME, PHONE, PASSWORD, SEX, HEAD_URL, IS_DEL, CREATE_TIME, UPDATE_TIME, SPARE_PHONE)
values (1, '18251893790', '18251893790', '111', 1, null, 1, '2017-08-22','2017-08-22', '18251893799');

COMMIT;

CREATE TABLE  ykat_store  (
   id int PRIMARY KEY,
   store_name  varchar(50)  ,
   store_address  varchar(200)  ,
   store_longitude  varchar(20)  ,
   store_latitude  varchar(20)  ,
   store_phone  varchar(11) NOT NULL,
   store_description  varchar(500)  ,
   store_owner_name  varchar(10)  ,
   pt_user_id  int  ,
   store_secondtel  varchar(11)  ,
   id_card  varchar(18)  ,
   business_license_no  varchar(50)  ,
   business_license_img  varchar(100)  ,
   store_img  varchar(200)  ,
   id_card_imag  varchar(200)  ,
   deposit  double(10,2)  ,
   pre_deposit  double(10,2)  ,
   deposit_status  int(1)   ,
   create_time  date NOT NULL,
   city  varchar(50)  ,
   update_time  date NOT NULL,
   is_verify  int(1)    ,
   store_describe  blob,
   not_check_reason  varchar(50)    ,
   is_del  int(1)     ,
   score  double(3,1)    ,
   service_type int(1)
);

insert into YKAT_STORE (ID, STORE_NAME, STORE_ADDRESS, STORE_LONGITUDE, STORE_LATITUDE, STORE_PHONE, STORE_DESCRIPTION, STORE_OWNER_NAME, PT_USER_ID, STORE_SECONDTEL, ID_CARD, BUSINESS_LICENSE_NO, BUSINESS_LICENSE_IMG, STORE_IMG, ID_CARD_IMAG, DEPOSIT, PRE_DEPOSIT, DEPOSIT_STATUS, CREATE_TIME, CITY, UPDATE_TIME, IS_VERIFY, STORE_DESCRIBE, NOT_CHECK_REASON, IS_DEL, SCORE, SERVICE_TYPE)
values (1, 'JieDaExpress', 'NanJing City PuKou District 3', '120.02', '32.16', '025-8866775', 'JieDaExpress,JieDaExpress', 'Jason', 1, '025-8899667', '320124198806534452', '11122990088', null, null, null, 5000.00, 5000.00, 1, '2017-08-21', 'NanJing', '2017-08-22', 2, null, null, 1, 80.0, 1);

COMMIT;