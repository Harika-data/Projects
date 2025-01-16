-- Total Employee
SELECT COUNT(*) FROM hr_analytics.employee_attrition
AS Total_Employee;
-- Attrition count
SELECT COUNT(*) FROM hr_analytics.employee_attrition WHERE Attrition = 'Yes';
-- Attrition Rate
SELECT 
    (SELECT COUNT(*) FROM hr_analytics.employee_attrition WHERE Attrition = 'Yes') * 100.0 / 
    (SELECT COUNT(*) FROM hr_analytics.employee_attrition) AS Attrition_Rate;
-- Active employee
SELECT Attrition, Employee_status, COUNT(*) AS COUNT
FROM hr_analytics.employee_attrition
GROUP BY Attrition,Employee_status;
-- Avg age
SELECT AVG(Age) as Avg_age
FROM hr_analytics.employee_attrition; 
-- kpi
-- Total employee by gender
SELECT Gender, COUNT(*) AS Total_employee_by_gender
FROM hr_analytics.employee_attrition
WHERE Attrition = 'yes'
GROUP BY Gender;
-- Total employee
-- Education wise Attrition
SELECT Education_level, COUNT(*) AS Education_Attrition
FROM hr_analytics.employee_attrition
WHERE Attrition = 'yes'
GROUP BY Education_level;
-- Education field wise Attrition
SELECT EducationField, COUNT(*) AS Field_attrition
FROM hr_analytics.employee_attrition
WHERE Attrition = 'yes'
GROUP BY EducationField;
-- Jobrole wise attrition
SELECT JobRole, COUNT(*) AS Jobrole_Attrition
FROM hr_analytics.employee_attrition
WHERE Attrition = 'yes'
GROUP BY JobRole;
-- Maritalstatus wise attrition
SELECT MaritalStatus, COUNT(*) AS Maritalstatus_Attrition
FROM hr_analytics.employee_attrition
WHERE Attrition = 'yes'
GROUP BY MaritalStatus;
-- Department wise attrition
SELECT Department, COUNT(*) AS Department_attrition
FROM hr_analytics.employee_attrition
WHERE Attrition = 'yes'
GROUP BY Department;
-- Age group attrition
SELECT Age_group, COUNT(*) AS Agegroup_Attrition
FROM hr_analytics.employee_attrition
WHERE Attrition = 'yes'
GROUP BY Age_group;
-- ATTRITION
-- Avg job satisfaction ratings
SELECT AVG(JobSatisfaction) AS Avg_jobsatisfaction
FROM hr_analytics.employee_attrition;


