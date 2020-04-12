
CREATE TABLE dbo.Employee(
<<<<<<< HEAD
    empID INT(10) IDENTITY(5,1) PRIMARY KEY,
=======
    empID INT IDENTITY(5,1) PRIMARY KEY,
>>>>>>> 147344eee9504d8b93fd9fab78cbaf4fac143724
    empName VARCHAR(255),
    empLastName VARCHAR(255),
   
)

CREATE TABLE dbo.Tool(
<<<<<<< HEAD
    toolID  INT(10) IDENTITY(1001,1) PRIMARY KEY,
=======
    toolID  INT IDENTITY(1001,1) PRIMARY KEY,
>>>>>>> 147344eee9504d8b93fd9fab78cbaf4fac143724
    tool_desc VARCHAR(255),
    FK_empID INT FOREIGN KEY REFERENCES Employee(empID) 
)

CREATE TABLE dbo.Warehouse(
<<<<<<< HEAD
    warehouseID INT(10) IDENTITY(1,1) PRIMARY KEY,    
=======
    warehouseID INT IDENTITY(1,1) PRIMARY KEY,    
>>>>>>> 147344eee9504d8b93fd9fab78cbaf4fac143724
    toolName VARCHAR(255),
    FK_toolID INT FOREIGN KEY REFERENCES dbo.Tool(toolID)
)

<<<<<<< HEAD
CREATE TABLE dbo.Trasac(
    trasacID INT(10) IDENTITY(041120,1),
    quantity int(10),
    date DATE,
    FK_toolID INT FOREIGN KEY REFERENCES dbo.Tool(toolID),
    FK_empID INT FOREIGN KEY REFERENCES Employee(empID)
)


=======
>>>>>>> 147344eee9504d8b93fd9fab78cbaf4fac143724
--insert into tables --
INSERT Employee VALUES('Alejandro', 'Biancucci');
INSERT Employee VALUES('Grace', 'Burham');
INSERT Employee VALUES('Kyle', 'Bentz');
INSERT Employee VALUES('Raymond', 'Brown');
INSERT Employee VALUES('Zain', 'Azmi');

INSERT INTO dbo.Tool VALUES ('screw driver', 5)
INSERT INTO dbo.Tool VALUES ('Power Drill', 10)
INSERT INTO dbo.Tool VALUES ('Flashlight', 8)


--query the tables --
SELECT * FROM Employee

SELECT * FROM Tool

SELECT * FROM Warehouse

