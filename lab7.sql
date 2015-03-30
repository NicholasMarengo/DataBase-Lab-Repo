﻿--1--
--Nick, focus on the SQL and table first. You got it other Nick.--
--He paid a lot for some software. Also, it gets a little confusing because the same tag number is used on two different machines.--
--that is really all that I can think of right now--



--2-- --first normal form (firstnf)--

DELETE FROM firstnf

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd) VALUES ('AC01', 32808, '09-13-2005', 754.95);

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd) VALUES ('DB32', 32808, '12-03-2005', 380.00);

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd) VALUES ('DB32', 37691, '06-15-2005', 380.00);

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd) VALUES ('DB33', 57772, '05-27-2005', 412.77);

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP08', 32808, '01-12-2006', 185.00);

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP08', 37691, '06-15-2005', 227.50);

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP08', 57222, '05-27-2005', 170.24);

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP09', 59836, '10-30-2005', 35.00);

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd) VALUES ('WP09', 77740, '05-27-2005', 35.00);


--3-- --answer this too --
--there is a composite primary key of packageid and tagnumber--

--4--

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('AC01', 32808, '09-13-2005', 754.95, 'Star Wars: the Old Republic', 'Lenovo');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('DB32', 32808, '12-03-2005', 380.00, 'Star Wars: Empire at War', 'Lenovo');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('DB32', 37691, '06-15-2005', 380.00, 'Star Wars: Empire at War', 'IBM');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('DB33', 57772, '05-27-2005', 412.77, 'Star Wars: Republic Commando', 'Apple');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP08', 32808, '01-12-2006', 185.00, 'Star Wars: Battlefront', 'Lenovo');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP08', 37691, '06-15-2005', 227.50, 'Star Wars: Battlefront', 'IBM');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP08', 57222, '05-27-2005', 170.24, 'Star Wars: Battlefront', 'Toshiba');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP09', 59836, '10-30-2005', 35.00, 'Star Wars: Battlefront2', 'Acer');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP09', 77740, '05-27-2005', 35.00, 'Star Wars: Battlefront2', 'Sony');

--5-- functional dependencies yay--
--the functional dependencies are the tagnumber to the computer model, and the packageid to the softwarepackagename. --





--6-- Not in third normal form because it is still in first normal form from before.. All I did was add two more columns. Also there exists the same data value in different rows, which is why its still in first NF--



--7--
--put in third normal form--

DELETE FROM thirdnfT1

INSERT INTO thirdnfT1 (packageid, softwarepackagename) VALUES ('AC01', 'Star Wars: the Old Republic');























