CREATE TABLE Worker(
    worker_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT NOT NULL,
    phone TEXT NOT NULL UNIQUE ,
    address TEXT NOT NULL,
    salary INTEGER NOT NULL

);

