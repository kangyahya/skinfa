# skinfa

Penunjang KBM

1. Menampilkan data dari dua tabel

```sql
SELECT o.OrderID, o.OrderDate, o.CustomerID,
c.CompanyName, c.ContactName, c.City, c.Phone
FROM orders o, customers c
WHERE o.CustomerID = c.CustomerID
```
