CREATE TABLE TodaysSoldItem(
    transaction_id INTEGER NOT NULL,
    itemName TEXT NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 0,
    tran_date DATETIME NOT NULL DEFAULT CURRENT_DATE 
);