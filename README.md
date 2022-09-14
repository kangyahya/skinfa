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
6. Menampilkan Data dari Lima Tabel **(customers, employees, orders, orderdetails, products)**

```sql
SELECT  c.CustomerID AS CustID, c.CustomerName, o.OrderID AS ordID, o.OrderDate, (e.Lastname & ',' &' '& o.FirstName) AS EmployeeName, od.ProductID AS ProdID, p.ProductName, od.Quantity AS Qty  
FROM customers c, orders o, orderdetails od, products p, employees e
WHERE c.CustomerID = o.CustomerID AND o.OrderID = od.OrderID AND p.ProductID = od.ProductID AND e.EmpID = o.EmpID
```
7. Memanfaatkan View untuk menampilkan data dari beberapa tabel

> View adalah objek basis data yang digunakan untuk menampilkan data yang berasal dari satu atau lebih tabel. View Merupakan tabel Virtual yang tidak menyimpan data, tetapi memiliki beberapa perilaku tabel biasa
```sql
CREATE VIEW CustOrderEmp
AS
SELECT c.CustomerID, c.CompanyName, c.ContactName, o.OrderID, o.OrderDate, e.EmpID, e.LastName, e.FirstName
FROM customers c, orders o, employees e
WHERE c.CustomerID = o.CustomerID AND o.EmpID = e.EmpID
```