CREATE TABLE transactions
(
transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
user_id INTEGER NOT NULL,
transaction_towards TEXT NOT NULL,
person_phone_no TEXT NOT NULL,
amount INTEGER NOT NULL,
transaction_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
reason TEXT,
withdrawal_or_deposit TEXT NOT NULL CHECK (withdrawal_or_deposit IN ('withdrawal', 'deposit'))
);