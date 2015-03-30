--7-- part three: third normal form--

--thirdnft1

DELETE FROM thirdnft1

INSERT INTO thirdnft1 (packageid, softwarepackagename) VALUES ('AC01', 'Star Wars: the Old Republic');

INSERT INTO thirdnft1 (packageid, softwarepackagename) VALUES ('DB32', 'Star Wars: Empire at War');

INSERT INTO thirdnft1 (packageid, softwarepackagename) VALUES ('DB33', 'Star Wars: Republic Commando');

INSERT INTO thirdnft1 (packageid, softwarepackagename) VALUES ('WP08', 'Star Wars: Battlefront');

INSERT INTO thirdnft1 (packageid, softwarepackagename) VALUES ('WP09', 'Star Wars: Battlefront2');

--thirdnft2--

DELETE FROM thirdnft2

INSERT INTO thirdnft2 (tagnumber, computermodel) VALUES (32808, 'Lenovo');

INSERT INTO thirdnft2 (tagnumber, computermodel) VALUES (37691, 'IBM');

INSERT INTO thirdnft2 (tagnumber, computermodel) VALUES (57772, 'Apple');

INSERT INTO thirdnft2 (tagnumber, computermodel) VALUES (57222, 'Toshiba');

INSERT INTO thirdnft2 (tagnumber, computermodel) VALUES (59836, 'Acer');

INSERT INTO thirdnft2 (tagnumber, computermodel) VALUES (77740, 'Sony');

--thirdnft3-- --same as the first table--

DELETE FROM thirdnft3

INSERT INTO thirdnft3 (packageid, tagnumber, installdate, softwarecostusd) VALUES ('AC01', 32808, '09-13-2005', 754.95);

INSERT INTO thirdnft3 (packageid, tagnumber, installdate, softwarecostusd) VALUES ('DB32', 32808, '12-03-2005', 380.00);

INSERT INTO thirdnft3 (packageid, tagnumber, installdate, softwarecostusd) VALUES ('DB32', 37691, '06-15-2005', 380.00);

INSERT INTO thirdnft3 (packageid, tagnumber, installdate, softwarecostusd) VALUES ('DB33', 57772, '05-27-2005', 412.77);

INSERT INTO thirdnft3 (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP08', 32808, '01-12-2006', 185.00);

INSERT INTO thirdnft3 (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP08', 37691, '06-15-2005', 227.50);

INSERT INTO thirdnft3 (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP08', 57222, '05-27-2005', 170.24);

INSERT INTO thirdnft3 (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP09', 59836, '10-30-2005', 35.00);

INSERT INTO thirdnft3 (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP09', 77740, '05-27-2005', 35.00);



