## 🔄 **TCL (Transaction Control Language) Commands**

TCL commands manage changes made by DML statements (`INSERT`, `UPDATE`, `DELETE`). They ensure **data integrity and consistency** during a transaction.

---

### 🧩 What is a Transaction?

A **transaction** is a sequence of one or more SQL operations executed as a single unit. Either **all operations succeed** (and are committed), or **none do** (and are rolled back).

---

## ✅ 1. `COMMIT`

```sql
COMMIT;
```

* **Permanently saves** all changes made in the current transaction.
* Once committed, changes **cannot be undone**.
* Used when a transaction is **successfully completed**.

**Example:**

```sql
START TRANSACTION;
UPDATE accounts SET balance = balance - 500 WHERE id = 1;
UPDATE accounts SET balance = balance + 500 WHERE id = 2;
COMMIT;
```

---

## 🔄 2. `ROLLBACK`

```sql
ROLLBACK;
```

* **Undoes all changes** made since the last `COMMIT` or `SAVEPOINT`.
* Used to **abort** a transaction when something goes wrong.

**Example:**

```sql
START TRANSACTION;
UPDATE inventory SET stock = stock - 10 WHERE item = 'laptop';
ROLLBACK;  -- cancels the update
```

---

## 🎯 3. `SAVEPOINT`

```sql
SAVEPOINT savepoint_name;
```

* **Creates a point** inside a transaction to which you can roll back later.
* Allows **partial rollbacks** within a transaction.

**Example:**

```sql
START TRANSACTION;
UPDATE emp SET salary = 30000 WHERE id = 1;
SAVEPOINT sp1;
UPDATE emp SET salary = 50000 WHERE id = 2;
ROLLBACK TO sp1;  -- only rolls back the second update
COMMIT;
```

---

## 🧰 4. `ROLLBACK TO SAVEPOINT`

```sql
ROLLBACK TO savepoint_name;
```

* Rolls back the transaction **only to the specified savepoint**.
* Changes made **after** the savepoint are undone; changes **before** are kept.

**Note:** The transaction remains active and can still be committed.

---


## 📝 Summary Table

| Command                       | Purpose                                     |
| ----------------------------- | ------------------------------------------- |
| `START TRANSACTION` / `BEGIN` | Begins a new transaction                    |
| `COMMIT`                      | Saves all changes permanently               |
| `ROLLBACK`                    | Cancels all changes since last commit       |
| `SAVEPOINT`                   | Sets a restore point inside a transaction   |
| `ROLLBACK TO SAVEPOINT`       | Reverts to a specific savepoint only        ||
---
