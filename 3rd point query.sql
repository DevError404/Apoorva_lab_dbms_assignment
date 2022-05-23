Select COUNT(*) as `NO_OF_CUSTOMERS`, `customer`.`CUS_GENDER` 
from `customer` left join `order` 
on `customer`.`CUS_ID` = `order`.`CUS_ID` 
where `order`.`ORD_AMOUNT` >= 3000
group by `customer`.`CUS_GENDER` 