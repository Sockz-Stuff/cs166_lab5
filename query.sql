
SELECT pid
 FROM Catalog
 WHERE cost<10;

Select pname
 FROM Parts
 WHERE pid IN (Select pid
	     FROM Catalog
	     WHERE cost<10);

Select address
 FROM Suppliers
 WHERE sid IN (Select sid
		FROM Catalog
		WHERE pid IN (Select pid
				FROM Parts
				Where pname='Fire Hydrant Cap'));

Select sname
 FROM Suppliers
 WHERE sid in (Select sid
		FROM Catalog
		WHERE pid IN (Select pid 
				FROM Parts
				WHERE color='Green'));
Select sname,pname
 FROM Parts
 CROSS JOIN Suppliers;
