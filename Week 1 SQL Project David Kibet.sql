SHOW  DATABASES;

CREATE DATABASE SomaliaDB;

USE SomaliaDB;

CREATE TABLE beneficiary_partner_data (
partner_id INTEGER NOT NULL PRIMARY KEY,
partner VARCHAR(30) NOT NULL,
village VARCHAR(30) NOT NULL,
beneficiaries INTEGER,
beneficiary_type VARCHAR(30)
);

CREATE TABLE village_locations (
    village_id INTEGER NOT NULL PRIMARY KEY,
    village VARCHAR(30) NOT NULL,
    latitude VARCHAR(30),
    longitude VARCHAR(30),
    total_population INTEGER
);
CREATE TABLE jurisdiction_hierarchy (
    jurisdiction_id INTEGER,
    name VARCHAR(50),
    type VARCHAR(50),
    parent VARCHAR(50)
);
-- Jurisdiction Hierarchy
INSERT INTO jurisdiction_hierarchy VALUES(1,'Middle Shabelle','Region',NULL);
INSERT INTO jurisdiction_hierarchy VALUES(2,'Hiraan','Region',NULL);
INSERT INTO jurisdiction_hierarchy VALUES(3,'Balcad','District','Middle Shabelle');
INSERT INTO jurisdiction_hierarchy VALUES(4,'Jowhar','District','Middle Shabelle');
INSERT INTO jurisdiction_hierarchy VALUES(5,'Beledweyn','District','Hiraan');
INSERT INTO jurisdiction_hierarchy VALUES(6,'Dharkenley','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(7,'Bulo-Kahin','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(8,'Hilo Kelyo','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(9,'Xubow','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(10,'Xiintooy','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(11,'Dhagax Jebis','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(12,'Filtare','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(13,'Howl-Wadaag','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(14,'Balcad','Village','Balcad');
INSERT INTO jurisdiction_hierarchy VALUES(15,'Mareeray','Village','Balcad');
INSERT INTO jurisdiction_hierarchy VALUES(16,'Kulmis','Village','Balcad');
INSERT INTO jurisdiction_hierarchy VALUES(17,'Sabuun','Village','Jowhar');
INSERT INTO jurisdiction_hierarchy VALUES(18,'Bayaxaw','Village','Jowhar');

-- Village Locations
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(1,'Dharkenley','4°47''35.40"','45°12''28.80"',12800);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(2,'Bulo-Kahin','4°47''57.00"','45°11''5.70"',9485);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(3,'Hilo Kelyo','4°47''57.00"','45°12''58.60"',5212);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(4,'Xubow','4°46''46.77"','45°12''7.57"',2558);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(5,'Xiintooy','4°44''14.40"','45°13''5.00"',3850);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(6,'Dhagax Jebis','4°44''27.86"','45°12''42.03"',3563);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(7,'Filtare','4°44''20.43"','45°12''27.89"',8000);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(8,'Howl-Wadaag','4°43''50.00"','45°11''58.20"',7525);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(9,'Balcad','2°21.624''','45°23.928''',1500);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(10,'Mareeray','2°23.504''','45°25.200''',7500);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(11,'Kulmis','2°36.761''','45°30.642''',6058);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(12,'Sabuun','2°53.020''','45°32.356''',5483);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(13,'Bayaxaw','2°44.768''','45°29.727''',3000);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(14,'Bayaxawo','2°44.768''','45°29.926''',7560);

-- Beneficiary Patner Data
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(1,'IRC','Balcad','1450','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(2,'NRC','Balcad','50','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(3,'SCI','Balcad','1123','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(4,'IMC','Balcad','1245','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(5,'SCI','Mareeray','5200','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(6,'IMC','Mareeray','70','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(7,'IRC','Mareeray','2100','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(8,'CESVI','Mareeray','1800','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(9,'SCI','Kulmis','1340','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(10,'IMC','Kulmis','55','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(11,'SCI','Kulmis','4500','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(12,'IMC','Kulmis','1670','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(13,'IMC','Sabuun','1340','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(14,'IRC','Sabuun','66','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(15,'CESVI','Sabuun','4090','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(16,'SCI','Sabuun','2930','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(17,'IMC','Bayaxaw','2800','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(18,'IRC','Bayaxaw','2100','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(19,'CESVI','Bayaxaw','45','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(20,'SCI','Bayaxaw','1700','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(21,'SCI','Bayaxawo','5900','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(22,'IMC','Bayaxawo','40','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(23,'IRC','Bayaxawo','1500','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(24,'CESVI','Bayaxawo','1260','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(25,'CESVI','Dharkenley','7880','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(26,'IRC','Dharkenley','34','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(27,'SCI','Bulo-Kahin','4300','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(28,'IMC','Bulo-Kahin','4212','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(29,'IRC','Bulo-Kahin','3200','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(30,'IRC','Hilo Kelyo','5212','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(31,'SCI','Hilo Kelyo','25','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(32,'CESVI','Xubow','2157','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(33,'IMC','Xiintooy','1667','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(34,'IRC','Xiintooy','2667','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(35,'CESVI','Dhagax Jebis','2856','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(36,'CESVI','Filtare','7519','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(37,'CESVI','Howl-Wadaag','6870','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(38,'IMC','Howl-Wadaag','32','Households');

-- VIEW THE TABLES
SELECT * FROM jurisdiction_hierarchy;
SELECT * FROM beneficiary_partner_data;
SELECT * FROM village_locations;

SELECT SUM(total_population) FROM village_locations;

-- Here I changed the name to village to better align with the other columns
ALTER TABLE jurisdiction_hierarchy
CHANGE name village VARCHAR(50);

-- LEFT JOIN Jurisdiction hierarchy and Village locations
SELECT jurisdiction_hierarchy.village, type, parent,  village_locations.village, latitude, longitude,total_population
FROM jurisdiction_hierarchy
LEFT JOIN village_locations
ON jurisdiction_hierarchy.name = village_locations.village;

-- INNER JOIN Jurisdiction hierarchy and Village locations
SELECT jurisdiction_hierarchy.village, type, parent,  village_locations.village, latitude, longitude,total_population
FROM jurisdiction_hierarchy
INNER JOIN village_locations
ON jurisdiction_hierarchy.village = village_locations.village;

-- LEFT JOIN jurisdiction hierarchy and beneficiary partner data
SELECT jurisdiction_hierarchy.village, type, parent, beneficiary_partner_data.village, partner, beneficiaries, beneficiary_type
FROM jurisdiction_hierarchy
LEFT JOIN beneficiary_partner_data
ON jurisdiction_hierarchy.village = beneficiary_partner_data.village;

-- RIGHT JOIN beneficiary partner data and village locations
SELECT beneficiary_partner_data.village, partner, beneficiaries, beneficiary_type, village_locations.village, latitude, longitude, total_population
FROM beneficiary_partner_data
RIGHT JOIN village_locations
ON beneficiary_partner_data.village = village_locations.village;


-- CREATE FULL JOIN THAT PUTS ALL THE DATA INTO ONE TABLE CALLED 'somali_full_join'
DROP TABLE somali_full_join;
CREATE TABLE somali_full_join AS
SELECT jurisdiction_hierarchy.village AS jurisdiction_village, -- I use the 'AS .....' to remove ambiguity as there are multiple tables with the village column
       type,
       parent,
       beneficiary_partner_data.village AS beneficiary_village,
       partner,
       beneficiaries,
       beneficiary_type
FROM jurisdiction_hierarchy
LEFT JOIN beneficiary_partner_data
ON jurisdiction_hierarchy.village = beneficiary_partner_data.village

UNION

SELECT village_locations.village AS jurisdiction_village,
       NULL AS type,
       NULL AS parent,
       beneficiary_partner_data.village AS beneficiary_village,
       partner,
       beneficiaries,
       beneficiary_type
FROM beneficiary_partner_data
RIGHT JOIN village_locations
ON beneficiary_partner_data.village = village_locations.village;


SELECT * FROM somali_full_join;
-- a) District_summary.
-- i) District Name
SELECT * FROM somali_full_join
WHERE type = 'District';

-- ii) Region name
SELECT * FROM somali_full_join
WHERE type = 'Region';

-- iii) No. of Individual Beneficiaries (1HH = 6 Individuals) -- 1 Households = 6 Individuals
SELECT SUM(beneficiaries) AS sum_of_beneficiaries
FROM somali_full_join
WHERE beneficiary_type = 'Households';
-- In order to be able to multiply the Households sum by 6 I create the subquery below
SELECT SUM(sum_of_beneficiaries) as total_beneficiaries
FROM (
    SELECT (beneficiaries*6) AS sum_of_beneficiaries
    FROM somali_full_join
    WHERE beneficiary_type = 'Households'
    GROUP BY beneficiaries
) as subquery;
-- The total sum of individuals in Households is 2502

SELECT SUM(beneficiaries) AS individual_beneficiaries
FROM somali_full_join
WHERE beneficiary_type = 'Individuals';
-- The total number of individuals is 180334

-- The total Individual beneficiaries is 2502 + 180334 = 182,836

-- iv) No. of Individual Beneficiaries / Total District Population
SELECT beneficiaries, beneficiary_type FROM somali_full_join
WHERE beneficiaries;

SELECT * FROM somali_full_join;

-- b) Partner_summary
-- i) Partner Name
SELECT partner, COUNT(somali_full_join.partner) AS Partner_Count
FROM somali_full_join
GROUP BY partner;

-- ii) No. of Villages reached by partner
SELECT partner, COUNT(DISTINCT jurisdiction_vilLage) AS village_Count
FROM somali_full_join
GROUP BY partner;


-- iii) No. of Districts reached by partner
SELECT partner,COUNT(DISTINCT type = 'District')
FROM somali_full_join
GROUP BY partner;


