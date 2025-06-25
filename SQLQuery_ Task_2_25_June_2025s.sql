-- Step 1: Create a sample table
CREATE TABLE employees2 (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT DEFAULT 'Unassigned',
    salary REAL
)

select * from employees2

-- Step 2: Insert data (handling NULLs and defaults)
INSERT INTO employees2 (id, name, age, department, salary)
VALUES
(1, 'Alice', 30, 'HR', 50000),
(2, 'Bob', NULL, 'IT', NULL),
(3, 'Charlie', 25, NULL, 45000),
(4, 'Diana', 28, 'Finance', 55000);

select * from employees2

-- Step 3: Update records
-- Assign a department where it's NULL
UPDATE employees2
SET department = 'Operations'
WHERE department IS NULL;

select * from employees2


-- Give a standard starting salary where salary is NULL
UPDATE employees2
SET salary = 40000
WHERE salary IS NULL;

-- Step 4: Delete specific records
-- Let's say we remove employees below the age of 26
DELETE FROM employees2
WHERE age < 26

-- Final check
SELECT * FROM employees2