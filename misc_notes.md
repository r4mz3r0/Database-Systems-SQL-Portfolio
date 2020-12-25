```CREATE TABLE corporation 
(corp_id SMALLINT, 
name VARCHAR(30), 
CONSTRAINT pk_corporation PRIMARY KEY (corp_id) 
);
```
,

```
INSERT INTO corporation (corp_id, name) 
VALUES (27, 'Acme Paper Corporation'); 
```

mysql < SELECT name FROM corporation WHRE corp_id = 27; 

```
SELECT t.txb_id, t.txn_type_cd, t.txn_date, t.amount 
FROM individual i 
  INNER JOIN account a ON i.cust_id = a.cust_id 
  INNER JOIN product p ON p.product_cd = a.product_cd 
  INNERT JOIN transaction t on t.account_id = a.account_id 
WHERE i.fname = 'George' AND i.lname = 'Blake'
  AND p.name = 'checking account'; 
 ```
 
  /* This is a comment */
  
  ```
  SELECT cust_id, fname 
  FROM individual 
  WHERE lname = 'Smith'; 
  ```

New row into product table 
```
INSERT INTO product (product_cd, name)
VALUES ('CD', 'Certificate of Depysit')
```
Correct database values 
```
UPDATE product 
SET name = 'Certificate of Deposit'
WHERE product_cd = 'CD'; 
```

# Importing DB 
```
mysql -u username –-password=your_password database_name < file.sql 
```

# Exporting
```
mysqldump -u username –-password=your_password database_name > file.sql
```

# Sakila database files 
Populating data 
```
source sakila-schema.sql
```
```
source sakila-data.sql
```
