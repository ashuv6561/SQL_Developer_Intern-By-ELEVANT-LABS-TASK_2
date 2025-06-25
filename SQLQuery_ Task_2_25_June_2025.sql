

-- Create a sample table
CREATE TABLE Employees (
    ID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Age INTEGER,
    Department TEXT DEFAULT 'General',
    Email TEXT
)

-- INSERT statements (handling NULLs and defaults)
INSERT INTO Employees (ID, Name, Age, Department, Email)
VALUES (1, 'Alice', 28, 'HR', 'alice@example.com');

INSERT INTO Employees (ID, Name, Age, Email)
VALUES (2, 'Bob', NULL, 'bob@example.com');  -- Department defaults to 'General'

INSERT INTO Employees (ID, Name, Age, Department)
VALUES (3, 'Charlie', 32, NULL);  -- Email will be NULL

-- UPDATE statements
UPDATE Employees
SET Department = 'Marketing'
WHERE ID = 3;

ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(MAX)

UPDATE Employees
SET Age = 30
WHERE Name = 'Bob' AND Age IS NULL;

-- DELETE statement
DELETE FROM Employees
WHERE ID = 1;

Select * from Employees