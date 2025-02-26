-- Pratica S3/L3 --
--ES.1 -- RESULT: 830 
SELECT * FROM Orders

--ES.2 -- RESULT: 91
SELECT * FROM Customers

--ES.3 -- RESULT: 6
SELECT * FROM Customers
	WHERE City = 'London';

--ES.4 -- RESULT:
SELECT CustomerID, AVG(Freight) as MediaAritmeticaTrasporto
FROM Orders
GROUP BY CustomerID;

--ES.5 -- RESULT:
SELECT CustomerID, AVG(Freight) as MediaAritmeticaTrasporto
FROM Orders
WHERE CustomerID ='BOTTM'
GROUP BY CustomerID;

--ES.6 -- RESULT:
SELECT CustomerID, SUM(Freight) as SpeseTrasporto
FROM Orders
GROUP BY CustomerID

--ES.7 -- RESULT:
SELECT City , COUNT(CustomerID) as NumeroClienti
FROM Customers
GROUP BY City

--ES.8 -- RESULT:
SELECT OrderID , SUM(UnitPrice * Quantity) as CostoTotale
FROM [Order Details]
GROUP BY OrderID

--ES.9 -- RESULT:
SELECT OrderID , SUM(UnitPrice * Quantity) as CostoTotale
FROM [Order Details]
GROUP BY OrderID
HAVING OrderID = 10248;

--ES.10 -- RESULT:
SELECT CategoryID , SUM(UnitsInStock) as ProdottiCensiti
FROM Products
GROUP BY CategoryID

--ES.11 -- RESULT:
SELECT ShipCountry , COUNT(OrderID) as OrdiniXPaese
FROM Orders
GROUP BY ShipCountry

--ES.12 -- RESULT:
SELECT ShipCountry, AVG(Freight) as MediaTrasposto
FROM Orders
GROUP BY ShipCountry