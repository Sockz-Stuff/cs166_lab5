SELECT pid FROM CATALOG
WHERE cost<10;

SELECT pname FROM parts
WHERE pid IN
(SELECT pid FROM CATALOG
WHERE cost <10);

SELECT address from Suppliers
WHERE sid IN
(SELECT sid FROM Catalog
WHERE pid IN
(SELECT pid FROM parts
WHERE pname = 'Fire Hydrant Cap'));

SELECT sname FROM Suppliers 
WHERE sid IN
(SELECT sid FROM CATALOG
WHERE pid IN
(SELECT pid FROM parts
WHERE color = 'Green'));

SELECT sname, pname FROM parts
CROSS JOIN Suppliers;

