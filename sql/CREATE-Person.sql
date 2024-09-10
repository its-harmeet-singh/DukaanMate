CREATE TABLE Person(
    person_id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstname TEXT NOT NULL,
    lastname TEXT,
    phone_number TEXT NOT NULL,
    email_id TEXT,
    isAdmin BOOLEAN NOT NULL CHECK (isAdmin IN (0, 1)) DEFAULT 0 
);