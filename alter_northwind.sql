ALTER TABLE products ADD CONSTRAINT chk_unit_price_positive CHECK (unit_price > 0);

ALTER TABLE products ADD CONSTRAINT chk_discontinued CHECK (discontinued IN (0, 1));

CREATE TABLE discontinued_products AS
SELECT * FROM products WHERE discontinued = 1;

-- Удаляем ограничение внешнего ключа (имя может отличаться, стандартное для Northwind - fk_order_details_products)
ALTER TABLE order_details DROP CONSTRAINT IF EXISTS fk_order_details_products;

-- Удаляем товары, снятые с продажи
DELETE FROM products WHERE discontinued = 1;