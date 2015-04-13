--Lab 8--
--NICHOLAS MARENGO--
--4/13/2-15--

-- Table: clothestosell

-- DROP TABLE clothestosell;

CREATE TABLE clothestosell
(
  sku integer,
  description text,
  retailusd money,
  quantity integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE clothestosell
  OWNER TO postgres;

DELETE FROM clothestosell

INSERT INTO clothestosell (sku, description, retailusd, quantity) VALUES (12345, 'trousers', 19.99, 50);

INSERT INTO clothestosell (sku, description, retailusd, quantity) VALUES (11234, 'pantaloons', 24.99, 35);

INSERT INTO clothestosell (sku, description, retailusd, quantity) VALUES (12234, 'knickers', 29.99, 40);

INSERT INTO clothestosell (sku, description, retailusd, quantity) VALUES (12334, 'britches', 14.99, 60);

INSERT INTO clothestosell (sku, description, retailusd, quantity) VALUES (12344, 'slacks', 29.99, 30);


-- Table: orders

-- DROP TABLE orders;

CREATE TABLE orders
(
  supplier text,
  sku integer,
  quantity integer,
  purchasedate text,
  comments text,
  ordernum integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE orders
  OWNER TO postgres;

DELETE FROM orders

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Jae', 12345, 100, '4/12/15', 'Hey', 1);

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Nick', 11234, 200, '4/12/15', 'Whats up', 2);

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Chris', 12234, 150, '4/12/15', 'Nothing much', 3);

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Jon', 12334, 50, '4/12/15', 'You', 4);

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Paul', 12344, 100, '4/12/15', 'Nothing much either', 5);


-- Table: postalinfo

-- DROP TABLE postalinfo;

CREATE TABLE postalinfo
(
  postalcode integer,
  city text,
  state text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE postalinfo
  OWNER TO postgres;

DELETE FROM postalinfo

INSERT INTO postalinfo(postalcode, city, state) VALUES(11001, 'Newark', 'NJ');

INSERT INTO postalinfo(postalcode, city, state) VALUES(11011, 'Albany', 'NY');

INSERT INTO postalinfo(postalcode, city, state) VALUES(10101, 'Somers', 'NY');

INSERT INTO postalinfo(postalcode, city, state) VALUES(111, 'Poughkeepsie', 'NY');

INSERT INTO postalinfo(postalcode, city, state) VALUES(11111, 'Pawling', 'NY');


-- Table: skuinfo

-- DROP TABLE skuinfo;

CREATE TABLE skuinfo
(
  sku integer,
  retailusd money
)
WITH (
  OIDS=FALSE
);
ALTER TABLE skuinfo
  OWNER TO postgres;

DELETE FROM skuinfo

INSERT INTO skuinfo(sku, retailusd) VALUES(12345, 15.00);

INSERT INTO skuinfo(sku, retailusd) VALUES(11234, 20.50);

INSERT INTO skuinfo(sku, retailusd) VALUES(12234, 14.50);

INSERT INTO skuinfo(sku, retailusd) VALUES(12334, 8.00);

INSERT INTO skuinfo(sku, retailusd) VALUES(12344, 15.00);

INSERT INTO skuinfo(sku, retailusd) VALUES(12355, 12.50);
  

-- Table: supplierinfo

-- DROP TABLE supplierinfo;

CREATE TABLE supplierinfo
(
  name text,
  address text,
  postalcode integer,
  phonenumber text,
  terms text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE supplierinfo
  OWNER TO postgres;

DELETE FROM supplierinfo

INSERT INTO supplierinfo(name, address, city, state, postalcode, phonenumber, terms) VALUES ('Jae', '400 Jae Way', 'Newark', 'NJ', 11001, '917-110-1110', 'Delivered ASAP');

INSERT INTO supplierinfo(name, address, city, state, postalcode, phonenumber, terms) VALUES ('Nick', '500 Nick Circle', 'Albany', 'NY', 11011, '618-101-0110', 'Delivery tracking 24/7');

INSERT INTO supplierinfo(name, address, city, state, postalcode, phonenumber, terms) VALUES ('Chris', '1234 Chris Street', 'Somers', 'NY', 10101, '914-100-0001', 'Everything must be the color orange');

INSERT INTO supplierinfo(name, address, city, state, postalcode, phonenumber, terms) VALUES ('Jon', '1 Jon Ave', 'Poughkeepsie', 'NY', 00111, '845-222-2222', 'Credit only');

INSERT INTO supplierinfo(name, address, city, state, postalcode, phonenumber, terms) VALUES ('Paul', '12 Paul Rd', 'Pawling', 'NY', 11111, '845-111-1111', 'Credit');  



--functional dependencies are as follows:--
(x - depends upon x)


clothestosell
PK, FK sku
sku - description
sku - retailusd
sku - quantity

orders
PK ordernum
FK1 supplier
FK2 sku
ordernum - supplier
ordernum - sku
ordernum - quantity
ordernum - comments
ordernum - purchasedate

supplierinfo
PK name
FK postalcode
name - address
name - postalcode
name - phonenumber
name - terms

skuinfo
PK sku
sku - retailusd

postalinfo
PK postalcode
postalcode - city
postalcode - state


--Query to calculate how much of a given SKU are available to be sold (orders AND clothestosell)--

--testing--
Select quantity
from clothestosell
where sku = 12345

select quantity
from orders
where sku = 12345

--more testing--
select Sum(orders.quantity, clothestosell.quantity)
from clothestosell, orders
where clothestosell.sku = 12345 and orders.sku = 12345

--query--
select (select sum(orders.quantity) 
        from orders where sku = 12345) 
	+ 
        (select sum(clothestosell.quantity) 
        from clothestosell where sku = 12345) 

        as result






