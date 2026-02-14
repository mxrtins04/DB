SELECT SUM(QuantityOnHand) AS TotalQuantity, 
       AVG(QuantityOnHand) AS AverageQuantity, 
       MIN(QuantityOnHand) AS MinimumQuantity, 
       MAX(QuantityOnHand) AS MaximumQuantity, 
       COUNT(QuantityOnHand) AS RowCount
FROM INVENTORY;
