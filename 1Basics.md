## 📘 **1. Schema Creation**

```sql
CREATE SCHEMA schema_name;
```

**Example:**

```sql
CREATE SCHEMA company;
```

---

## 🧱 **2. Create Table**

```sql
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);
```

**Example:**

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2),
    join_date DATE
);
```

---

## 🛠 **3. ALTER TABLE**

Used to modify the structure of an existing table.

### ➕ Add a Column

```sql
ALTER TABLE table_name ADD column_name datatype;
```

**Example:**

```sql
ALTER TABLE employees ADD department VARCHAR(50);
```

---

### ✏️ Modify Column

```sql
ALTER TABLE table_name MODIFY column_name new_datatype;
```

*(Note: Some databases use `ALTER COLUMN`)*

**Example (MySQL):**

```sql
ALTER TABLE employees MODIFY salary DECIMAL(12, 2);
```

**Example (PostgreSQL/SQL Server):**

```sql
ALTER TABLE employees ALTER COLUMN salary TYPE DECIMAL(12, 2);
```

---

### ❌ Drop Column

```sql
ALTER TABLE table_name DROP COLUMN column_name;
```

**Example:**

```sql
ALTER TABLE employees DROP COLUMN department;
```

---

### 🔄 Rename Column (DBMS-specific)

```sql
ALTER TABLE table_name RENAME COLUMN old_name TO new_name;
```

**Example (PostgreSQL):**

```sql
ALTER TABLE employees RENAME COLUMN name TO full_name;
```

---

### 🔄 Rename Table

```sql
ALTER TABLE old_table_name RENAME TO new_table_name;
```

**Example:**

```sql
ALTER TABLE employees RENAME TO employee_data;
```

---

## ✍️ **4. CRUD Operations**

### ✅ **C - INSERT**

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

**Example:**

```sql
INSERT INTO employees (id, name, salary, join_date)
VALUES (1, 'John Doe', 50000.00, '2023-01-15');
```

---

### 🔍 **R - SELECT**

```sql
SELECT * FROM table_name;
SELECT column1, column2 FROM table_name WHERE condition;
```

**Example:**

```sql
SELECT name, salary FROM employees WHERE salary > 40000;
```

---

### 🛠 **U - UPDATE**

```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```

**Example:**

```sql
UPDATE employees
SET salary = 55000.00
WHERE id = 1;
```

---

### ❌ **D - DELETE**

```sql
DELETE FROM table_name WHERE condition;
```

**Example:**

```sql
DELETE FROM employees WHERE id = 1;
```

---

## 🚮 **5. DROP vs TRUNCATE**

### 🔥 DROP TABLE

```sql
DROP TABLE table_name;
```

* Deletes **table + structure + data**.
* **Irreversible**.

**Example:**

```sql
DROP TABLE employees;
```

---

### 🧹 TRUNCATE TABLE

```sql
TRUNCATE TABLE table_name;
```

* Deletes **all data only**, keeps structure.
* Faster than DELETE.
* Cannot use WHERE clause.

**Example:**

```sql
TRUNCATE TABLE employees;
```

---
