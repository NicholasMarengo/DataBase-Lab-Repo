--1--
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



--4--

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('AC01', 32808, '09-13-2005', 754.95, 'Star Wars: the Old Republic', 'Lenovo');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('DB32', 32808, '12-03-2005', 380.00, 'Star Wars: Empire at War', 'Lenovo');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('DB32', 37691, '06-15-2005', 380.00, 'Star Wars: Empire at War', 'IBM');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('DB33', 57772, '05-27-2005', 412.77, 'Star Wars: Republic Commando', 'Apple');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP08', 32808, '01-12-2006', 185.00, 'Star Wars: Battlefront', 'Lenovo');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP08', 37691, '06-15-2005', 227.50, 'Star Wars: Battlefront', 'HP');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP08', 57222, '05-27-2005', 170.24, 'Star Wars: Battlefront', 'Toshiba');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP09', 59836, '10-30-2005', 35.00, 'Star Wars: Battlefront2', 'Acer');

INSERT INTO firstnf (packageid, tagnumber, installdate, softwarecostusd, softwarepackagename, computermodel) VALUES ('WP09', 77740, '05-27-2005', 35.00, 'Star Wars: Battlefront2', 'Sony');



