
CREATE TABLE dbo.Employee(
    empID INT IDENTITY(5,1) PRIMARY KEY,
    empName VARCHAR(255),
    empLastName VARCHAR(255),
   
)

CREATE TABLE dbo.Tool(
    toolID  INT IDENTITY(1001,1) PRIMARY KEY,
    tool_desc VARCHAR(255),
    FK_empID INT FOREIGN KEY REFERENCES Employee(empID) 
)

CREATE TABLE dbo.Warehouse(
    warehouseID INT IDENTITY(1,1) PRIMARY KEY,    
    toolName VARCHAR(255),
    FK_toolID INT FOREIGN KEY REFERENCES dbo.Tool(toolID)
)

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

