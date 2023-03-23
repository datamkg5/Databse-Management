## Team 6
#Final Table Creation and Data Insertion

/***************User_info******************/

CREATE TABLE USER_INFO (
USER_ID INT NOT NULL,
Phone VARCHAR(20) NOT NULL,
EmailAddress varchar(50) NOT NULL,
Address varchar(50) NULL,
Mailing_Address varchar(50) NOT NULL,
SSN_NUM INT NOT NULL,
Marital_Status varchar(50) NOT NULL,
CONSTRAINT User_InfoPK PRIMARY KEY(USER_ID),
CONSTRAINT User_InfoAK1 UNIQUE(Phone),
CONSTRAINT User_InfoAK2 UNIQUE(SSN_NUM)
);

INSERT INTO USER_INFO VALUES(
		14622911, 6175841298, 'jasonboozo@gmail.com', '89 Ocean View Dr.', '547 Balling St. Apt 50', 79862415, 'Married');
INSERT INTO USER_INFO VALUES(
		28274103, 5142869588, 'chriswang@umb.edu', '680 Washington St.', '680 Washington St.', 555784125, 'Single');
INSERT INTO USER_INFO VALUES(
		18148266, 6179541001, 'randyorton@gmail.com', '133 Post Ave Apt 32', "110 Post Ave", 125499634, 'Single');
INSERT INTO USER_INFO VALUES(
		16605577, 6789397491, 'michellewu@gmail.com', '200 Merrimack St #4TH','200 Merrimack St #4TH', 514789241,'Married');
INSERT INTO USER_INFO VALUES(
		9488854, 7023955708, 'tiphlairxz@hotmauil.com', "864 Hixville Rd North Dartmouth", "864 Hixville Rd North Dartmouth", 155789418, 'Single');
INSERT INTO USER_INFO VALUES(
		47425455, 7742020953, 'sdad3wi@gmail.com', '725 Pleasant St #APT 505', '63 Crapo St, New Bedford', 548123698, 'Married');
INSERT INTO USER_INFO VALUES(
		26243836, 8473561978, 'fancyfan@gmail.com', '10 Brighton Rd, Naugatuck', '10 Brighton Rd, Naugatuck', 763003124, 'Married');
INSERT INTO USER_INFO VALUES(
		45676030, 7178563598, 'duke001abm@gmail.com', '409 K Ave, Kure Beach', '409 K Ave, Kure Beach', 155588727, 'Divorce');
INSERT INTO USER_INFO VALUES(
		22685918, 27015689842, 'masonkahalifa@gmail.com', 'Sonora Hrdn R Spg', 'Sonora Hrdn R Spg', 747881806, 'Single');
INSERT INTO USER_INFO VALUES(
		89856455, 6178881599, 'rogerblake@gmail.com', '125 Campus View Dr.', '125 Campus View Dr.', 558146789, 'Married');

/*****   USER_REGISTER TABLE  *************************************************/

CREATE TABLE USER_REGISTER (
USER_ID INT NOT NULL,
ROLE_ID INT NOT NULL,
GROUP_ID INT NOT NULL,
LOGIN_ID INT NOT NULL,
ACCESS_ID INT NOT NULL,
USER_NAME varchar(20) NOT NULL,
USER_PASSWORD varchar(20) NOT NULL,
CONSTRAINT USER_REGISTERPK PRIMARY KEY(USER_ID, ROLE_ID, GROUP_ID, LOGIN_ID, ACCESS_ID),
CONSTRAINT USER_REGISTERAK1 UNIQUE(USER_NAME)
);

INSERT INTO USER_REGISTER VALUES(
		14622911, 33844249, 820, 45584728, 22356179, 'James102', 'Awefrefv10%');
INSERT INTO USER_REGISTER VALUES(
		28274103, 39510698, 949, 39883121, 36692710, 'Charlie03', 'EQdscsd20#');
INSERT INTO USER_REGISTER VALUES(
		18148266, 44401049, 827, 43697894, 22567890, 'Philip142', 'dcwcEC30#');
INSERT INTO USER_REGISTER VALUES(
		16605577, 92556505, 345, 6467588, 22443781, 'Nicol20', 'wwecNT13$');
INSERT INTO USER_REGISTER VALUES(
		9488854, 96079256, 787, 37487272, 10012358, 'Anna101', 'ckcjLL910!');
INSERT INTO USER_REGISTER VALUES(
		47425455, 63022695, 820, 12856613, 20001589, 'Louis09', 'fwdcEFE11@');
INSERT INTO USER_REGISTER VALUES(
		26243836, 89927720, 244, 15765940, 22554762, 'jack11', 'efierfWW14#');
INSERT INTO USER_REGISTER VALUES(
		45676030, 60710048, 345, 28401011, 33218657, 'ray40', '2rrjrEE4%');
INSERT INTO USER_REGISTER VALUES(
		22685918, 13425564, 588, 21912895, 44756190, 'ben95', '4irjijvvQQ3@');
INSERT INTO USER_REGISTER VALUES(
		12577884, 88187201, 451, 54789545, 78566512, 'Randy1022', 'pony123!');


