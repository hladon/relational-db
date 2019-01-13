CREATE TABLE ORDER(
ID NUMBER CHECK (ID<=10000),
USER_ID NUMBER,
CONSTRAINT USER_CN PRIMARY KEY(USER_ID),
ROOM_ID NUMBER,
CONSTRAINT ROOM_CN PRIMARY KEY(ROOM_ID),
DATE_FROM TIMESTAMP,
DATE_TO TIMESTAMP,
MONEY_PAID DECIMAL(18,2)

);