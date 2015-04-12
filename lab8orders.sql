---orders table--

DELETE FROM orders

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Jae', 12345, 100, '4/12/15', 'Hey', 1);

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Nick', 11234, 200, '4/12/15', 'Whats up', 2);

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Chris', 12234, 150, '4/12/15', 'Nothing much', 3);

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Jon', 12334, 50, '4/12/15', 'You', 4);

INSERT INTO orders(supplier, sku, quantity, purchasedate, comments, ordernum) VALUES ('Paul', 12344, 100, '4/12/15', 'Nothing much either', 5);

