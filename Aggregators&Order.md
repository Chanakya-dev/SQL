### 🔹 **1. ORDER BY Clause**

* **Purpose:** Sorts the result set of a query by one or more columns.
* **Syntax:**

  ```sql
  SELECT column1, column2
  FROM table_name
  ORDER BY column1 [ASC|DESC], column2 [ASC|DESC];
  ```
* **Default Order:** `ASC` (ascending)
* **Examples:**

  ```sql
  SELECT * FROM employees ORDER BY salary DESC;
  ```

---

### 🔹 **2. GROUP BY Clause**

* **Purpose:** Groups rows that have the same values into summary rows.
* **Syntax:**

  ```sql
  SELECT column1, AGG_FUNCTION(column2)
  FROM table_name
  GROUP BY column1;
  ```
* **Must use aggregate functions** with `GROUP BY`.
* **Examples:**

  ```sql
  SELECT department, COUNT(*) 
  FROM employees 
  GROUP BY department;
  ```

---

### 🔹 **3. Aggregate Functions**

| Function  | Description                  |
| --------- | ---------------------------- |
| `COUNT()` | Counts the number of rows    |
| `SUM()`   | Calculates the total sum     |
| `AVG()`   | Calculates the average value |
| `MIN()`   | Finds the minimum value      |
| `MAX()`   | Finds the maximum value      |

**Example:**

```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department;
```

---

### 🔹 **4. HAVING vs WHERE Clause**

| Feature           | `WHERE`                   | `HAVING`                     |
| ----------------- | ------------------------- | ---------------------------- |
| Used With         | Individual rows           | Groups created by `GROUP BY` |
| Filter Time       | Before grouping           | After grouping               |
| Aggregate Allowed | ❌ Cannot use aggregates   | ✅ Can use aggregates         |
| Clause Order      | Appears before `GROUP BY` | Appears after `GROUP BY`     |

**Example:**

```sql
-- Using WHERE
SELECT * 
FROM employees 
WHERE salary > 50000;

-- Using HAVING with GROUP BY
SELECT department, AVG(salary) AS avg_sal
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;
```

