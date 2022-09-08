# skinfa

Penunjang KBM

1. Menampilkan data dari dua tabel (orders dan customers)

```sql
SELECT o.OrderID, o.OrderDate, o.CustomerID,
c.CompanyName, c.ContactName, c.City, c.Phone
FROM orders o, customers c
WHERE o.CustomerID = c.CustomerID
```

2. Menampilkan data dari dua tabel (orders dan customers) disertai dengan kriteria tertentu yakni dari kota London

```sql
SELECT o.OrderID, o.OrderDate, o.CustomerID,
c.CompanyName, c.ContactName, c.City, c.Phone
FROM orders o, customers c
WHERE o.CustomerID = c.CustomerID AND c.City = 'London'
```
