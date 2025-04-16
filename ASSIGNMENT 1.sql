CREATE DATABASE IF NOT EXISTS assignment;
USE assignment;
 DROP DATABASE assignment;

CREATE TABLE employee(
employee_ID SERIAL PRIMARY KEY,
First_Name VARCHAR (50) NOT NULL,
Last_Name VARCHAR (50) NOT NULL,
Depatment VARCHAR (50),
Sallery DECIMAL (10,2) CHECK (Sallery>0),
Joining_date DATE NOT  NULL,
Age INT CHECK (Age>=18)
);

DROP TABLE employee;

INSERT INTO employee(First_Name, Last_Name,Depatment,Sallery,Joining_date,Age)
VALUES ('Amit','Sharma','IT',60000.00, STR_TO_DATE('01-05-2022', '%d-%m-%Y'),29),
	    ('Neha','Patel','HR',55000.00, STR_TO_DATE('15-08-2021', '%d-%m-%Y'),32),
        ('Ravi','Kumar','Finace',70000.00, STR_TO_DATE('10-03-2020', '%d-%m-%Y'),35),
        ('Anjali','Verma','IT',65000.00, STR_TO_DATE('22-11-2019', '%d-%m-%Y'),28),
        ('Suresh','Reddy','Operation',50000.00, STR_TO_DATE('10-01-2023', '%d-%m-%Y'),26);
        
-- ASSIGNMENT QUESTION 



-- Q1: RETRIVE ALL EMPLOYES FIIRST_NAME AND THEIR DEPARTMENT 

SELECT First_Name,Depatment FROM employee;

-- Q2: UPDATE THE SALLERY OF ALL EMPLOYESS IN THEE "IT" DEPARTMENT BY 10%

SET SQL_SAFE_UPDATES = 0;
UPDATE employee
 SET sallery= Sallery + (Sallery*0.1)
 WHERE Depatment='IT';

-- Q3: DELETE ALL EMPLOYEES WHO ARE OLDER THAN 34 YEARS.

DELETE FROM employee 
WhERE Age>34;

-- Q4: ADD A NEW COLUMN 'EMAIL'TO THE EMPLOYE  TABLE

ALTER TABLE employee
ADD COLUMN Email VARCHAR (100);

-- Q5: RENAME THE DEPATMENT COLUMN TO DEPT_NAME

ALTER TABLE employee 
RENAME COLUMN Depatment to Dept_Name;

-- Q6: RETRIVE THE NAME OF EMPLOYEES WHO JOINED AFTER JANUARY 1,2021.


 
 SELECT First_Name,Last_Name,Joining_date FROM employee
 WHERE Joining_date > STR_TO_DATE('01-01-2021', '%d-%m-%Y');
 
 -- Q7: CHANGE THE DATA TYPE OF THE 'SALARY ' COLUMN TO INTEGER
  
  ALTER TABLE employee 
MODIFY COLUMN Sallery INT;

 
 -- Q8: LIST ALL EMPLOYEE WITH THEIR AGE AND ALARY IN DECREASING ORDER OF SALARY
 
 SELECT First_Name ,Last_Name,Age,Sallery FROM employee ORDER BY Sallery DESC; 
 
 -- Q9: INSERT A NEW EMPLOYEE WITH THE FOLLOWING DETAILS;
            -- (RAJ ,SINGH MARKETING 60000,'2023-09-30);
            
  INSERT INTO employee (First_Name,Last_Name,Dept_Name,Sallery,Joining_date,Age)
  VALUES ('Raj','singh','Marketing',60000,STR_TO_DATE('01-01-2021', '%d-%m-%Y'),30);
         
 -- Q10: UPDATE AGE  OF EMPLOYEE +1 TO EVERY EMPLOYEE
      SELECT * FROM employee;
     
 UPDATE employee 
 SET Age = Age + 1;
 
    -------- THANK YOU---------
 
 
 
 
 
 
 
 
 
 
 
 