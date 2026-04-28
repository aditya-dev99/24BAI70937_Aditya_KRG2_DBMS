SELECT s.sup_name, p.prod_name, o.qty
FROM Orders o
JOIN Products p ON o.prod_id = p.prod_id
JOIN Suppliers s ON p.sup_id = s.sup_id;
