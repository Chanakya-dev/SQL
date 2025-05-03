## 🧩 **1. DDL (Data Definition Language)**

These commands are used to **define and modify** the structure of the database objects like tables, schemas, etc.

| Command    | Purpose                                               |
| ---------- | ----------------------------------------------------- |
| `CREATE`   | Creates a new table, database, view, etc.             |
| `ALTER`    | Modifies an existing database object                  |
| `DROP`     | Deletes objects like tables or databases              |
| `TRUNCATE` | Removes all records from a table (faster than DELETE) |
| `RENAME`   | Renames a table or column                             |

> 🔸 **Auto-committed** — can't be rolled back

---

## 📊 **2. DML (Data Manipulation Language)**

These commands are used to **manipulate data** in the database.

| Command  | Purpose                                |
| -------- | -------------------------------------- |
| `SELECT` | Retrieves data from one or more tables |
| `INSERT` | Adds new rows into a table             |
| `UPDATE` | Modifies existing data in a table      |
| `DELETE` | Removes rows from a table              |

> 🔸 Works within **transactions** — can be rolled back or committed

---

## 🔐 **3. DCL (Data Control Language)**

These commands are used to **control access** to data in the database.

| Command  | Purpose                        |
| -------- | ------------------------------ |
| `GRANT`  | Gives user access privileges   |
| `REVOKE` | Removes user access privileges |

---

## 🔄 **4. TCL (Transaction Control Language)**

Used to manage **transactions** and ensure data integrity.

| Command           | Purpose                               |
| ----------------- | ------------------------------------- |
| `COMMIT`          | Saves changes permanently             |
| `ROLLBACK`        | Cancels changes made in a transaction |
| `SAVEPOINT`       | Sets a point to roll back to          |
| `SET TRANSACTION` | Sets properties like isolation level  |

---

## 🔍 **5. DQL (Data Query Language)**

Some classify `SELECT` separately under **DQL** because it's **only used for querying** and not modifying data.

| Command  | Purpose                        |
| -------- | ------------------------------ |
| `SELECT` | Retrieves data from a database |

---

### 📝 Summary Table

| SQL Category | Commands                                             |
| ------------ | ---------------------------------------------------- |
| **DDL**      | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`      |
| **DML**      | `SELECT`, `INSERT`, `UPDATE`, `DELETE`               |
| **DCL**      | `GRANT`, `REVOKE`                                    |
| **TCL**      | `COMMIT`, `ROLLBACK`, `SAVEPOINT`, `SET TRANSACTION` |
| **DQL**      | `SELECT`                                             |

---
