## 🔹 **SQL Joins**

### ➤ **Purpose**:

Joins are used to combine rows from two or more tables based on a related column between them.

---

### ✅ **Types of Joins:**

#### 1. **INNER JOIN**

* Returns only the matching rows from both tables.

```sql
SELECT a.col1, b.col2
FROM tableA a
INNER JOIN tableB b ON a.id = b.a_id;
```

#### 2. **LEFT JOIN** (or LEFT OUTER JOIN)

* Returns all rows from the **left table**, and matching rows from the right table. Fills `NULL` if no match.

```sql
SELECT a.col1, b.col2
FROM tableA a
LEFT JOIN tableB b ON a.id = b.a_id;
```

#### 3. **RIGHT JOIN** (or RIGHT OUTER JOIN)

* Returns all rows from the **right table**, and matching rows from the left table. Fills `NULL` if no match.

```sql
SELECT a.col1, b.col2
FROM tableA a
RIGHT JOIN tableB b ON a.id = b.a_id;
```

#### 4. **FULL JOIN** (or FULL OUTER JOIN)

* Returns all rows when there is a match in either left or right table. Fills `NULL` where no match exists.

```sql
SELECT a.col1, b.col2
FROM tableA a
FULL OUTER JOIN tableB b ON a.id = b.a_id;
```

#### 5. **CROSS JOIN**

* Returns **Cartesian product**: every row of the first table with every row of the second.

```sql
SELECT a.col1, b.col2
FROM tableA a
CROSS JOIN tableB b;
```

---

## 🔹 **SQL Relations (Database Relationships)**

### ➤ **Purpose**:

Defines how tables are connected to each other in a relational database.

### ✅ **Types of Relationships:**

#### 1. **One-to-One**

* One row in Table A is linked to **one and only one** row in Table B.
* Example: `users` ↔ `user_profiles`

#### 2. **One-to-Many** (Most Common)

* One row in Table A is linked to **multiple** rows in Table B.
* Example: `departments` → `employees`

#### 3. **Many-to-Many**

* Multiple rows in Table A can relate to multiple rows in Table B.
* Requires a **junction table** (e.g., `student_courses`).
* Example: `students` ↔ `courses`

---

## 🔹 **Foreign Key & Primary Key in Relations**

| Key Type    | Description                                |
| ----------- | ------------------------------------------ |
| Primary Key | Uniquely identifies each record in a table |
| Foreign Key | Points to a primary key in another table   |

**Example:**

```sql
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(100),
  dept_id INT,
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
```

---
