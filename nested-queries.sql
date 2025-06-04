-- 1. Product name(s) of the most expensive products
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (
    SELECT MAX(UnitPrice) FROM Products
);

-- 2. Order ID, shipping name, and address for orders shipped via "Federal Shipping"
SELECT OrderID, ShipName, ShipAddress
FROM Orders
WHERE ShipVia = (
    SELECT ShipperID FROM Shippers
    WHERE CompanyName = 'Federal Shipping'
);

-- 3. Order IDs of orders that ordered "Sasquatch Ale"
SELECT OrderID
FROM `order details`
WHERE ProductID = (
    SELECT ProductID FROM Products
    WHERE ProductName = 'Sasquatch Ale'
);

-- 4. Name of the employee that sold order 10266
SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID = (
    SELECT EmployeeID FROM Orders
    WHERE OrderID = 10266
);

-- 5. Name of the customer that bought order 10266
SELECT ContactName
FROM Customers
WHERE CustomerID = (
    SELECT CustomerID FROM Orders
    WHERE OrderID = 10266
);