/*****************Role**********************/

CREATE TABLE ROLE (
ROLE_ID INT NOT NULL,
ROLE_DESCRIPTION VARCHAR(50) NOT NULL,
ROLE_STATUS INT NOT NULL,
CONSTRAINT ROLEPK PRIMARY KEY(ROLE_ID)
);

INSERT INTO ROLE VALUES(
		44401049, "Sub", 0);
INSERT INTO ROLE VALUES(
		92556505, "Primary", 1);
INSERT INTO ROLE VALUES(
		96079256, "Primary", 1);
INSERT INTO ROLE VALUES(
		63022695, "Primary", 1);
INSERT INTO ROLE VALUES(
		89927720, "Sub", 0);
INSERT INTO ROLE VALUES(
		60710048, "Primary", 1);
INSERT INTO ROLE VALUES(
		13425564, "Sub", 0);
INSERT INTO ROLE VALUES(
		88187201, 'Primary', 1);

/****************** HouseHold ***********/

create table HOUSEHOLD(
Groups_ID  INT Not Null,
USER_ID   INT Not Null,
CONSTRAINT  GroupPK   Primary key (Groups_ID),
Constraint  UserFK   Foreign key  (USER_ID)
	References user_info(USER_ID)
);

Insert into HOUSEHOLD values ( 821,14622911);
Insert into HOUSEHOLD values ( 949,28274103);
Insert into HOUSEHOLD values ( 827,18148266);
Insert into HOUSEHOLD values ( 345,16605577);
Insert into HOUSEHOLD values ( 787,9488854);
Insert into HOUSEHOLD values ( 820,47425455);
Insert into HOUSEHOLD values ( 244,26243836);
Insert into HOUSEHOLD values( 347,45676030);
Insert into HOUSEHOLD values ( 588,22685918);
Insert into HOUSEHOLD values (451, 89856455);

/********************** Access****************************/
create table ACCESS(
Access_ID  INT Not Null,
USER_ID   INT Not Null,
Privilege varchar(6)  not null,
Restrict_user varchar(6) not null,
Register_user   boolean,
CONSTRAINT  AccessPK   Primary Key (Access_ID),
Constraint  AccessFK   Foreign key  (User_ID)
	References user_info(USER_ID)
);

Insert into ACCESS values (22356179,14622911,'YES', 'NO',1);
Insert into ACCESS values (36692710,28274103,'NO', 'YES',1);
Insert into ACCESS values (22567890,18148266,'NO', 'YES',1);
Insert into ACCESS values (22443781,16605577,'YES', 'NO',0);
Insert into ACCESS values (10012358,9488854,'YES', 'NO',0);
Insert into ACCESS values(20001589,47425455,'YES', 'NO',1);
Insert into ACCESS values (22554762,26243836,'YES', 'NO',0);
Insert into ACCESS values (33218657,45676030,'NO', 'YES',0);
Insert into ACCESS values (44756190,22685918,'NO', 'YES',1);
Insert into ACCESS values (78566512, 89856455,'NO', 'YES',1);

/******************* Daily_balance *************************/
create table DAILY_BALANCE(
AccountID INT not null,
Account_Number INT not null,
Account_balance decimal (60,4) not null,
Transaction_type varchar(1000) not null,
Activity_time TIMESTAMP Not null DEFAULT CURRENT_TIMESTAMP on Update current_timestamp,
CONSTRAINT  Accountaf   Primary Key (Account_Number,Activity_time)

);

Insert into DAILY_BALANCE VALUES (44015814,342384248,250,'internet bill','2021-11-24 16:24');
INSERT INTO DAILY_BALANCE VALUES (29511421,786787565, 600, 'utility,bill','2021-11-12 16:36');
INSERT INTO DAILY_BALANCE VALUES (43254686,	678676763, 425.16,'cleaner','2021-11-03 5:00');
INSERT INTO DAILY_BALANCE VALUES (47573139,	564365935,	782,'food','2021-11-23  12:00:00 ');
INSERT INTO DAILY_BALANCE VALUES (5576172,	906976069,	1000,'Rent','2021-11-6  18:30:00');
INSERT INTO DAILY_BALANCE VALUES (25339740,	694568454, 32,'gas money','2021-10-23 18:30:23');
INSERT INTO DAILY_BALANCE VALUES (37291461,	808906761,	652.13, 'rent','2021-09-04 22:00:01');
INSERT INTO DAILY_BALANCE VALUES (39420351,	569645356, 1150.26,'bills','2021-08-10 20:32:23');
INSERT INTO DAILY_BALANCE VALUES (17518752,	240494053, 3000.25,' other expenses','2021-07-05 18:32:25');
INSERT INTO DAILY_BALANCE VALUES (15988487, 785665120, 210, 'food', '2021-08-05 20:52:15');

