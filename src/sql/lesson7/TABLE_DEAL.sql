create table salesman(
salesman_id number primary key,
name nvarchar2(50) not null,
city nvarchar2(50) not null,
commision number(*,2) default '0.1'
);

create table customer(
customer_id number primary key,
custname nvarchar2(50) not null,
city nvarchar2(50) not null,
salesman_id number,
constraint salesman_fk foreign key salesman_id references salesman(salesman_id)
);

insert into salesman values (5001,'James Hoog', 'New York',0.15);
insert into salesman values (5002,'Nail knite', 'Paris',0.13);
insert into salesman values (5005,'Pit Alex', 'London',0.11);
insert into salesman values (5006,'MC Lyon', 'Paris',0.14);
insert into salesman values (5003,'Lauson Hen', 'London',0.12);
insert into salesman values (5007,'Andrew Wise', 'Nikosia',0.29);
insert into salesman values (5008,'Some Salesman', 'Kiev',0.09);
insert into salesman values (5009,'Denis Kokorin', 'Moskow',0.1);

insert into CUSTOMER values (3002,'Nick Rimando', 'New York',5001);
insert into CUSTOMER values (3005,'Graham Zusi', 'California',5002);
insert into CUSTOMER values (3001,'Brad Guzan', 'London',5005);
insert into CUSTOMER values (3004,'Fabian Johns', 'Paris',5006);
insert into CUSTOMER values (3009,'Geoff Camero', 'Berlin',5003);
insert into CUSTOMER values (3008,'Julian Green', 'London',5002);
insert into CUSTOMER values (3007,'Brad Davis', 'New York',5001);
insert into CUSTOMER values (3003,'Jozy Altido', 'Moscow',5007);
insert into CUSTOMER values (3010,'Misha Test', 'Kiev',null);

insert into DEAL values (1001,3002, 10000,TO_DATE('2016/05/03', 'yyyy/mm/dd'));
insert into DEAL values (1002,3005, 20000,TO_DATE('2017/05/03', 'yyyy/mm/dd'));
insert into DEAL values (1003,3001, 30000,TO_DATE('2016/08/03', 'yyyy/mm/dd'));
insert into DEAL values (1004,3004, 50000,TO_DATE('2016/09/03', 'yyyy/mm/dd'));

CREATE TABLE DEAL(
ID NUMBER PRIMARY KEY(ID),
CUSTOMER_ID NUMBER,
CONSTRAINT CUSTOMER_FK FOREIGN KEY(CUSTOMER_ID)
REFERENCES CUSTOMER (CUSTOMER_ID),
AMOUNT INT NOT NULL,
DATE_ TIMESTAMP NOT NULL
);

SELECT SALESMAN.NAME,CUSTOMER.CUSTNAME FROM SALESMAN
LEFT JOIN  CUSTOMER ON CUSTOMER.SALESMAN_ID = SALESMAN.SALESMAN_ID;

SELECT SALESMAN.NAME,CUSTOMER.CUSTNAME,SALESMAN.CITY  FROM SALESMAN
JOIN  CUSTOMER ON CUSTOMER.CITY = SALESMAN.CITY;

SELECT SALESMAN.NAME,CUSTOMER.CUSTNAME,SALESMAN.CITY  FROM SALESMAN, CUSTOMER WHERE CUSTOMER.CITY = SALESMAN.CITY;

SELECT SALESMAN.NAME,SALESMAN.CITY, CUSTOMER.CUSTNAME, CUSTOMER.CITY  FROM SALESMAN
JOIN  CUSTOMER ON CUSTOMER.SALESMAN_ID = SALESMAN.SALESMAN_ID
JOIN DEAL ON CUSTOMER.CUSTOMER_ID=DEAL.CUSTOMER_ID AND DEAL.AMOUNT>10000;

SELECT CUSTOMER.CUSTNAME  FROM CUSTOMER
JOIN  DEAL ON CUSTOMER.CUSTOMER_ID=DEAL.CUSTOMER_ID AND
DATE_ BETWEEN TO_DATE('2017/01/01','yyyy/mm/dd') AND TO_DATE('2018/12/31','yyyy/mm/dd');

SELECT AMOUNT,SALESMAN.NAME  FROM DEAL
JOIN  CUSTOMER ON CUSTOMER.CUSTOMER_ID=DEAL.CUSTOMER_ID AND
AMOUNT=(SELECT MAX(AMOUNT) FROM DEAL ) AND
DATE_ BETWEEN TO_DATE('2017/08/01','yyyy/mm/dd') AND TO_DATE('2017/08/31','yyyy/mm/dd')
JOIN SALESMAN ON CUSTOMER.SALESMAN_ID = SALESMAN.SALESMAN_ID;