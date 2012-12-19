--DROP TABLE SEQUENCE IF EXISTS
--DROP TABLE AMETPIIRIPUNKTIS IF EXISTS
--DROP TABLE PIIRIVALVURPIIRIPUNKTIS IF EXISTS
--DROP TABLE PIIRIVALVUR IF EXISTS
--DROP TABLE PIIRIPUNKT IF EXISTS
--DROP TABLE AMET IF EXISTS

--ALTER TABLE AMETPIIRIPUNKTIS DROP CONSTRAINT FK_AMETPIIRIPUNKTIS_PIIRIPUNKT_ID 
--ALTER TABLE AMETPIIRIPUNKTIS DROP CONSTRAINT FK_AMETPIIRIPUNKTIS_AMET_ID
--ALTER TABLE PIIRIVALVURPIIRIPUNKTIS DROP CONSTRAINT FK_PIIRIVALVURPIIRIPUNKTIS_PIIRIVALVUR_ID

CREATE TABLE SEQUENCE(SEQ_NAME VARCHAR(50) NOT NULL PRIMARY KEY,SEQ_COUNT NUMERIC(38))

CREATE TABLE AMETPIIRIPUNKTIS(ID BIGINT NOT NULL PRIMARY KEY,ALATES TIMESTAMP,KOMMENTAAR VARCHAR(255),KUNI TIMESTAMP,VERSION INTEGER,AMET_ID BIGINT,PIIRIPUNKT_ID BIGINT, AVAJA VARCHAR(255), AVATUD TIMESTAMP, MUUTJA VARCHAR(255), MUUDETUD TIMESTAMP, SULGEJA VARCHAR(255), SULETUD TIMESTAMP )

CREATE TABLE PIIRIVALVURPIIRIPUNKTIS(ID BIGINT NOT NULL PRIMARY KEY,ALATES TIMESTAMP,KOMMENTAAR VARCHAR(255),KOORMUS REAL,KUNI TIMESTAMP,VERSION INTEGER,PIIRIVALVUR_ID BIGINT, PIIRIPUNKT_ID BIGINT, AVAJA VARCHAR(255), AVATUD TIMESTAMP, MUUTJA VARCHAR(255), MUUDETUD TIMESTAMP, SULGEJA VARCHAR(255), SULETUD TIMESTAMP )

CREATE TABLE PIIRIVALVUR(ID BIGINT NOT NULL PRIMARY KEY,AADRESS VARCHAR(255),EESNIMI VARCHAR(255),EMAIL VARCHAR(255),ISIKUKOOD VARCHAR(255),KOMMENTAAR VARCHAR(255),PEREKONNANIMI VARCHAR(255),SODURIKOOD VARCHAR(255),SUGU INTEGER,TELEFON VARCHAR(255),VERSION INTEGER, AVAJA VARCHAR(255), AVATUD TIMESTAMP, MUUTJA VARCHAR(255), MUUDETUD TIMESTAMP, SULGEJA VARCHAR(255), SULETUD TIMESTAMP )

CREATE TABLE PIIRIPUNKT(ID BIGINT NOT NULL PRIMARY KEY,GPSLAIUSKRAAD REAL,GPSPIKKUSKRAAD REAL,KOMMENTAAR VARCHAR(255),KOOD VARCHAR(255),KORGUSMEREPINNAST REAL,NIMETUS VARCHAR(255),VERSION INTEGER, AVAJA VARCHAR(255), AVATUD TIMESTAMP, MUUTJA VARCHAR(255), MUUDETUD TIMESTAMP, SULGEJA VARCHAR(255), SULETUD TIMESTAMP )

CREATE TABLE AMET(ID BIGINT NOT NULL PRIMARY KEY,ISCOKOOD VARCHAR(255),KOMMENTAAR VARCHAR(255),NIMETUS VARCHAR(255),VERSION INTEGER, AVAJA VARCHAR(255), AVATUD TIMESTAMP, MUUTJA VARCHAR(255), MUUDETUD TIMESTAMP, SULGEJA VARCHAR(255), SULETUD TIMESTAMP ) 

ALTER TABLE AMETPIIRIPUNKTIS ADD CONSTRAINT FK_AMETPIIRIPUNKTIS_PIIRIPUNKT_ID FOREIGN KEY(PIIRIPUNKT_ID) REFERENCES PIIRIPUNKT(ID)
ALTER TABLE AMETPIIRIPUNKTIS ADD CONSTRAINT FK_AMETPIIRIPUNKTIS_AMET_ID FOREIGN KEY(AMET_ID) REFERENCES AMET(ID)
ALTER TABLE PIIRIVALVURPIIRIPUNKTIS ADD CONSTRAINT FK_PIIRIVALVURPIIRIPUNKTIS_PIIRIVALVUR_ID FOREIGN KEY(PIIRIVALVUR_ID) REFERENCES PIIRIVALVUR(ID)
ALTER TABLE PIIRIVALVURPIIRIPUNKTIS ADD CONSTRAINT FK_PIIRIVALVURPIIRIPUNKTID_PIIRIPUNKT_ID FOREIGN KEY(PIIRIPUNKT_ID) REFERENCES PIIRIPUNKT(ID)

SET WRITE_DELAY 10
SET SCHEMA PUBLIC

INSERT INTO SEQUENCE VALUES('SEQ_GEN',50)
