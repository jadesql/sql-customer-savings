-- Banking SQL Project
-- Built as part of Code First Girls Degree Programme

-- Create Tables

CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    City TEXT
);

CREATE TABLE Accounts (
    AccountID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    AccountType TEXT,
    Balance REAL
);

CREATE TABLE Transactions (
    TransactionID INTEGER PRIMARY KEY,
    AccountID INTEGER,
    Amount REAL,
    TransactionType TEXT,
    TransactionDate TEXT
);

-- Insert Data

INSERT INTO Customers (CustomerID, FirstName, LastName, City)
VALUES
(1, 'Jade', 'Jones', 'London'),
(2, 'Ellie', 'Brown', 'Manchester'),
(3, 'Priya', 'James', 'Birmingham'),
(4, 'Ollie', 'Wilson', 'Leeds'),
(5, 'Jack', 'Roberts', 'London');

INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance)
VALUES
(1, 1, 'Easy Access Savings', 5000.00),
(2, 2, 'Fixed Term Savings', 12000.00),
(3, 3, 'Easy Access Savings', 3200.00),
(4, 4, 'Fixed Term Savings', 8500.00),
(5, 5, 'Easy Access Savings', 1500.00);

INSERT INTO Transactions (TransactionID, AccountID, Amount, TransactionType, TransactionDate)
VALUES
(1, 1, 500.00, 'Deposit', '2024-01-15'),
(2, 1, 200.00, 'Withdrawal', '2024-02-01'),
(3, 2, 1000.00, 'Deposit', '2024-02-10'),
(4, 3, 300.00, 'Withdrawal', '2024-03-05'),
(5, 5, 750.00, 'Deposit', '2024-03-20');

-- Queries

-- Show all customers
SELECT * FROM Customers;

-- Show all accounts
SELECT * FROM Accounts;

-- Show accounts with balance over £5000
SELECT * FROM Accounts
WHERE Balance > 5000;

-- Show Easy Access Savings accounts only
SELECT * FROM Accounts
WHERE AccountType = 'Easy Access Savings';

-- Show all deposits
SELECT * FROM Transactions
WHERE TransactionType = 'Deposit';

-- Show accounts with low balance
SELECT * FROM Accounts
WHERE Balance < 4000;

-- JOIN: Show customer names with their account details
SELECT Customers.FirstName, Customers.LastName, 
       Accounts.AccountType, Accounts.Balance
FROM Customers
JOIN Accounts ON Customers.CustomerID = Accounts.CustomerID;

-- JOIN with filter: Show customers with balance over £5000
SELECT Customers.FirstName, Customers.LastName,
       Accounts.AccountType, Accounts.Balance
FROM Customers
JOIN Accounts ON Customers.CustomerID = Accounts.CustomerID
WHERE Accounts.Balance > 5000;
