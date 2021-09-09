-- create a table Company
CREATE TABLE Company (
  id INTEGER PRIMARY KEY,
  name VARCHAR NOT NULL
);


CREATE TABLE Deparment (
  id INTEGER PRIMARY KEY,
  company_id INT,
  name VARCHAR NOT NULL,
  location VARCHAR NOT NULL,
  FOREIGN KEY (company_id) REFERENCES Company(id)
);

CREATE TABLE Employee (
  id INTEGER PRIMARY KEY,
  deparment_id INT,
  name VARCHAR NOT NULL,
  phone INT,
  salary INT,
  FOREIGN KEY (deparment_id) REFERENCES Deparment(id)
);

-- insert some values

-- INSERT into Company VALUES
INSERT INTO Company VALUES (1, 'Apple');
INSERT INTO Company VALUES (2, 'SAMSUNG');
INSERT INTO Company VALUES (3, 'HTC');


-- INSERT into Deparment VALUES
INSERT INTO Deparment VALUES (1,1,'CS','kannur');
INSERT INTO Deparment VALUES (2,1,'Security','New York');
INSERT INTO Deparment VALUES (3,1,'IT','US');
INSERT INTO Deparment VALUES (4,2,'Sales','uk');
INSERT INTO Deparment VALUES (5,3,'Security','New York');
INSERT INTO Deparment VALUES (6,3,'IT','US');
INSERT INTO Deparment VALUES (7,2,'CS','uk');


-- INSERT into Employee VALUES
INSERT INTO Employee VALUES (1,2,'Vishnu',8184858,30000);
INSERT INTO Employee VALUES (2,6,'Anirudh',9184858,70000);
INSERT INTO Employee VALUES (3,2,'Rahul',7184858,90000);

INSERT INTO Employee VALUES (5,1,'Geetha',8184858,20000);
INSERT INTO Employee VALUES (6,5,'Mohandas',9184858,10000);
INSERT INTO Employee VALUES (7,1,'Rupesh',7184858,9000);


INSERT INTO Employee VALUES (8,4,'Rahsa',8184858,300000);
INSERT INTO Employee VALUES (9,4,'Rubi',9184858,77000);
INSERT INTO Employee VALUES (10,5,'Jithin',7184858,2000);

-- fetch some values
-- SELECT * FROM Company;

-- Write a query for getting all the employees from department.
-- query for UNIQUE elements
select *
from Employee
group by deparment_id;

-- Write a query for getting second highest salary.
select *from Employee 
group by salary 
order by  salary desc limit 1,1;

