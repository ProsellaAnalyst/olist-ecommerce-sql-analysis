# Project Setup Guide

This documents the environment setup for running this SQL project locally in GitHub Codespaces.

---

## Prerequisites
- GitHub account
- Access to GitHub Codespaces

---

## 1. Open the Codespace
- Go to the repository on GitHub
- Click **Code → Codespaces → Open in Codespace**

---

## 2. Install PostgreSQL
Run this in the terminal:
```bash
sudo apt-get update && sudo apt-get install -y postgresql postgresql-contrib
```

---

## 3. Start PostgreSQL
Run this every time you open the Codespace:
```bash
sudo service postgresql start
```

---

## 4. Set Up the Database
```bash
sudo su - postgres
createdb olist
psql -c "ALTER USER postgres PASSWORD 'postgres';"
exit
```

---

## 5. Connect the VS Code Extension
- Install **PostgreSQL** by Chris Kolkman from the Extensions marketplace
- Click **"Select Postgres Server"** at the bottom of VS Code
- Fill in:
  - Host: `localhost`
  - User: `postgres`
  - Password: `postgres`
  - Port: `5432`
  - Database: `olist`
  - Connection: **Standard Connection**

---

## 6. Load the Data
*(To be updated)*

---

## 7. Run SQL Files
- Open any `.sql` file
- Highlight the code
- Press **Ctrl + Enter** to run

---

## Other Things to Know

### Previewing CSV Files Before Loading Data
Before creating your tables, you can peek at any CSV file directly in the terminal to see the column names and sample data. This helps you decide column names and data types before writing your `CREATE TABLE` statements.

```bash
head -3 data/olist_orders_dataset.csv
head -3 data/olist_customers_dataset.csv
head -3 data/olist_order_items_dataset.csv
```

The first row returned is always the column headers. The rows below show you what the actual data looks like — use this to determine whether a column should be `VARCHAR`, `INTEGER`, `NUMERIC`, or `TIMESTAMP`.