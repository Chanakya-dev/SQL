## 📘 SQL Intermediate Notes

---

### 🔹 1. `CASE` (Switch Case Equivalent in SQL)

#### ✅ **Purpose:**

Used for conditional logic inside SQL queries (similar to switch-case in programming).

#### ✅ **Syntax:**

```sql
SELECT column,
       CASE
           WHEN condition1 THEN result1
           WHEN condition2 THEN result2
           ELSE default_result
       END AS alias_name
FROM table;
```

#### ✅ **Example:**

```sql
SELECT sname, age,
       CASE
           WHEN age < 18 THEN 'Minor'
           WHEN age BETWEEN 18 AND 60 THEN 'Adult'
           ELSE 'Senior'
       END AS age_group
FROM studentdata;
```

---

### 🔹 2. `AND`, `OR`, `NOT` Operators

#### ✅ `AND` – All conditions must be true

```sql
SELECT * FROM studentdata
WHERE age > 18 AND city = 'Delhi';
```

#### ✅ `OR` – At least one condition must be true

```sql
SELECT * FROM studentdata
WHERE age < 18 OR city = 'Mumbai';
```

#### ✅ `NOT` – Negates a condition

```sql
SELECT * FROM studentdata
WHERE NOT city = 'Delhi';
```

#### ✅ Combine:

```sql
SELECT * FROM studentdata
WHERE age > 18 AND (city = 'Delhi' OR city = 'Mumbai');
```

---

### 🔹 3. `DISTINCT`

#### ✅ **Purpose:**

Removes duplicate values from the result set.

#### ✅ **Syntax:**

```sql
SELECT DISTINCT column1
FROM table;
```

#### ✅ **Example:**

```sql
SELECT DISTINCT city
FROM studentdata;
```

📌 This gives unique cities in the `studentdata` table.

---

### 🔹 4. `LIMIT`

#### ✅ **Purpose:**

Restricts the number of rows returned by a query.

#### ✅ **Syntax:**

```sql
SELECT * FROM table
LIMIT number;
```

#### ✅ **Example:**

```sql
SELECT * FROM studentdata
LIMIT 5;
```

📌 This returns only the first 5 rows.

---

### 🧠 Bonus: Combine `DISTINCT` and `LIMIT`

```sql
SELECT DISTINCT city
FROM studentdata
LIMIT 3;
```

📌 Returns the first 3 unique cities.

---
