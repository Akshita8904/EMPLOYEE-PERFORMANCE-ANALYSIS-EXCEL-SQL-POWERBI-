select * from employeeData .`employee data`;

-- 1. Total Employees
SELECT COUNT(*) AS Total_Employees
FROM employee_data;

-- 2. Total Employees Who Left
SELECT COUNT(*) AS Attrition_Count
FROM employee_data
WHERE Attrition = 'Yes';

-- 3. Attrition Rate (%)
SELECT 
    ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) / COUNT(*),1) AS Attrition_Rate
FROM employee_data;

-- 4. Average Age of Employees
SELECT ROUND(AVG(Age),0) AS Average_Age
FROM employee_data;

-- 5. Average Monthly Salary
SELECT ROUND(AVG(MonthlyIncome),0) AS Avg_Salary
FROM employee_data;

-- 6. Employees by Gender
SELECT Gender, COUNT(*) AS Total
FROM employee_data
GROUP BY Gender;

-- 7. Employees by Department
SELECT Department, COUNT(*) AS Total_Employees
FROM employee_data
GROUP BY Department
ORDER BY Total_Employees DESC;

-- 8. Attrition by Department
SELECT Department, COUNT(*) AS Attrition_Count
FROM employee_data
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Attrition_Count DESC;

-- 9. Attrition by Education Field
SELECT EducationField, COUNT(*) AS Attrition_Count
FROM employee_data
WHERE Attrition = 'Yes'
GROUP BY EducationField
ORDER BY Attrition_Count DESC;

-- 10. Attrition by Job Role
SELECT JobRole, COUNT(*) AS Attrition_Count
FROM employee_data
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Attrition_Count DESC;

-- 11. Attrition by Age Group
SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '55+'
    END AS Age_Group,
    COUNT(*) AS Attrition_Count
FROM employee_data
WHERE Attrition = 'Yes'
GROUP BY Age_Group
ORDER BY Age_Group;

-- 12. Attrition by Years at Company
SELECT YearsAtCompany, COUNT(*) AS Attrition_Count
FROM employee_data
WHERE Attrition = 'Yes'
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

-- 13. Average Salary by Job Role
SELECT JobRole, ROUND(AVG(MonthlyIncome),0) AS Avg_Salary
FROM employee_data
GROUP BY JobRole
ORDER BY Avg_Salary DESC;

-- 14. Average Years of Experience by Department
SELECT Department, ROUND(AVG(YearsAtCompany),1) AS Avg_Experience
FROM employee_data
GROUP BY Department
ORDER BY Avg_Experience DESC;

-- 15. Attrition by Salary Range
SELECT 
    CASE
        WHEN MonthlyIncome <= 5000 THEN 'Up to 5K'
        WHEN MonthlyIncome BETWEEN 5001 AND 10000 THEN '5K-10K'
        WHEN MonthlyIncome BETWEEN 10001 AND 15000 THEN '10K-15K'
        ELSE '15K+'
    END AS Salary_Range,
    COUNT(*) AS Attrition_Count
FROM employee_data
WHERE Attrition = 'Yes'
GROUP BY Salary_Range
ORDER BY Attrition_Count DESC;
