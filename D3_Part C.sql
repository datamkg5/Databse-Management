CREATE USER 'James102'@'localhost' 
IDENTIFIED BY 'Awefrefv10%';

GRANT SELECT ON TRANSACTIONS TO 'James102'@'localhost';

CREATE USER 'Philip142'@'localhost' 
IDENTIFIED BY 'dcwcEC30#%';

GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP 
ON USER_REGISTER.* 
TO 'Philip142'@'localhost';

CREATE VIEW Settlement_Status AS 
SELECT n.AccountID, a.Transaction_type, a.Settlement_Status FROM DAILY_BALANCE n 
JOIN TRANSACTIONS a ON a.AccountID=n.AccountID;

Select * From Settlement_Status;

GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP 
ON Settlement_Status
TO 'Philip142'@'localhost';

CREATE VIEW Acc_Balance AS 
SELECT n.USER_ID, a.AccountID, a.Acc_Balance FROM ACCOUNT n 
JOIN ACCOUNT a ON a.AccountID=n.AccountID;

SELECT * FROM Acc_Balance;

SHOW GRANTS FOR'James102'@'localhost';

SHOW GRANTS FOR'Philip142'@'localhost';

CREATE USER 'ray40'@'%' IDENTIFIED BY 'PASSWORD';
GRANT ALL ON Project_DBMS TO 'ray40'@'%' WITH GRANT OPTION;

SHOW GRANTS FOR 'ray40'@'localhost';

