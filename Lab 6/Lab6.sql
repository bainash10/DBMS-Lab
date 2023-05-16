SELECT ISNUMERIC ('101.99') AS Is_a_Number;

SELECT productid, listprice, IIF(listprice>50,'high', 'low') AS PricePoint /*iif le yedi condn true high natra low*/
From production.product

SELECT Name, Color, Size,
Choose (ProductCategoryID,'Bikes','Components','Clothing','Accessories') AS Category
From SalesLT.Product;

SELECT Name, Size AS NumericSize
From SalesLT.Product
WHERE ISNUMERIC(Size) = 1; /*is numeric le yedi true vane 1 natra 0*/

SELECT Name, IIF(ProductCategoryID IN (5,6,7), 'Bike','Other')
ProductType
From SalesLT.Product;

SELECT Name, IIF(ISNUMERIC(Size)=1,'Numeric','Non-Numeric') SizeType
From SalesLT.Product

SELECT TOP(3) ProductID, Name, ListPrice,
RANK() OVER(ORDER BY ListPrice DESC) AS RankByPrice
From Production.Product
Order By RankByPrice;

SELECT c.Name AS Category, p.Name AS Product, ListPrice,
RANK() OVER(Partition by c.Name ORDER BY ListPrice DESC)
AS RankByPrice
FROM SalesLT.Product AS p
JOIN SalesLT.ProductCategory AS c
ON p.ProductCategoryID = c.ProductcategoryID
ORDER By Category, RankByPrice;

SELECT  COUNT(*) AS oorderLines,
SUM(OrderQty*UnitPrice) AS TotalSales
FROM Sales.SalesOrderDetail;

SELECT COUNT(p.ProductID) BikeModels, AVG(p.ListPrice)
AveragePrice
From SalesLT.Product AS p
JOIN SalesLT.ProductCategory AS c
On p.ProductCategoryID = c.ProductCategoryID
Where c.Name Like '%Bikes';

SELECT CustomerID, Count(*) AS Orders
FROM SalesLT.SalesOrderHeader
GROUP BY OrderDate;

SELECT Salesperson, Count(CustomerID) Customers
FROM SalesLT.Customer
GROUP BY SalesPerson
Order BY SalesPerson;

SELECT c.Salesperson, SUM(oh.SubTotal) SalesREvenue
FROM SalesLT.Customer c
JOIN SalesLT.SalesOrderHeader oh
ON c.CustomerID = oh.CustomerID
GROUP BY c.Salesperson
ORDER BY SalesRevenue DESC;

SELECT c.Salesperson, CONCAT(c.FirstName + ' ', c.LastName) AS
Customer, ISNULL(SUM(oh.SubTotal),0.00)SalesRevenue
FROM SalesLT.Customer c
LEFT JOIN SalesLT.SalesOrderHeader oh
ON c.CustomerID = oh.CustomerID
Group By c.Salesperson, CONCAT(c.FirstName + ' ', c.LastName)
ORDER BY SalesRevenue DESC, CUSTOMER;

SELECT CustomerID, Count(*) AS Orders
FROM SalesLT.SalesOrderHeader
Group BY CustomerID
Having Count(*) > 0;

SELECT Salesperson, Count(CustomerID) Customers
FROM SalesLT.Customer
Where Count(CustomerID)>100
Group By Salesperson
Order By Salesperson;

SELECT SalesPerson, COunt(CustomerID) Customers
From SalesLT.Customer
GROUP BY Salesperson
Having Count(CustomerID)>100
ORDER BY Salesperson;

SELECT countryregion, city FROM HR.employees
union
select countryregion, city From Sales.Customers;

SELECT first_name, last_name from HR.Employees
UNION
SELECT first_name, last_name from hr.dependents

SELECT first_name, last_name from HR.Employees
EXCEPT
SELECT first_name, last_name from hr.dependents

SELECT first_name, last_name from HR.Employees
Intersect
SELECT first_name, last_name from hr.dependents



