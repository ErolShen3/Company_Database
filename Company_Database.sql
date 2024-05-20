Create Database Company;

Create Table Employee(
Employee_ID INT PRIMARY KEY,
Name Varchar(40) NOT NULL,
Surname Varchar(40) NOT NULL,
Birthday DATE NOT NULL,
Sex CHAR NOT NULL,
Salary INT NOT NULL,
Branch_ID INT
);

Create Table Branch(
Branch_ID INT PRIMARY KEY,
Branch_name Varchar(40) NOT NULL,
Manager_ID INT FOREIGN KEY REFERENCES Employee(Employee_ID),
);

INSERT INTO Employee VALUES(1000, 'Katherine', 'Zamora', '1984-02-03', 'F', 8882, 100);
INSERT INTO Employee VALUES(1001, 'Erin', 'Thorton', '1988-03-17', 'M', 5336, 101);
INSERT INTO Employee VALUES(1002, 'Bernard', 'Horton', '1986-01-10', 'M', 2782, 102);
INSERT INTO Employee VALUES(1003, 'Bruce', 'Hensley', '1983-05-29', 'M', 3484, 100);
INSERT INTO Employee VALUES(1004, 'Dale', 'Hendricks', '1997-10-06', 'M', 3243, 101);
INSERT INTO Employee VALUES(1005, 'Annie', 'Hunter', '1999-10-14', 'F', 3587, 102);
INSERT INTO Employee VALUES(1006, 'Dolly', 'Marsh', '1988-10-03', 'F', 2489, 100);
INSERT INTO Employee VALUES(1007, 'Rochelle', 'Walls', '1990-06-27', 'F', 9573, 101);
INSERT INTO Employee VALUES(1008, 'June', 'Dorsey', '2000-07-16', 'F', 3918, 102);
INSERT INTO Employee VALUES(1009, 'Leanna', 'Cabrera', '1998-11-08', 'F', 6217, 100);
INSERT INTO Employee VALUES(1010, 'Janine', 'Dyer', '1985-03-04', 'F', 6091, 101);
INSERT INTO Employee VALUES(1011, 'Louie', 'Mathews', '1998-10-17', 'M', 2394, 102);
INSERT INTO Employee VALUES(1012, 'Romeo', 'Wells', '1983-02-28', 'M', 7754, 100);
INSERT INTO Employee VALUES(1013, 'Evan', 'York', '1988-10-24', 'M', 4325, 101);

INSERT INTO Employee VALUES(1014, 'George', 'Bowman', '1980-08-08', 'M', 10000, NULL);

INSERT INTO Branch VALUES(100, 'Omnipotens',  1000);
INSERT INTO Branch VALUES(101, 'Verecundia', 1007);
INSERT INTO Branch VALUES(102, 'Quibus', 1012);


CREATE TABLE Client (
  Client_ID INT PRIMARY KEY,
  Client_name VARCHAR(40),
  Branch_id INT FOREIGN KEY REFERENCES Branch(Branch_ID),
);

INSERT INTO Client VALUES(10, 'Mosaic',  100);
INSERT INTO Client VALUES(11, 'Lowés',  101);
INSERT INTO Client VALUES(12, 'NGL',  102);
INSERT INTO Client VALUES(13, 'FNIS',  100);
INSERT INTO Client VALUES(14, 'Cigna',  101);
INSERT INTO Client VALUES(15, 'Lear',  102);
INSERT INTO Client VALUES(16, 'Weyerhaeuser',  100);
INSERT INTO Client VALUES(17, 'DCP_Midstream',  101);
INSERT INTO Client VALUES(18, 'Humana',  102);
INSERT INTO Client VALUES(19, 'Rockwell_Collins',  100);

CREATE TABLE Deals (
  Employee_ID INT,
  Client_ID INT,
  Total_Sales INT,
  PRIMARY KEY(Employee_ID, Client_ID),
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE,
  FOREIGN KEY(Client_ID) REFERENCES Client(Client_ID) ON DELETE CASCADE
);

INSERT INTO Deals VALUES(1000, 10, 36736);
INSERT INTO Deals VALUES(1001, 11, 57596);
INSERT INTO Deals VALUES(1002, 12, 21247);
INSERT INTO Deals VALUES(1003, 13, 67898);
INSERT INTO Deals VALUES(1004, 14, 53062);
INSERT INTO Deals VALUES(1005, 15, 66480);
INSERT INTO Deals VALUES(1006, 16, 70960);
INSERT INTO Deals VALUES(1007, 17, 87842);
INSERT INTO Deals VALUES(1008, 18, 55335);
INSERT INTO Deals VALUES(1009, 19, 38922);

CREATE TABLE Branch_Supplier(
  Branch_ID INT,
  Supplier_name VARCHAR(40),
  Supply_type VARCHAR(40),
  PRIMARY KEY(Branch_ID, Supplier_name),
  FOREIGN KEY(Branch_ID) REFERENCES branch(Branch_ID) ON DELETE CASCADE
);

INSERT INTO Branch_Supplier VALUES(100, 'Lucyregno', 'Writing Utensils');
INSERT INTO Branch_Supplier VALUES(101, 'Morspoema', 'Laptop');
INSERT INTO Branch_Supplier VALUES(102, 'Quamvalde', 'Steel');
INSERT INTO Branch_Supplier VALUES(100, 'Rufadomus', 'Custom Forms');
INSERT INTO Branch_Supplier VALUES(101, 'Avahgemma', 'Monitor');
INSERT INTO Branch_Supplier VALUES(102, 'Undaaeger', 'Glass');
INSERT INTO Branch_Supplier VALUES(100, 'Idemcausa', 'Printer');
INSERT INTO Branch_Supplier VALUES(101, 'Areasonus', 'Mouse');
INSERT INTO Branch_Supplier VALUES(102, 'Veramiles', 'Leather ');

/*SELECT Branch_ID,Supplier_name,Supply_type FROM Branch_Supplier;
SELECT Employee_ID,Client_ID,Total_Sales FROM Deals;
SELECT Employee_ID,Name,Surname,Birthday,Sex,Salary,Branch_ID FROM Employee;
SELECT Client_ID,Client_name,Branch_id FROM Client;
SELECT Branch_ID,Branch_name,Manager_ID FROM Branch;




