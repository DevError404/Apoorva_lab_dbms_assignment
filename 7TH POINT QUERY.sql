Select p.PRO_ID, p.PRO_NAME from `order` as o join `supplier_pricing` as sp on o.PRICING_ID = sp.PRICING_ID
join `product` as p on sp.PRO_ID = p.PRO_ID where o.ORD_DATE > '2021-10-05'