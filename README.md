# skinfa

Penunjang KBM

# Berikut adalah tabel tabel yang di gunakan untuk penunjang praktek basis data

## Tabel customers

![Tabel Customer](https://github.com/kangyahya/skinfa/blob/master/assets/customers.PNG "SELECT * FROM customers")

## Tabel employees

![Tabel Employees](https://github.com/kangyahya/skinfa/blob/master/assets/employees.PNG "SELECT * FROM employees")

## Tabel products

![Tabel Products](https://github.com/kangyahya/skinfa/blob/master/assets/products.PNG "SELECT * FROM products")

## Tabel orders

![Tabel Orders](https://github.com/kangyahya/skinfa/blob/master/assets/orders.PNG "SELECT * FROM orders")

## Tabel Detail Orders

![Tabel Order Detail](https://github.com/kangyahya/skinfa/blob/master/assets/orderdetails.PNG "SELECT * FROM orderdetails")

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

5. Menampilkan Data dari Empat Tabel **(customers, orders, orderdetails, products)**

```sql
SELECT c.CustomerID, c.CompanyName,
o.OrderDate, od.ProductID, p.ProductName, od.Quantity AS Qty, od.UnitPrice
FROM customers c, orders o, orderdetails od, products p
WHERE c.CustomerID = o.CustomerID AND o.OrderID = od.OrderID AND p.ProductID = od.ProductID
ORDER BY c.CustomerID
```
