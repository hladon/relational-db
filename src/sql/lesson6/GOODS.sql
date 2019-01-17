CREATE TABLE PRODUCTS(
PRODUCT_ID NUMBER,
CONSTRAINT PRODUCT_ID PRIMARY KEY(PRODUCT_ID),
PRODUCT_NAME VARCHAR2(50),
SUPPLIER_ID NUMBER,
CONSTRAINT SUPPLIER_FK FOREIGN KEY(SUPPLIER_ID)
REFERENCES SUPPLIERS(SUPPLIER_ID),
CATEGORY_ID NUMBER,
CONSTRAINT CATEGORY_FK FOREIGN KEY(CATEGORY_ID)
REFERENCES CATEGORIES (CATEGORY_ID),
QUANTITY_PER_UNIT NUMBER,
UNIT_PRICE DECIMAL(6,2),
UNITS_IN_STOCK INT,
UNITS_ON_ORDER INT,
REORDER_LEVEL INT,
DISCONTINUED NUMBER(1,0)
);

CREATE TABLE SUPPLIERS(
SUPPLIER_ID NUMBER,
CONSTRAINT SUPPLIER_ID PRIMARY KEY(SUPPLIER_ID),
COMPANY_NAME VARCHAR2(50),
CONTACT_NAME VARCHAR2(50),
ADDRESS VARCHAR2(50),
CITY VARCHAR2(50),
REGION VARCHAR2(50),
POSTAL_CODE NUMBER,
COUNTRY VARCHAR2(50),
PHONE NUMBER,
FAX NUMBER,
HOME_PAGE
);

CREATE TABLE ORDERS(
ORDER_ID NUMBER,
CONSTRAINT ORDER_ID PRIMARY KEY(ORDER_ID),
CUSTOMER_ID NUMBER,
CONSTRAINT CUSTOMER_FK FOREIGN KEY(CUSTOMER_ID)
REFERENCE CUSTOMERS (CUSTOMER_ID),
EMPLOYEE_ID NUMBER,
CONSTRAINT EMPLOYEE_FK FOREIGN KEY(EMPLOYEE_ID)
REFERENCE CUSTOMERS (EMPLOYEE_ID),
ORDER_DATE TIMESTAMP,
REQUIRED_DATE TIMESTAMP,
SHIPPED_DATE TIMESTAMP,
SHIP_VIA NUMBER,
CONSTRAINT SHIP_VIA  FOREIGN KEY(EMPLOYEE_ID)
REFERENCE CUSTOMERS (EMPLOYEE_ID),
FREIGHT DECIMAL(6,2),
SHIP_NAME VARCHAR2(50),
SHIP_ADDRESS VARCHAR2(50),
SHIP_CITY VARCHAR2(50),
SHIP_REGION VARCHAR2(50),
SHIP_POSTAL_CODE NUMBER,
SHIP_COUNTRY VARCHAR2(50)
);

CREATE TABLE ORDER_DETAILS (
ORDER_ID NUMBER,
CONSTRAINT ORDER_ID PRIMARY KEY(ORDER_ID),
PRODUCT_ID NUMBER,
CONSTRAINT PRODUCT_FK FOREIGN KEY(PRODUCT_ID)
REFERENCES PRODUCTS (PRODUCT_ID),
UNITPRICE DECIMAL(6,2),
QUANTITY NUMBER,
DISCOUNT NUMBER
);

CREATE TABLE CATEGORIES (
CATEGORY_ID NUMBER,
CONSTRAINT CATEGORY_ID PRIMARY KEY(CATEGORY_ID),
CATEGORY_NAME VARCHAR2(50),
DESCRIPTION VARCHAR2(50),
PICTURE BLOB
);

CREATE TABLE CUSTOMERS(
CUSTOMER_ID NUMBER,
CONSTRAINT CUSTOMER_ID PRIMARY KEY (CUSTOMER_ID),
COMPANY_NAME VARCHAR2(50),
CONTACT_NAME VARCHAR2(50),
ADDRESS VARCHAR2(50),
CITY VARCHAR2(50),
REGION VARCHAR2(50),
POSTAL_CODE NUMBER,
COUNTRY VARCHAR2(50),
PHONE NUMBER,
FAX NUMBER
);

CREATE TABLE EMPLOYEES (
LAST_NAME VARCHAR2(50),
FIRST_NAME VARCHAR2(50),
TITLE VARCHAR2(50),
TITLE_OF_COURTESY VARCHAR2(50),
BIRTH_DATE TIMESTAMP,
HIRE_DATE TIMESTAMP,
ADDRESS VARCHAR2(50),
CITY VARCHAR2(50),
REGION VARCHAR2(50),
POSTAL_CODE NUMBER,
COUNTRY VARCHAR2(50),
HOME_PHONE NUMBER,
EXTENSION VARCHAR2(50),
PHOTO BLOB,
NOTES VARCHAR2(200),
REPORTS_TO VARCHAR2(50)
);

CREATE TABLE SHIPPERS (
SHIPPER_ID NUMBER,
CONSTRAINT SHIPPER_ID PRIMARY KEY (SHIPPER_ID),
COMPANY_NAME VARCHAR2(50),
PHONE NUMBER
);