CREATE TABLE Cart (
    Id           INT PRIMARY KEY,
    Date         DATE NOT NULL,
    Item_Name    VARCHAR(20) NOT NULL,
    Price        DECIMAL(10,2) DEFAULT 0,
    Qtys         INT DEFAULT 1,
    Discount     DECIMAL(10,2) DEFAULT 0.05,
    Bill_Amount  DECIMAL(10,2) 
                 GENERATED ALWAYS AS ((Price - (Price * Discount)) * Qtys) STORED
);

SELECT * FROM Cart;