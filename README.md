# Banking SQL Project

A simple banking database built in SQL as part of my learning with Code First Girls.

## About
This project explores how customer, account and transaction data might be structured 
and queried in a banking environment. It was built to apply SQL skills to a real-world 
context relevant to financial services.

## Database Structure
Three related tables:
- **Customers** — customer ID, name and city
- **Accounts** — account ID, customer ID, account type and balance
- **Transactions** — transaction ID, account ID, amount, type and date

## Queries Include
- Filtering accounts by balance
- Filtering by account type
- Filtering transactions by type
- Identifying low balance accounts
- JOIN to connect customer names with their account details
- JOIN combined with WHERE filter

## Tools Used
- SQL
- SQLiteOnline (sqliteonline.com)
