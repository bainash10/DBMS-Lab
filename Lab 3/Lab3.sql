SELECT 
CASE
When shipdate is NULL then 'Awaiting Shipment'
ELSE 'Shipped'
END AS ShippingStatus
From SalesLT.SalesOrderHeader

SELECT SalesOrderID, Status,
CASE Status
When '1' then 'NA'
When '2' then 'Pending'
When '3' then 'Processing'
When '4' then 'Rejected'
When '5' then 'Completed'
End AS orderstatus
From SalesLT.SalesOrderHeader

SELECT Color
From SalesLT.Product;

SELECT DISTINCT Color
From SalesLT.Product;

SELECT DISTINCT Color, Name
From SalesLT.Product;

EXEC sp_help 'SalesLT.Product'; 

SELECT ProductCategoryID AS Category, Name, ListPrice
From SalesLT.Product
Order By Category DESC, ListPrice ASC;

SELECT Name, ListPrice
From SalesLT.Product
Order By ListPrice DESC;

SELECT Top 100 Name, ListPrice
From SalesLT.Product
Order By ListPrice DESC;

SELECT Top 65 Percent Name, ListPrice
From SalesLT.Product
Order By ListPrice DESC;

SELECT Top 65 with TIES Name, ListPrice
From SalesLT.Product
Order By ListPrice DESC;

SELECT count(*) From SalesLT.Product;

SELECT DISTINCT ISNULL(Color,'None') AS Color, ISNULL (Size, '-') AS
Size FROM SalesLT.Product ORDER BY Color;

SELECT TOP 100 Name, ListPrice
FROM SalesLT.Product ORDER BY ListPrice DESC;

SELECT Name, ListPrice
From SalesLT.Product
Order by ProductNumber OFFSET 0 ROWS FETCH NExt 10 ROWS Only;

SELECT Name, ListPrice
From SalesLT.Product
Order by ProductNumber OFFSET 10 ROWS FETCH FIRST 10 ROWS Only;

SELECT Name, ListPrice
From SalesLT.Product
Order by ProductNumber OFFSET 10 ROWS FETCH Next 10 ROWS Only;

SELECT CustomerID, LastName, Phone
FROM SalesLT.Customer
WHERE CustomerID = 605;

SELECT CustomerID, LastName, Phone, ModifiedDate
FROM SalesLT.Customer
WHERE LastName = 'Gates';

SELECT CustomerID, LastName, Phone, ModifiedDate
FROM SalesLT.Customer
WHERE ModifiedDate = '01-July-2006';

SELECT productnumber, Name, ListPrice
From SalesLT.Product
WHERE ProductNumber Like 'FR%';

SELECT productnumber, Name, ListPrice
From SalesLT.Product
WHERE ProductNumber Like '%FR';

SELECT productnumber, Name, ListPrice
From SalesLT.Product
WHERE ProductNumber Like '%FR%';

/* This is comment */

SELECT Name, ListPrice
From SalesLT.Product
Where ProductNumber Like 'FR-_[0-9][0-9]_-[0-9][0-9]';

SELECT Name
From SalesLT.Product
Where SellEndDate IS NOT NULL;

SELECT Name
From SalesLT.Product
Where SellEndDate BETWEEN '2006/1/1' AND '2006/12/31';

SELECT ProductCategoryID, Name, ListPrice
From SalesLT.Product
Where ProductCategoryID IN (5,6,7);

SELECT CustomerID, LastName, Phone, ModifiedDate
From SalesLT.Customer
Where ModifiedDate <> '01-July-2006';

