create database payroll_service;
show databases;
use payroll_service;

CREATE TABLE employee_payroll		# It is use to create a tablein the database
     (
     id       INT unsigned NOT NULL AUTO_INCREMENT,
     name     VARCHAR (150) NOT NULL,
     salary   Double NOT NULL,
     start    Date NOT NULL,
     PRIMARY KEY  (id)			# Primary key is use to Create a id as a unique.
     );
     drop table employee_payroll;
    #Insert a data in a particular database using 'INSERT'command.
     INSERT INTO employee_payroll (name, salary, start) VALUES  
   	  ('Bill', '1000000.00', '2019-01-03'),
   	  ('Terise', '2000000.00', '2017-11-13'),
	  ('Charlie', '3000000.00', '2020-05-21');
	  SELECT * FROM employee_payroll;
      #uc5
      SELECT salary FROM employee_payroll where name  = 'Bill';  #Selecting Bill entry
      SELECT * FROM employee_payroll                             #selecting employee from data range
	  WHERE start BETWEEN CAST('2019-01-01' AS DATE) AND DATE(NOW());
      
      #Add the gender column in employee_payroll using ALTER command like delete,add,etc 
	 ALTER TABLE employee_payroll ADD gender CHAR(1) AFTER name;
     describe employee_payroll;
     SET SQL_SAFE_UPDATES=0;
     
     #Data stored in table using 'update' command.
	 update employee_payroll set gender = 'F' where name = 'Terise';
     update employee_payroll set gender = 'M' where name = 'Bill' or name = 'Charlie';
     SELECT * FROM employee_payroll;
     
     #Find  Average salary according to a gender (like M )using AVG() command; 
	SELECT AVG(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
    #Count the no of fields (like name) using COUNT() command.
	SELECT gender, COUNT(name) FROM employee_payroll GROUP BY gender;
    #Find the Sum of the salary accourding to a field (like gender) using SUM() command.
	SELECT gender, SUM(salary) FROM employee_payroll GROUP BY gender;
    
    #Add a column in a table like: phone number.
	ALTER TABLE employee_payroll ADD phone_number VARCHAR(13) AFTER name;
    #Add a column in a table like:address.
	ALTER TABLE employee_payroll ADD address VARCHAR(150) AFTER phone_number;
    #Add Default Value for address field.
	ALTER TABLE employee_payroll ALTER address SET DEFAULT 'TBD';
    #Ensure employee department is non nullable fields.
	ALTER TABLE employee_payroll ADD department VARCHAR(20) NOT NULL AFTER address;
    #View a table in a display. 
	DESCRIBE employee_payroll;
    SELECT * FROM employee_payroll;
