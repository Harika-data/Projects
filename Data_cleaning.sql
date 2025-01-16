CREATE DATABASE hr_analytics;
SELECT * FROM hr_analytics.employee_attrition;
ALTER TABLE hr_analytics.employee_attrition
CHANGE COLUMN ï»¿Age Age INT;
ALTER TABLE hr_analytics.employee_attrition
ADD COLUMN Employee_status VARCHAR(20);
UPDATE  hr_analytics.employee_attrition
SET Employee_status =
CASE WHEN Attrition = 'yes' THEN 'Ex_employee'
ELSE 'Active_employee'
END;
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE hr_analytics.employee_attrition
ADD COLUMN Education_level VARCHAR(20);
UPDATE hr_analytics.employee_attrition
SET Education_level =
CASE WHEN Education = '1' THEN 'Below college'
WHEN Education = '2'THEN 'College'
WHEN Education = '3' THEN 'Bachelors'
WHEN Education = '4' THEN 'Masters'
ELSE 'Doctors'
END ;
ALTER TABLE hr_analytics.employee_attrition
ADD COLUMN Age_group VARCHAR(6);
UPDATE hr_analytics.employee_attrition
SET Age_group =
CASE WHEN Age BETWEEN 20 AND 25 THEN '20-25'
WHEN Age BETWEEN 26 AND 35 THEN '26-35'
WHEN Age BETWEEN 36 AND 45 THEN '36-45'
WHEN Age BETWEEN 46 AND 55 THEN '46-55'
ELSE '55+'
END;




