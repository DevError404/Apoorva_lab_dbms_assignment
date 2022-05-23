INSERT INTO `myDb`.`supplier` (`SUPP_NAME`, `SUPP_CITY`, `SUPP_PHONE`)
VALUES ('Rajesh Retails', 'Delhi', '1234567890');
INSERT INTO `myDb`.`supplier` (`SUPP_NAME`, `SUPP_CITY`, `SUPP_PHONE`)
VALUES ('Appario Ltd.', 'Mumbai', '2589631470');
INSERT INTO `myDb`.`supplier` (`SUPP_NAME`, `SUPP_CITY`, `SUPP_PHONE`)
VALUES ('Knome products', 'Banglore', '9785462315');
INSERT INTO `myDb`.`supplier` (`SUPP_NAME`, `SUPP_CITY`, `SUPP_PHONE`)
VALUES ('Bansal Retails', 'Kochi', '8975463285');
INSERT INTO `myDb`.`supplier` (`SUPP_NAME`, `SUPP_CITY`, `SUPP_PHONE`)
VALUES ('Mittal Ltd. ', 'Lucknow', '7898456532');

INSERT INTO `myDb`.`customer` (`CUS_NAME`, `CUS_PHONE`, `CUS_CITY`, `CUS_GENDER`)
VALUES ('AAKASH', '9999999999', 'DELHI', 'M');
INSERT INTO `myDb`.`customer` (`CUS_NAME`, `CUS_PHONE`, `CUS_CITY`, `CUS_GENDER`)
VALUES ('AMAN', '9785463215', 'NOIDA', 'M');
INSERT INTO `myDb`.`customer` (`CUS_NAME`, `CUS_PHONE`, `CUS_CITY`, `CUS_GENDER`)
VALUES ('NEHA', '9999999999', 'MUMBAI', 'F');
INSERT INTO `myDb`.`customer` (`CUS_NAME`, `CUS_PHONE`, `CUS_CITY`, `CUS_GENDER`)
VALUES ('MEGHA', '9994562399', 'KOLKATA', 'F');
INSERT INTO `myDb`.`customer` (`CUS_NAME`, `CUS_PHONE`, `CUS_CITY`, `CUS_GENDER`)
VALUES ('PULKIT', '7895999999', 'LUCKNOW', 'M');

INSERT INTO `myDb`.`category` ( `CAT_NAME`) VALUES ('BOOKS');
INSERT INTO `myDb`.`category` ( `CAT_NAME`) VALUES ('GAMES');
INSERT INTO `myDb`.`category` ( `CAT_NAME`) VALUES ('GROCERIES');
INSERT INTO `myDb`.`category` ( `CAT_NAME`) VALUES ('ELECTRONICS');
INSERT INTO `myDb`.`category` ( `CAT_NAME`) VALUES ('CLOTHES');

INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('GTA V', 'Windows 7 and above with i5 processor and 8GB RAM ', 2);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('TSHIRT', 'SIZE-L with Black, Blue and White variations', 5);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', 4);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('OATS', 'Highly Nutritious from Nestle', 3);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('MILK', '1L Toned MIlk', 3);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('Boat Earphones', '1.5Meter long Dolby Atmos', 4);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('Jeans', 'Stretchable Denim Jeans with various sizes and color', 5);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('Project IGI', 'compatible with windows 7 and above', 2);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('Hoodie', 'Black GUCCI for 13 yrs and above', 5);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('Rich Dad Poor Dad', 'Written by RObert Kiyosaki ', 1);
INSERT INTO `myDb`.`product` (`PRO_NAME`, `PRO_DESC`, `CAT_ID`)
VALUES ('Train Your Brain', 'By Shireen Stephen', 1);


INSERT INTO `myDb`.`supplier_pricing` (`PRO_ID`, `SUPP_ID`, `SUPP_PRICE`)
VALUES (1, 2, 1500 );
INSERT INTO `myDb`.`supplier_pricing` (`PRO_ID`, `SUPP_ID`, `SUPP_PRICE`)
VALUES ( 3, 5, 30000);
INSERT INTO `myDb`.`supplier_pricing` (`PRO_ID`, `SUPP_ID`, `SUPP_PRICE`)
VALUES ( 5, 1, 3000);
INSERT INTO `myDb`.`supplier_pricing` (`PRO_ID`, `SUPP_ID`, `SUPP_PRICE`)
VALUES (2, 3, 2500 );
INSERT INTO `myDb`.`supplier_pricing` (`PRO_ID`, `SUPP_ID`, `SUPP_PRICE`)
VALUES ( 4, 1, 1000);

INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (101, 1500, '2021-10-06', 2, 1);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (102, 1000, '2021-10-12', 3, 5);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (103, 30000, '2021-09-16', 5, 2);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (104, 1500, '2021-10-05', 1, 1);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (105, 3000, '2021-08-16', 4, 3);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (106, 1450, '2021-08-18', 1, 9);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (107, 789, '2021-09-01', 3, 7);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (108, 780, '2021-09-07', 5, 6);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (109, 3000, '2021-00-10', 5, 3);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (110, 2500, '2021-09-10', 2, 4 );
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (111, 1000, '2021-09-15', 4, 5);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (112, 789, '2021-09-16', 4, 7);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (113, 31000, '2021-09-16', 1, 8);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (114, 1000, '2021-09-16', 3, 5);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (115, 3000, '2021-09-16', 5, 3);
INSERT INTO `myDb`.`order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`)
VALUES (116, 99, '2021-09-17', 2, 14);

INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (101, 4);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (102, 3);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (103, 1);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (104, 2);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (105, 4);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (106, 3);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES ();
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES ();
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (107, 4);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (108, 4);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (109, 3);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (110, 5);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (111, 3);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (112, 4);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (113, 2);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (114, 1);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (115, 1);
INSERT INTO `myDb`.`rating` (`ORD_ID`, `RAT_RATSTARS`)
VALUES (116, 0);





