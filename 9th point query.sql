CREATE DEFINER=`root`@`%` PROCEDURE `getTypeOfService`()
BEGIN

SELECT s.SUPP_ID, s.SUPP_NAME, r.RAT_RATSTARS, 
(CASE WHEN r.RAT_RATSTARS = 5 
	THEN "Excellent" 
    ELSE (case when r.RAT_RATSTARS > 4 
		THEN "Good Service"
        Else (case when r.RAT_RATSTARS > 2
			then "Average Service"
            else "Poor Serice"
		END)
	END)
END) as `Type_Of_Service` 
FROM `supplier` AS s LEFT JOIN `supplier_pricing` AS sp on s.SUPP_ID = sp.SUPP_ID 
join `order` o ON sp.PRICING_ID = o.PRICING_ID 
JOIN `rating` as r on o.ORD_ID = r.ORD_ID;
END