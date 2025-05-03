## 📘 SQL Subqueries Notes — Focused on `=`, `IN`, `ALL`, `ANY`

---

### 🔹 What is a Subquery?

A **subquery** is a SQL query nested inside another query. It is used to return data that will be used in the main query.

---

## 🔸 Subquery with `=` Operator

### ✅ **Syntax:**

```sql
SELECT column1, column2
FROM table
WHERE column = (SELECT single_column FROM table WHERE condition);
```

### ✅ **Example:**

```sql
SELECT sname, age
FROM studentdata
WHERE age = (SELECT MAX(age) FROM studentdata);
```

📌 Finds the student(s) with the **maximum age**.

---

## 🔸 Subquery with `IN` Operator

### ✅ **Syntax:**

```sql
SELECT column1, column2
FROM table
WHERE column IN (SELECT column FROM table WHERE condition);
```

### ✅ **Example:**

```sql
SELECT sname, age
FROM studentdata
WHERE age IN (SELECT MAX(age) FROM studentdata);
```

📌 Checks if the student's age is **in the result set** returned by the subquery.

---

## 🔸 Subquery with `ANY` Operator

### ✅ **Syntax:**

```sql
SELECT column1, column2
FROM table
WHERE column <|=|> ANY (SELECT column FROM table WHERE condition);
```

### ✅ **Example:**

```sql
SELECT sname, age
FROM studentdata
WHERE age < ANY (
  SELECT age 
  FROM studentdata 
  WHERE sid IN (SELECT fsid FROM mobiledata)
);
```

📌 Finds students whose age is **less than any one** of the ages from the subquery.

---

## 🔸 Subquery with `ALL` Operator

### ✅ **Syntax:**

```sql
SELECT column1, column2
FROM table
WHERE column <|=|> ALL (SELECT column FROM table WHERE condition);
```

### ✅ **Example:**

```sql
SELECT sname, age
FROM studentdata
WHERE age < ALL (
  SELECT age 
  FROM studentdata 
  WHERE sid IN (SELECT fsid FROM mobiledata)
);
```

📌 Finds students whose age is **less than every value** returned by the subquery.

---

## 🔍 More Real-World Examples

### ➤ Subquery using `=`

```sql
SELECT sname, age
FROM studentdata
WHERE age = (
  SELECT MAX(age)
  FROM studentdata
  WHERE sid IN (SELECT fsid FROM mobiledata)
);
```

📌 Finds student(s) with the **highest age** among those linked to mobile data.

---

## ✅ Summary Table

| Operator | Works With      | Meaning                                   | Use Case                         |
| -------- | --------------- | ----------------------------------------- | -------------------------------- |
| `=`      | Single Value    | Equals to subquery result                 | Max/Min comparisons              |
| `IN`     | Multiple Values | Matches any in the subquery result        | Filter with a list of values     |
| `ANY`    | Multiple Values | True if condition matches **any** value   | Greater/Less than **any** value  |
| `ALL`    | Multiple Values | True if condition matches **every** value | Greater/Less than **all** values |

---
