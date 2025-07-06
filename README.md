# 📘 Task 8: Stored Procedures and Functions

## 🎯 Objective
Modularize SQL logic by creating and using stored procedures and user-defined functions with parameters and conditions.

---

## 🛠️ Tool Used
- MySQL in Dbeaver

---

## ✅ What I Did

- Created stored procedures with parameters to fetch and analyze data.
- Used conditional logic (`IF`, `ELSE`) inside procedures.
- Created a user-defined function (UDF) to calculate total spend by customer.
- Called procedures and functions in SQL queries for reusable logic.

---

## 🧪 Procedures Created

### 1. GetOrdersByCustomer
- Takes customer ID as input.
- Returns list of their orders.

### 2. GetCustomerType
- Uses total order amount to classify customer as:
  - "Premium Customer" if total ≥ 500  
  - "Regular Customer" otherwise  

---

## 🧠 Function Created

### TotalSpend
- Input: customer ID
- Returns: total amount they have spent on orders
- Used in `SELECT` queries to get customer-wise spend.

---

## 📄 Usage Examples

- `CALL GetOrdersByCustomer(1);`
- `CALL GetCustomerType(2);`
- `SELECT name, TotalSpend(customer_id) FROM Customers;`

---

## ✅ Outcome
✔️ Learned how to:
- Use `CREATE PROCEDURE` and `CREATE FUNCTION`
- Pass parameters into procedures
- Write logic using `IF` conditions
- Return and reuse values through functions


