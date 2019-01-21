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

insert into salesman values (3002,'Nick Rimando', 'New York',5001);
insert into salesman values (3005,'Graham Zusi', 'California',5002);
insert into salesman values (3001,'Brad Guzan', 'London',5005);
insert into salesman values (3004,'Fabian Johns', 'Paris',5006);
insert into salesman values (3009,'Geoff Camero', 'Berlin',5003);
insert into salesman values (3008,'Julian Green', 'London',5002);
insert into salesman values (3007,'Brad Davis', 'New York',5001);
insert into salesman values (3003,'Jozy Altido', 'Moscow',5007);
insert into salesman values (3010,'Misha Test', 'Kiev',null);

CREATE TABLE DEAL(
ID NUMBER PRIMARY KEY(ID),
CUSTOMER_ID NUMBER,
CONSTRAINT CUSTOMER_FK FOREIGN KEY(CUSTOMER_ID)
REFERENCES CUSTOMER (ID),
AMOUNT INT NOT NULL,
DATE_ TIMESTAMP NOT NULL
);

