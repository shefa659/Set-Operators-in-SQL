--Using Set Operators in SQL- SET OPERATORLARININ İSTİFADƏ EDİLMƏSİ
-- Data source: Northwind database (Customers table)

CREATE TABLE customers_2024 (
    customer_id char(5) not null primary key,
    company_name varchar2(40) not null,
    contact_name varchar2(30),
    city varchar2(15),
    region varchar2(15),
    country varchar2(15),
    phone varchar2(24),
    mail_address varchar2(60)
);

CREATE TABLE customers_2025 (
    customer_id char(5) not null primary key,
    company_name varchar2(40) not null,
    contact_name varchar2(30),
    city varchar2(15),
    region varchar2(15),
    country varchar2(15),
    phone varchar2(24),
    mail_address varchar2(60)
);

INSERT INTO customers_2024
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Berlin', NULL, 'Germany', '030-0074321', 'alfki@gmail.com');

INSERT INTO customers_2024
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico D.F.', NULL, 'Mexico', '(5) 555-4729', 'anatr@gmail.com');

INSERT INTO customers_2024
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('ANTON', 'Antonio Moreno Taqueria', 'Antonio Moreno', 'Mexico D.F.', NULL, 'Mexico', '(5) 555-3932', 'anton@gmail.com');

INSERT INTO customers_2024
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('AROUT', 'Around the Horn', 'Thomas Hardy', 'London', NULL, 'UK', '(171) 555-7788', 'arout@gmail.com');

INSERT INTO customers_2024
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'LuleA', NULL, 'Sweden', '0921-12 34 65', 'bergs@gmail.com');

INSERT INTO customers_2024
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Mannheim', NULL, 'Germany', '0621-08460', 'blaus@gmail.com');
------------------------------------------------------------------------------
select * from CUSTOMERS_2024;
------------------------------------------------------------------------------
INSERT INTO customers_2025
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Berlin', NULL, 'Germany', '030-0074321', 'alfki@gmail.com');

INSERT INTO customers_2025
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico D.F.', NULL, 'Mexico', '(5) 555-4729', 'anatr@gmail.com');

INSERT INTO customers_2025
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('ANTON', 'Antonio Moreno Taqueria', 'Antonio Moreno', 'Mexico D.F.', NULL, 'Mexico', '(5) 555-3932', 'anton@gmail.com');

INSERT INTO customers_2025
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('FRNDO', 'Frando Foods', 'Michael Green', 'Dublin', NULL, 'Ireland', '+35312345678', 'frando@gmail.com');

INSERT INTO customers_2025
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('GLOBL', 'Global Market', 'Sarah White', 'New York', 'NY', 'USA', '+12125551234', 'global@gmail.com');

INSERT INTO customers_2025
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('NORDC', 'Nordic Commerce', 'Erik Hansen', 'Copenhagen', NULL, 'Denmark', '+4533123456', 'nordic@gmail.com');

INSERT INTO customers_2025
(customer_id, company_name, contact_name, city, region, country, phone, mail_address)
VALUES
('SUNTR', 'Sun Trade', 'Laura Garcia', 'Barcelona', NULL, 'Spain', '+34931234567', 'suntrade@gmail.com');


select * from customers_2025;
select * from CUSTOMERS_2024;

-- Sorgunun neticesini birlesdirir,butun setirleri (tekrarlananlarda daxil olmaqla) qaytarir 

--UNION ALL
SELECT
 customer_id, 
 company_name,
 contact_name,
 mail_address
  from customers_2024
UNION ALL
SELECT
 customer_id, 
 company_name,
 contact_name,
 mail_address
  from customers_2025;
---------------------------------------
Sorgunun neticesi birlesdrir, yalniz unikal setirleri qaytarir
-- UNION
SELECT
 customer_id, 
 company_name,
 contact_name,
 mail_address
  from customers_2024
UNION
SELECT
 customer_id, 
 company_name,
 contact_name,
 mail_address
  from customers_2025;
--------------------------------------------

--her iki sorguda ortaq olan setirleri qaytarir
--INTERSECT
SELECT
 customer_id, 
 company_name,
 contact_name,
 mail_address
  from customers_2024
INTERSECT
SELECT
 customer_id, 
 company_name,
 contact_name,
 mail_address
  from customers_2025;

---------------------------------------
--Birinci sorguda olub, ikincide olmayan setirleri qaytarir
--MINUS
SELECT
 customer_id, 
 company_name,
 contact_name,
 mail_address
  from customers_2024
MINUS
SELECT
 customer_id, 
 company_name,
 contact_name,
 mail_address
  from customers_2025;
