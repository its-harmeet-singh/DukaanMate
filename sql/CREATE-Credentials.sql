CREATE TABLE Credentials(
    credential_id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    username TEXT NOT NULL,
    password TEXT NOT NULL
);