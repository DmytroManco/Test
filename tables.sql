-- Первая таблица: телефоны
CREATE TABLE phones
	(`id` int(100) AUTO_INCREMENT,
     `productName` varchar(20),
     `description` varchar(100),
      `price` decimal,
    PRIMARY KEY(id)
    )
;
-- Наполняем таблицу
INSERT INTO phones
	(`id`, `productName`, `description`, `price`)
VALUES
	(id, 'Sumsung', 'Lorem ipsum dolor sit amet', 350),
    (id, 'Nokia', 'Lorem ipsum dolor sit amet', 200),
    (id, 'IPhone', 'Lorem ipsum dolor sit amet', 1200),
    (id, 'LG', 'Lorem ipsum dolor sit amet', 550),
    (id, 'Sumsung', 'Lorem ipsum dolor sit amet', 600)
;
-- Вторая таблица: заказы
CREATE TABLE orders
	(`id` int(100) AUTO_INCREMENT,
     `productsList` varchar(40),
     `orderDate` date,
      `orderSum` decimal,
    PRIMARY KEY(id)
    )
;
-- Наполянем таблицу
INSERT INTO orders
	(`id`, `productsList`, `orderDate`, `orderSum`)
VALUES
	(id, 'Sumsung, Nokia, IPhone', '2016-11-05', 1750),
	(id, 'Sumsung, IPhone', '2016-11-02', 1800),
	(id, 'LG', '2016-11-01', 550),
	(id, 'Sumsung, Nokia', '2016-10-22', 800),
	(id, 'Nokia', '2016-10-30', 200)
;

-- Первый запрос: все заказы за неделю с суммой > 500

SELECT * FROM Orders WHERE (
orderDate BETWEEN
(CURDATE()-WEEKDAY(CURDATE()))
AND
CURDATE()
)
AND orderSum > 500

-- Второй запросЖ все заказы с моделбю "Sumsung"
SELECT * FROM orders WHERE productsList LIKE '%Sumsung%';