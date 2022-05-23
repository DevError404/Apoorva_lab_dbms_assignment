SELECT c.CUS_NAME, p.PRO_NAME, o.ORD_ID, o.ORD_AMOUNT, o.ORD_DATE from `order` as o join customer as c on o.CUS_ID = c.CUS_ID JOIN `supplier_pricing` AS sp 
on sp.PRICING_ID = o.PRICING_ID JOIN `product` p on  sp.PRO_ID = p.PRO_ID
WHERE c.CUS_ID = 2