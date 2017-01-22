
--------------LOGIN-------------------


CREATE  TABLE `spark`.`LOGIN` (   `USERNAME` VARCHAR(50) NOT NULL ,   `PASSWORD` VARCHAR(50) NOT NULL ,   `STATUS` VARCHAR(45) NULL ,   PRIMARY KEY (`USERNAME`) ); 

INSERT INTO `spark`.`LOGIN` (`USERNAME`, `PASSWORD`, `STATUS`) VALUES ('admin', 'admin', 'a'); 

INSERT INTO `spark`.`LOGIN` (`USERNAME`, `PASSWORD`, `STATUS`) VALUES ('james', 'james', 's'); 

INSERT INTO `spark`.`LOGIN` (`USERNAME`, `PASSWORD`, `STATUS`) VALUES ('infosys', 'infosys', 'c'); 


----------------COM------------------


CREATE  TABLE `spark`.`COM` (   `CNAME` VARCHAR(50) NOT NULL ,   `CADDRESS` VARCHAR(100) NOT NULL ,   `CPOST` VARCHAR(100) NOT NULL ,   `CCRITERIA` VARCHAR(100) NOT NULL ,   `CUSERNAME` VARCHAR(100) NOT NULL ,   `CEMAIL` VARCHAR(100) NOT NULL ,   `CCONTACT` INT(11)  NOT NULL ,   `CCUTOFF` INT(11)  NOT NULL ,   PRIMARY KEY (`CNAME`) ); 

INSERT INTO `spark`.`COM` (`CNAME`, `CADDRESS`, `CPOST`, `CCRITERIA`, `CUSERNAME`, `CEMAIL`, `CCONTACT`, `CCUTOFF`) VALUES ('Infosys', 'D-9, mysore', 'developer', 'JAVA-CORE', 'infosys', 'infosys@yahoo.com	', 45612398, 75); 


---------------DETAILS------------------


CREATE  TABLE `spark`.`DETAILS` (   `USERNAME` VARCHAR(50) NOT NULL ,   `NAME` VARCHAR(50) NOT NULL ,   `GENDER` VARCHAR(50) NOT NULL ,   `DATEOFBIRTH` VARCHAR(50) NOT NULL ,   `COLLEGENAME` VARCHAR(100) NOT NULL ,   `COLLEGEPHONE` INT(11)  NOT NULL ,   `COLLEGEEMAIL` VARCHAR(100) NOT NULL ,   `BRANCH` VARCHAR(50) NOT NULL ,   `MARK` INT(11)  NOT NULL ,   `DEGREE` VARCHAR(50) NOT NULL ,   `EMAIL_ID` VARCHAR(50) NOT NULL ,   `TELEPHONE` VARCHAR(50) NOT NULL ,   `ADDRESS` VARCHAR(100) NOT NULL ,   `STATE` VARCHAR(100) NOT NULL ,   `PINCODE` VARCHAR(45) NOT NULL ,   `CATEGORY` VARCHAR(45) NOT NULL ,   PRIMARY KEY (`USERNAME`) ); 

INSERT INTO `spark`.`details` (`USERNAME`, `NAME`, `GENDER`, `DATEOFBIRTH`, `COLLEGENAME`, `COLLEGEPHONE`, `COLLEGEEMAIL`, `BRANCH`, `MARK`, `DEGREE`, `EMAIL_ID`, `TELEPHONE`, `ADDRESS`, `STATE`, `PINCODE`, `CATEGORY`) VALUES ('james', 'james brown', 'Male', '03/11/1990', 'GTBIT', 45632125, 'gtbit@live.in', 'Comp Application & IT', 80, 'BTech', 'jim.brown@hotmail.com', '8459298591', '12A, Elm Street, NYC', 'NYC', '20131', 'Fresher'); 


-----------------EXAM---------------------


CREATE  TABLE `spark`.`exam` (   `JOBID` INT(11)  NOT NULL ,   `POST` VARCHAR(50) NOT NULL ,   `EXAMID` VARCHAR(50) NOT NULL ,   `EXAMNAME` VARCHAR(50) NOT NULL ,   `CUTOFF` VARCHAR(50) NOT NULL ,   PRIMARY KEY (`JOBID`) ); 


