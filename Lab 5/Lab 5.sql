select p.name, c.FirstName, c.LastName, c.Phone
FROM SalesLT.Product as p
CROSS JOIN SalesLt.Customer as c;

SELECT last_name, department_name
FROM hr.employees
CROSS JOIN hr.departments;

SELECT * from hr.employees
SELECT * from hr.departments

SELECT emp.First_Name as Employee,
man.First_Name AS Manager
FROM HR.Employees AS emp
LEFT JOIN HR.Employees AS man
ON emp.Manager_ID=man.Employee_ID;

SELECT emp.First_Name as Employee,
man.First_Name AS Manager
FROM HR.Employees AS emp
LEFT JOIN HR.Employees AS man
ON emp.Manager_ID=man.Employee_ID
where
man.Employee_ID is NULL;

Select worker.last_name + ' works for '
+ manager.last_name
FROM HR.employees worker, HR.employees manager
WHERE worker.manager_id= manager.employee_id;

SELECT e.last_name, e.salary, j.job_title
FROM HR.employees e JOIN HR.jobs j
ON e.salary
BETWEEN j.min_salary AND j.max_salary;

SELECT YEAR (SellStartDate) SellStartYear, ProductID, Name
FROM SalesLT.Product
Order By SellStartYear; 

SELECT YEAR(SellStartDate) SellStartYear, DATENAME(mm,SellStartDate)
SellStartMonth, DAY(SellStartDate) SellStartDay, DATENAME(dw, SellStartDate)
SellStartWeekday, ProductID, Name
From SalesLT.Product
ORDER BY SellStartYear;

SELECt Getdate();

SELECT CONCAT(FirstName + '', LastName) AS FullName
From SalesLT.Customer;

SELECT Name, ProductNumber, LEFT(ProductNumber,2) AS ProductType
From SalesLT.Product;

SELECT Name, ProductNumber, LEFT(ProductNumber,2) AS ProductType,
SUBSTRING (ProductNumber, CHarindex('-', ProductNumber)+1,4) AS ModelCode,
SUBSTRING (ProductNumber, LEN(ProductNumber)-CHARINDEX('-',REVERSE(RIGHT(ProductNumber,3)))+2,2)AS SizeCode
FROM SalesLT.Product;

