## 🔐 MySQL User Privileges – Full Notes

### 1. **Create a New User**

```sql
CREATE USER 'Manas'@'localhost';
```

* This command creates a new user named **`Manas`** who can connect **only from the local machine**.
* Initially, the user has **no privileges**.
* ✅ **Optional (Recommended):** You can also set a password during creation:

  ```sql
  CREATE USER 'Manas'@'localhost' IDENTIFIED BY 'your_password';
  ```

---

### 2. **Grant Privileges to the User**

```sql
GRANT SELECT, UPDATE ON edutech.* TO 'Manas'@'localhost';
```

* Grants the **`SELECT`** and **`UPDATE`** privileges on **all tables** in the `edutech` database.
* This means `Manas` can:

  * View/read data (`SELECT`)
  * Modify existing data (`UPDATE`)
* `edutech.*` indicates all tables in the `edutech` database.

---

### 3. **Revoke Specific Privileges**

```sql
REVOKE SELECT ON edutech.* FROM 'Manas'@'localhost';
```

* Removes the **`SELECT`** privilege from the user.
* `Manas` can **no longer read data**, but can **still update** it.

---

### 4. **View Current Privileges**

```sql
SHOW GRANTS FOR 'Manas'@'localhost';
```

* Displays a list of all privileges currently assigned to `Manas`.
* Useful to verify the current access rights.

---

### 5. **Delete the User**

```sql
DROP USER 'Manas'@'localhost';
```

* Completely **removes the user account** from MySQL.
* All associated privileges are automatically deleted.

---

### 🧾 Final Summary

| Operation        | Result                                         |
| ---------------- | ---------------------------------------------- |
| Create User      | `Manas` can log in from `localhost`            |
| Grant Privileges | `Manas` gets `SELECT`, `UPDATE` on `edutech.*` |
| Revoke Privilege | `SELECT` removed; `UPDATE` remains             |
| Show Grants      | Lists privileges (expected: only `UPDATE`)     |
| Drop User        | Deletes `Manas` and removes all access         |

---