INSERT INTO `spark`.`exam` (`JOBID`, `POST`, `EXAMID`, `EXAMNAME`, `CUTOFF`) VALUES (201, 'developer', '2', 'JAVA-CORE', '65');



-----------------EXPERIENCED-----------------

CREATE  TABLE `spark`.`experienced` (   `USERNAME` VARCHAR(50) NOT NULL ,   `EXPYEARS` VARCHAR(50) NOT NULL ,   `COMPANY` VARCHAR(50) NOT NULL ,   `DESIGNATION` VARCHAR(50) NOT NULL ,   `SALARY` VARCHAR(50) NOT NULL ,   `COMADDRESS` VARCHAR(100) NOT NULL ,   PRIMARY KEY (`USERNAME`) ); 



------------------JOBDETAILS-----------------------


CREATE  TABLE `spark`.`jobdetails` (   `JOBID` INT(11)  NOT NULL ,   `POST` VARCHAR(50) NOT NULL ,   `CRITERIA` VARCHAR(50) NOT NULL ,   `NOOFVACANCIES` INT(11)  NOT NULL ,   `SALARY` INT(11)  NOT NULL ,   `LASTDATE` VARCHAR(100) NOT NULL ,   PRIMARY KEY (`JOBID`) ); 


INSERT INTO `spark`.`jobdetails` (`JOBID`, `POST`, `CRITERIA`, `NOOFVACANCIES`, `SALARY`, `LASTDATE`) VALUES (201, 'developer', 'B.Tech', 1, 27000, '04/12/2013'); 




--------------------RESULT---------------------



CREATE  TABLE `spark`.`result` (   `STUDENTID` VARCHAR(50) NOT NULL ,   `EXAMID` INT(11)  NOT NULL ,   `JOBID` INT(11)  NOT NULL ,   `MARK` INT(11)  NOT NULL ,   PRIMARY KEY (`STUDENTID`) );


INSERT INTO `spark`.`result` (`STUDENTID`, `EXAMID`, `JOBID`, `MARK`) VALUES ('james', 1, 201, 10); 



------------------------QUESTION-------------------------



CREATE  TABLE `spark`.`question` (   `JOBID` INT(11)  NOT NULL ,   `EXAMID` INT(11)  NOT NULL ,   `QUESTIONNO` INT(11)  NOT NULL ,   `QUESTION` VARCHAR(1000) NOT NULL ,   `OPTION1` VARCHAR(1000) NOT NULL ,  `OPTION2` VARCHAR(1000) NOT NULL ,   `OPTION3` VARCHAR(1000) NOT NULL ,   `OPTION4` VARCHAR(1000) NOT NULL ,   `ANSWER` VARCHAR(1000) NOT NULL ,   PRIMARY KEY (`QUESTIONNO`) ); 


ALTER TABLE `spark`.`question`  DROP PRIMARY KEY ; 

ALTER TABLE `spark`.`question` CHANGE COLUMN `JOBID` `JOBID` INT(11)  NOT NULL  , CHANGE COLUMN `EXAMID` `EXAMID` INT(11)  NOT NULL  , CHANGE COLUMN `QUESTIONNO` `QUESTIONNO` INT(11)  NOT NULL   , ADD PRIMARY KEY (`QUESTIONNO`) ; 


DELETE FROM `spark`.`test1` WHERE `id`='3';


-----------------------TEMP_DATA-------------------------------------

CREATE  TABLE `spark`.`temp_data` (

  `STUDID` VARCHAR(50) NOT NULL ,

  `QSTNO` INT(11)  NOT NULL ,

  `QST` VARCHAR(1000) NOT NULL ,

  `CH1` VARCHAR(1000) NOT NULL ,

  `CH2` VARCHAR(1000) NOT NULL ,

  `CH3` VARCHAR(1000) NOT NULL ,

  `CH4` VARCHAR(1000) NOT NULL ,

  `ANS` VARCHAR(1000) NOT NULL ,

  PRIMARY KEY (`QSTNO`) );









------------------------------------------------------