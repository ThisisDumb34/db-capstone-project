
SELECT * FROM OrdersView;


SELECT Customers.CustomerID, Customers.Name, Orders.OrderID, 
Orders.Total AS 'Cost', MenuItems.Name, 
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
LEFT JOIN MenuItems ON MenuItems.MenuItemID = Orders.MenuItemID 
WHERE Orders.BillAmount > 150 ORDER BY Orders.Total;



CALL GetMaxQuantity();


SET @id = 1;
EXECUTE GetOrderDetail USING @id;


CALL CancelOrder(5);
/* SELECT * FROM Orders; */