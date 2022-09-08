# skinfa

Penunjang KBM

1. Menampilkan data dari dua tabel **(orders dan customers)**

```sql
SELECT o.OrderID, o.OrderDate, o.CustomerID,
c.CompanyName, c.ContactName, c.City, c.Phone
FROM orders o, customers c
WHERE o.CustomerID = c.CustomerID
```

2. Menampilkan data dari dua tabel **(orders dan customers)** disertai dengan kriteria tertentu yakni dari kota London

```sql
SELECT o.OrderID, o.OrderDate, o.CustomerID,
c.CompanyName, c.ContactName, c.City, c.Phone
FROM orders o, customers c
WHERE o.CustomerID = c.CustomerID AND c.City = 'London'
```

3. Menampilkan data dari 3 tabel **(orders, customers dan employees)**

```sql
SELECT o.OrderID, o.OrderDate,
c.CompanyName, c.ContactName, c.Phone,
e.LastName, e.Title
FROM orders o, customers c, employees e
WHERE o.CustomerID = c.CustomerID AND o.EmpID = e.EmpID
```

4. Menampilkan data dari 3 tabel **(orders, customers dan employees)** dengan kriteria yang nama depannya Margaret

```sql
SELECT o.OrderID, o.OrderDate,
c.CompanyName, c.ContactName, c.Phone,
e.LastName, e.Title
FROM orders o, customers c, employees e
WHERE o.CustomerID = c.CustomerID AND o.EmpID = e.EmpID AND e.FirstName='Margaret'
```
