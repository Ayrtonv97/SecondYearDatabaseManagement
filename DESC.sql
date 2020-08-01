DESC BANK;
DESC BASKET;
DESC PAYPAL;
DESC CUSTOMER;
DESC CUSTOMER_MALE;
DESC CUSTOMER_FEMALE;
DESC COUNTRY;
DESC SELLER;
DESC SHOP;
DESC FACTORY;
DESC ITEM;
DESC BASKET_ITEM;
DESC STOCK;

SELECT a.owner, a.table_name, constraint_type, a.constraint_name, column_name,
search_condition, r_constraint_name
FROM user_constraints A, user_cons_columns B
WHERE A.constraint_name = B.constraint_name
AND A.table_name IN ( 'BANK', 'BASKET', 'PAYPAL', 'CUSTOMER', 'CUSTOMER_MALE', 'CUSTOMER_FEMALE', 'COUNTRY', 'SELLER', 'SHOP', 'FACTORY', 'ITEM', 'BASKET_ITEM', 'STOCK' )
ORDER BY A.table_name, constraint_type;
