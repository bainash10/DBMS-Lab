select emp.first_Name, dept.department_name
From HR.employees AS emp
JOIN HR.departments AS dept
ON emp.department_id = dept.department_id

SELECT SalesLT.Product.Name As ProductName, SalesLT.productCategory.Name AS Category
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory ON
SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID;

SELECT p.Name As ProductName, c.Name AS Category
FROM SalesLT.Product AS p JOIN SalesLT.ProductCategory c /*AS lekheni huncha nalekhe ni huncha*/
ON p.ProductCategoryID = c.ProductCategoryID;

SELECT oh.OrderDate, oh.SalesOrderNumber, p.Name As ProductName, od.OrderQty, od.UnitPrice, od.LineTotal
From SalesLT.SalesOrderHeader AS oh
Join SalesLT.SalesOrderDetail AS od
ON od.SalesOrderID = oh.SalesOrderID
Join SalesLT.Product AS p
ON od.ProductID=p.ProductID OR od.UnitPrice = p.ListPrice --Note Multiple Predicates
Order BY oh.OrderDate, oh.SalesOrderID, od.SalesOrderDetailID;

SELECT e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id
FROM hr.employees e JOIN hr.departments d
ON (e.department_id = d.department_id)
AND e.manager_id=149;

SELECT e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id
FROM hr.employees e JOIN hr.departments d
ON (e.department_id = d.department_id)
WHERE e.manager_id=149;

SELECT emp.First_Name,
dept.department_name
FROM HR.Employees AS emp
LEFT join HR.departments AS dept
ON emp.department_id = dept.department_id

SELECT emp.First_Name,
dept.department_name
FROM HR.Employees AS emp
LEFT join HR.departments AS dept
ON emp.department_id = dept.department_id

SELECT emp.First_Name,
dept.department_name
FROM HR.Employees AS emp
FULL JOIN HR.departments AS dept
ON emp.department_id = department_id

SELECT cus.firstname+cus.middlename+cus.lastname as customer
From SalesLT.Customer as cus full join SalesLT.SalesOrderHeader as sale 
on cus.CustomerID=sale.CustomerID

SELECT 
from

