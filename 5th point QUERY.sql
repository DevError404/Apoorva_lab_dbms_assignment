
Select COUNT(*)as count, s.SUPP_ID, s.SUPP_NAME, s.SUPP_CITY, s.SUPP_PHONE from `supplier` as s join `supplier_pricing` as sp on s.SUPP_ID = sp.SUPP_ID
GROUP by s.SUPP_ID having count > 1