/************* Account **************************/
CREATE TABLE Account(
    USER_ID int NOT NULL,
    AccountID int NOT NULL , 
    BankName char(15) NOT NULL,
    Account_Number int NOT NULL,
    Acc_Balance decimal(8,2) NOT NULL,
    Acc_Type char(25) NOT NULL,
    Acc_permission Boolean,
    TimeStamp Date,
	constraint AccountPK PRIMARY KEY(AccountID),
	UNIQUE KEY (BankName,Account_Number),
	Constraint AccountFK Foreign key (USER_ID)
	References User_info (USER_ID)
    );
    
Insert into ACCOUNT values(14622911, 44015814,'Bank_of_America', 342384248, 104.87,'Saving_acc',1,'2005-09-12');
Insert into ACCOUNT values(28274103, 29511421,'Bank_of_America', 786787565,5494.54,'Checking_acc',1,'2011-09-14');
Insert into ACCOUNT values(18148266, 43254686,'Bank_of_America',678676763,5609.12,'Saving_acc',0,'2008-07-16');
Insert into ACCOUNT values(16605577, 47573139,'Citi_Bank',564365935,70096.85,'Checking_acc',0,'2012-04-22');
Insert into ACCOUNT values(9488854, 55761728,'Citi_Bank',906976069,6960.1,'Saving_acc',1,'2007-08-23');
Insert into ACCOUNT values(47425455, 25339740,'Santander',694568454,696.5,'Saving_acc',0,'2018-11-25');
Insert into ACCOUNT values(26243836, 37291461,'Chase',808906761,797.23,'Checking_acc',1,'2019-01-05');
Insert into ACCOUNT values(45676030, 39420351,'Chase', 569645356,7969.4,'Checking_acc',0,'2021-06-02');
Insert into ACCOUNT values(22685918, 1751852, 'Chase', 240494053, 9198.15, 'Checking_acc', 0, '2021-02-05');
Insert into ACCOUNT values(89856455, 15988487, 'Santander', 785665120, 5180.2, 'Saving_acc', 1,'2021-08-05');



/******************** Transactions **********************/
CREATE TABLE TRANSACTIONS (
TransactionID          Varchar(50) 			     NOT NULL,
AccountID              int 	  	                 NOT NULL,
Account_Number         Varchar(50)      		 NOT NUll,
Transaction_Type       Char(15)                              NOT NULL,
Base_type              Char(20)                              NOT NULL,
Category               Char(25)                              NOT NULL,
Amount                 Varchar(50)                           NOT NULL,
Settlement_Status      Char(15)                              NOT NULL,
TimeStamp              Varchar(50)                           NOT NULL,
CONSTRAINT		        TransPK	        	     PRIMARY KEY(TransactionID),
CONSTRAINT              TransFK                        FOREIGN KEY (AccountID)
 REFERENCES 	 account(AccountID)
); 

INSERT INTO TRANSACTIONS VALUES ('48EF4798-6CE7-6E2C-3273-8FB42F83DE', 44015814,'342384248', 'Purchase', 'Credit Card', 'Personal', '$674', 'Pending','03:34');
    
INSERT INTO TRANSACTIONS VALUES ('7586CB18-70A9-BBE5-0CAA-83965789D7', 29511421,'786787565','Purchase', 'Credit Card', 'Personal', '$793', 'Pending','06:27');
    
INSERT INTO TRANSACTIONS VALUES ('1E624CC7-34F3-1695-67B9-71E0DD868A', 43254686,'678676763', 'Purchase', 'Credit Card', 'Business', '$77', 'Pending','08:47');
    
INSERT INTO TRANSACTIONS VALUES ('C7520AE9-3402-4E90-30DC-171F0E5B0F', 47573139,'564365935', 'Transfer', 'Debit Card', 'Business', '$4839', 'Setteled','12:20');
    
INSERT INTO TRANSACTIONS VALUES ('F0BA94B1-0739-3FE2-0CB4-9852BB54E3', 55761728,'906976069','Deposit', 'Debit Card', 'Personal', '$799', 'Setteled','14:49');
    
INSERT INTO TRANSACTIONS VALUES ('F0BA94B1-0739-3FE2-0CB4-9852BB54E4', 25339740,'694568454','Deposit', 'Debit Card', 'Business', '$599.99', 'Setteled','16:50');
    
INSERT INTO TRANSACTIONS VALUES ('D06ABAF1-3F08-9DAA-19C2-FAAFDE1796', 37291461,'808906761','Purchase', 'Credit Card', 'Business', '$16.99', 'Setteled','13:29');
    
INSERT INTO TRANSACTIONS VALUES ('325ADC87-43EC-BF8E-3DA5-4308D2DF6A',  39420351,'569645356','Transfer', 'Debit Card', 'Personal', '$33.99', 'Setteled','17:21');
    
INSERT INTO TRANSACTIONS VALUES ('EFA02E2C-0A5D-8311-B596-F0F659A57FA',  1751852,'240494053','Deposit', 'Debit Card', 'Personal', '$7343', 'Setteled','20:20');
    
INSERT INTO TRANSACTIONS VALUES ('EE6BBC28-1E3F-B8D8-C4B8-5898932EFD', 15988487,'785665120', 'Deposit', 'Debit Card', 'Personal', '$2527.99', 'Setteled','10:10');



