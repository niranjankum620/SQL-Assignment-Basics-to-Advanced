# SQL-Assignment-Basics-to-Advanced

# SQL-Assignment-Basics-to-Advanced

Welcome to the **SQL Assignment: Basics to Advanced** repository!  
This project is designed to strengthen your SQL skills using both **MySQL** and **PostgreSQL** syntaxes — including real-world use cases such as altering tables, filtering employee records, and sorting datasets.

---

## 📚 Assignment Overview

This SQL assignment covers a variety of topics:

- Table creation and alteration.
- Column data type modification.
- Renaming columns for better clarity.
- Retrieving filtered employee records based on date.
- Sorting employee lists based on salary and age.
- Syntax comparisons between **MySQL** and **PostgreSQL**.

---

## 💡 Key Learning Point

A common point of confusion tackled in this assignment:
**Changing a Column’s Data Type**  

| Database      | Syntax Example |
|---------------|----------------|
| PostgreSQL    | `ALTER TABLE employee ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;` |
| MySQL         | `ALTER TABLE employee MODIFY COLUMN salary INT;` |

This difference between SQL engines will help sharpen your attention to platform-specific syntax.

---

## 🧾 Files Included

- `ASSIGNMENT 1.sql`:  
  Contains SQL queries that demonstrate:
  - Adding columns.
  - Renaming columns.
  - Changing data types.
  - Filtering and ordering data.
  - Date-based query examples.

---

## 🖥️ How to Use

1. Clone this repository.
2. Open `ASSIGNMENT 1.sql` in:
   - **MySQL Workbench** for MySQL users.
   - **pgAdmin** for PostgreSQL users.
3. Run the queries step by step.
4. Observe the output and tweak for practice!

---

## 🧑‍💻 Contributing

Pull requests are welcome!  
If you have ideas to improve the queries, correct errors, or add exercises — feel free to fork this repo and create a PR.

---

## 📄 License

Distributed under the MIT License.  
See `LICENSE` for more information.

---

Happy Querying! 🐬🐘
