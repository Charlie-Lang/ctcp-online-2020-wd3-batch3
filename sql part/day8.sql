SELECT 
	fld_product_name
	,fld_category
	,fld_price
FROM tbl_pricelist 
WHERE 
	fld_price <= 500
ORDER BY
	fld_category ASC;

-- = > < >= <= <>

SELECT 
	fld_product_name
    ,fld_category
    ,fld_price
FROM tbl_pricelist 
WHERE
	fld_category 
IN
	('Soap'
    ,'Hygiene');

SELECT 
	*
FROM
	tbl_pricelist
WHERE
	fld_price
BETWEEN
	100 AND 200;

SELECT 
	*
FROM
	tbl_pricelist
WHERE
	fld_product_name
LIKE
	'S%';


SELECT 
	*
FROM
	tbl_pricelist
WHERE
	fld_product_name
LIKE
	'%Cookies%';

SELECT 
	* 
FROM
	tbl_pricelist
WHERE
	fld_price <= 150
    OR
    fld_quantity <= 5;

SELECT 
	* 
FROM
	tbl_pricelist
WHERE
	fld_category = 'Drinks'
	OR
	fld_category = 'Snacks';

UPDATE
	tbl_pricelist
SET
	fld_category = 'Hygiene'
WHERE 
	fld_category =  'Soap'

DELETE FROM tbl_pricelist
WHERE fld_pid = 7

--computation using variables

SELECT
	fld_product_name
    , fld_price
    , fld_quantity
    , fld_price * fld_quantity
FROM
	tbl_pricelist

SELECT
	fld_product_name
    , fld_price
    , fld_quantity
    , fld_price * fld_quantity AS 'Total'
FROM
	tbl_pricelist

-- SELECT Function

SELECT
	COUNT(*)
FROM
	tbl_pricelist

--usable with WHERE

SELECT
	COUNT(*)
FROM
	tbl_pricelist
WHERE 
	fld_price <= 500

SELECT
	COUNT(*)
    ,SUM(fld_quantity)
    ,AVG(fld_price)
    ,MAX(fld_price)
    ,MIN(fld_price)
FROM
	tbl_pricelist

--USING GROUP BY

SELECT 
	fld_category
FROM
	tbl_pricelist
GROUP BY
	fld_category

SELECT 
	fld_category
    ,COUNT(*)
FROM
	tbl_pricelist
GROUP BY
	fld_category

SELECT 
	fld_category
    ,COUNT(*)
    ,SUM(fld_quantity)
    ,SUM(fld_price * fld_quantity) AS 'Total when sold'
FROM
	tbl_pricelist
GROUP BY
	fld_category

-- CATEGORY TABLE

CREATE TABLE tbl_Category(
	fld_category VARCHAR(30) NOT NULL 
	, fld_aisle_no VARCHAR(10) NOT NULL 
	, fld_person_in_charge VARCHAR(50) NOT NULL 
	, PRIMARY KEY (fld_category)
) ENGINE = InnoDB;

INSERT INTO tbl_category(
	fld_category
	, fld_aisle_no
	, fld_person_in_charge) 
VALUES 
	('Canned Goods','C','Peter')
	,('Detergent','E','Kevin')
	,('Drinks','A','Peter')
	,('Hygiene','D','Kevin')
	,('Snacks','A','Peter')
	,('Spreads','B','Peter')


SELECT	
	*
FROM	
	tbl_pricelist
JOIN	
	tbl_category
ON	
	tbl_pricelist.fld_category = tbl_category.fld_category


SELECT	
	tbl_pricelist.fld_product_name
    ,tbl_pricelist.fld_price
    ,tbl_pricelist.fld_category
    ,tbl_category.fld_aisle_no
    ,tbl_category.fld_person_in_charge
FROM	
	tbl_pricelist
JOIN	
	tbl_category
ON	
	tbl_pricelist.fld_category = tbl_category.fld_category

--

SELECT	
	tbl_pricelist.fld_product_name
    ,tbl_pricelist.fld_price
    ,tbl_pricelist.fld_category
    ,tbl_category.fld_aisle_no
    ,tbl_category.fld_person_in_charge
FROM	
	tbl_pricelist
JOIN	
	tbl_category
ON	
	tbl_pricelist.fld_category = tbl_category.fld_category
ORDER BY 
	tbl_pricelist.fld_category ASC

--

SELECT	
	tbl_pricelist.fld_product_name
    ,tbl_pricelist.fld_price
    ,tbl_pricelist.fld_category
    ,tbl_category.fld_aisle_no
    ,tbl_category.fld_person_in_charge
FROM	
	tbl_pricelist
JOIN	
	tbl_category
ON	
	tbl_pricelist.fld_category = tbl_category.fld_category
ORDER BY 
	tbl_category.fld_aisle_no ASC
    ,tbl_pricelist.fld_category ASC