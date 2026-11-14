CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    birthday DATE,
    phone VARCHAR
);

ALTER TABLE student ADD COLUMN middle_name VARCHAR;

ALTER TABLE student DROP COLUMN middle_name;

ALTER TABLE student RENAME COLUMN birthday TO birth_date;

ALTER TABLE student ALTER COLUMN phone TYPE VARCHAR(32);

INSERT INTO student (first_name, last_name, birth_date, phone) VALUES
('Иван', 'Иванов', '2000-01-15', '+79001234567'),
('Петр', 'Петров', '1999-05-20', '+79007654321'),
('Мария', 'Сидорова', '2001-11-10', '+79001112233');

TRUNCATE TABLE student RESTART IDENTITY;