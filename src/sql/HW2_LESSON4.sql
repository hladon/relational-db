CREATE TABLE HOTEL (
ID NUMBER CHECK (ID<=10000),
CONSTRAINT HOTEL_ID PRIMARY KEY(ID),
COUNTRY VARCHAR2(50) DEFAULT 'N/A',
CONSTRAINT COUNTRY_CN CHECK(COUNTRY!='Romania' AND COUNTRY!='Belgium' AND COUNTRY!='China' AND COUNTRY!='Ukraine'),
CITY VARCHAR2(50) NOT NULL,
STREET VARCHAR2(50)
);