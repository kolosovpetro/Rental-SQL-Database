/* Return a list of Suppliers containing company name, contact name, contact title and region description. */
SELECT DISTINCT sup.ContactName, sup.CompanyName, sup.ContactTitle, region.RegionDescription
FROM Suppliers sup
JOIN Products prod ON prod.SupplierID = sup.SupplierID
JOIN [Order Details] details ON details.ProductID = prod.ProductID
JOIN Orders orders ON orders.OrderID = details.OrderID
JOIN Employees emp ON emp.EmployeeID = orders.EmployeeID
JOIN EmployeeTerritories employeeTerritories ON employeeTerritories.EmployeeID = emp.EmployeeID
JOIN Territories territories ON territories.TerritoryID = employeeTerritories.TerritoryID
JOIN Region region ON region.RegionID = territories.RegionID
