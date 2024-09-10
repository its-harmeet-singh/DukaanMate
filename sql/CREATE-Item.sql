CREATE TABLE Item(
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    price INTEGER NOT NULL,
    itemname TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    category_id INTEGER NOT NULL,
    retail_discount INTEGER NOT NULL,
    wholesale_discount INTEGER NOT NULL

);

