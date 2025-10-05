-- View all records--
SELECT * FROM employee_data;

-- Count total number of employees --
SELECT COUNT(*) AS total_employees FROM employee_data;

-- Find the average annual salary of all employees --
SELECT 
    AVG(Annual_Salary) AS avg_salary
FROM
    employee_data;
    
-- List all unique departments --    
SELECT DISTINCT Department FROM employee_data;

-- Find the number of employees in each department--
SELECT Department, COUNT(*) AS total_employees
FROM employee_data
GROUP BY Department;


-- Show highest paid employee in each department--
SELECT Department, Name, MAX(Annual_Salary) AS highest_salary
FROM employee_data
GROUP BY Department;


-- Find all employees older than 40 years--
SELECT Name, Age, Department
FROM employee_data
WHERE Age > 40;



-- Calculate average tenure by department--
SELECT Department, AVG(Tenure_in_Company) AS avg_tenure
FROM employee_data
GROUP BY Department;



-- List employees with “Very Good” performance rating--
SELECT Name, Department, Performance
FROM employee_data
WHERE Performance = 'Very Good';



-- Count of employees by gender--
SELECT Gender, COUNT(*) AS total
FROM employee_data
GROUP BY Gender;



-- Find top 5 highest-paid employees  --
SELECT 
    Name, Department, Annual_Salary
FROM
    employee_data
ORDER BY Annual_Salary DESC
LIMIT 5;


-- Show employees working in “Bengaluru” --
SELECT 
    Name, Department, Annual_Salary
FROM
    employee_data
WHERE
    Location = 'Bengaluru';


-- Find employees whose rating is below 3  --
SELECT 
    Name, Department, Rating
FROM
    employee_data
WHERE
    Rating < 3;


-- Get total and average salary by location --
SELECT 
    Location,
    COUNT(*) AS total_employees,
    SUM(Annual_Salary) AS total_salary,
    AVG(Annual_Salary) AS avg_salary
FROM
    employee_data
GROUP BY Location;


-- Find employees who live more than 20 km from office --
SELECT 
    Name, Distance_to_Office, Department
FROM
    employee_data
WHERE
    Distance_to_Office > 20;


-- Find department with the highest average rating --
SELECT 
    Name, Distance_to_Office, Department
FROM
    employee_data
WHERE
    Distance_to_Office > 20;



-- Show employees with more than 10 years of tenure and salary > 8LPA --
SELECT 
    Name, Department, Annual_Salary, Tenure_in_Company
FROM
    employee_data
WHERE
    Tenure_in_Company > 10
        AND Annual_Salary > 800000;


-- Find youngest and oldest employee --
SELECT 
    MIN(Age) AS youngest_age, MAX(Age) AS oldest_age
FROM
    employee_data;


-- Average rating by performance category --
SELECT 
    Performance, AVG(Rating) AS avg_rating
FROM
    employee_data
GROUP BY Performance;


-- Top 3 departments with highest total salary expense --
SELECT Department, SUM(Annual_Salary) AS total_salary
FROM employee_data
GROUP BY Department
ORDER BY total_salary DESC
LIMIT 3;
