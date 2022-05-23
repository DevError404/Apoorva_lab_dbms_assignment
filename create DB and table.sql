create database myDb;

CREATE TABLE `supplier` (
  `SUPP_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `SUPP_NAME` varchar(50) NOT NULL,
  `SUPP_CITY` varchar(50) NOT NULL,
  `SUPP_PHONE` varchar(50) NOT NULL,
  PRIMARY KEY (`SUPP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer` (
  `CUS_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `CUS_NAME` varchar(20) NOT NULL,
  `CUS_PHONE` varchar(10) NOT NULL,
  `CUS_CITY` varchar(30) NOT NULL,
  `CUS_GENDER` char(1) DEFAULT NULL,
  PRIMARY KEY (`CUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `category` (
  `CAT_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `CAT_NAME` varchar(20) NOT NULL,
  PRIMARY KEY (`CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `product` (
  `PRO_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `PRO_NAME` varchar(20) NOT NULL DEFAULT 'Dummy',
  `PRO_DESC` varchar(60),
  `CAT_ID` int,
   PRIMARY KEY (`PRO_ID`),
	CONSTRAINT FK_categoryProduct FOREIGN KEY (`CAT_ID`)
    REFERENCES category(`CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `supplier_pricing` (
  `PRICING_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `PRO_ID` int unsigned DEFAULT NULL,
  `SUPP_ID` int unsigned DEFAULT NULL,
  `SUPP_PRICE` int DEFAULT '0',
  PRIMARY KEY (`PRICING_ID`),
  KEY `PRO_ID_idx` (`PRO_ID`),
  KEY `SUPP_ID_idx` (`SUPP_ID`),
  CONSTRAINT `PRO_ID` FOREIGN KEY (`PRO_ID`) REFERENCES `product` (`PRO_ID`),
  CONSTRAINT `SUPP_ID` FOREIGN KEY (`SUPP_ID`) REFERENCES `supplier` (`SUPP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `order` (
  `ORD_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ORD_AMOUNT` int NOT NULL,
  `ORD_DATE` date NOT NULL,
  `CUS_ID` int unsigned DEFAULT NULL,
  `PRICING_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ORD_ID`),
  KEY `fk_CusId_idx` (`CUS_ID`),
  KEY `fk_pricing_idx` (`PRICING_ID`),
  CONSTRAINT `fk_CusId` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`),
  CONSTRAINT `fk_pricing` FOREIGN KEY (`PRICING_ID`) REFERENCES `supplier_pricing` (`PRICING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `rating` (
  `RAT_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ORD_ID` int unsigned DEFAULT NULL,
  `RAT_RATSTARS` int NOT NULL,
  PRIMARY KEY (`RAT_ID`),
  KEY `fk_order_idx` (`ORD_ID`),
  CONSTRAINT `fk_order` FOREIGN KEY (`ORD_ID`) REFERENCES `order` (`ORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


