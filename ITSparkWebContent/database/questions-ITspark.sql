insert into Question values
(100,1,1,'Base class has some virtual method and derived class has a method with the same name.If we initialize the base class pointer 
with derived object calling of that virtual method will result in which method being called?','Derived method','Base method','Both of 
these','none of these','Derived method');

insert into Question values
(100,1,2,'Void main()
   {
      int d=5;
      printf("%f",d);
   }',5,'5,5','d','Undefined','Undefined');

insert into Question values
(100,1,3,'voidmain()
  {
     char *s="\n12345s\n";            printf("%d",sizeof(s));  

       }',54321,12345,6,123456,6);


insert into Question values
(100,1,4,'void main()
{
float j;
j=1000*1000;
printf("%f",j);
}','Overflow',1000000,'Error','None',' None');

insert into Question values
(100,1,5,'#define one O
#ifdef one
printf("one is defined");
#ifndef one
printf("one is not defined");
','one','one is not defined','one is defined','cannot be defined','one is defined');


insert into Question values
(100,1,6,'if j=8 and k=j++ what will be the value of j and k?','8 and 9','9 and 8','9 and 9','8 and 8','8 and 9');

insert into Question values
(100,1,7,'Run time errors are known as ________.','Compile error','static error','Exception','Error','Exception');

insert into Question values
(100,1,8,'__________ is a used for finding number of elements in an array.','object.length','object.length()','length()','length','length()');

insert into Question values
(100,1,9,'Packages are included in a java program using','import','include','insert',' join','import');

insert into Question values
(100,1,10,'_________ is a keyword','medium','assert','high','test','assert');


insert into Question values
(100,1,11,'In Java language there are _________ keywords.',32,42,48,50,50);

insert into Question values
(100,1,12,'__________ is known as deployment descriptor','tools.jar','servlet-api.jar','web.xml','WEB-INF','WEB-INF');

insert into Question values
(100,1,13,'Session data is passing in form of__________.','parameter','objects','String','integer','objects');

insert into Question values
(100,1,14,'__________ is used to translate high level language to machine language.','interpreter','compiler','assembler','none of 

these','interpreter');

insert into Question values
(100,1,15,'request.getParameter("name") is used to __________','get value of name from a page','get value from DataBase','get 

value from ResultSet',' get value from session','get value of name from a page');

insert into Question values
(100,1,16,'Method used for converting String to int type is  _________','Integer.parseInt()','String.parseInt()',' Class.parseInt',' 

Object.parseInt()','Integer.parseInt()');

insert into Question values
(100,1,17,'Every statement in Java is terminated by a ____________',' :',';','.',' none of these',';');

insert into Question values
(100,1,18,'__________ is a relational operator.','=','||','==','&&','=');

insert into Question values
(100,1,19,'________  is a valid variable name.','3a','roll no','roll_no','float','float');

insert into Question values
(100,1,20,'Java was developed by ____________','James Gosling','Patric Naughton','Dennis Ritchie','None of these','James Gosling');



insert into Question values
(100,1,21,'Which method names follow the JavaBean standard?','add_Size','getnumber','DeleteNum','isColorado','isColorado');

insert into Question values
(100,1,22,'Which is represented in a UML class diagram?','ways to test an application','operations of classes and interface','relationship 

between classes and functions','the interaction between ojects in sequential order','operations of classes and interface');

insert into Question values
(100,1,23,'which is a requirement to use applets in a web browser?','A web container must be installed at the server','The java plug-in 

must be installed at the server','Java compiler must be installed at the server','JRE must be installed at the client','JRE must be installed 

at the client');


insert into Question values
(100,1,24,'Which is true?','Class that extends another class CANNOT be well encapsulated.','Polymorphiam only applies when one class 

encapsulates another.','A class with a public instance variable CANNOT be well encapsulated.','A class with a private instance variable 

CANNOT be well encapsulated.','A class with a public instance variable CANNOT be well encapsulated.');


insert into Question values
(100,1,25,'which technology provides a unified interface to multiple naming and directory services?','JNI','EJB','JNDI','
JDBC','JNDI');


select * from Question;

DELETE FROM question  WHERE questionno ='2';

CREATE  TABLE `spark`.`question` (   `JOBID` INT(11)  NOT NULL ,   `EXAMID` INT(11)  NOT NULL ,   `QUESTIONNO` INT(11)  NOT NULL ,   `QUESTION` VARCHAR(1000) NOT NULL ,   `OPTION1` VARCHAR(1000) NOT NULL ,  
`OPTION2` VARCHAR(1000) NOT NULL ,   `OPTION3` VARCHAR(1000) NOT NULL ,   `OPTION4` VARCHAR(1000) NOT NULL ,   `ANSWER` VARCHAR(1000) NOT NULL ,   PRIMARY KEY (`QUESTIONNO`) ); 

