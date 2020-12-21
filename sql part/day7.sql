CREATE TABLE tbl_sample1 
	(fld_full_name VARCHAR(75) NOT NULL 
	, fld_age INT NOT NULL 
	, fld_salary FLOAT(20,4) NOT NULL 
) ENGINE = InnoDB;

CREATE TABLE tbl_pricelist 
	( fld_pid INT NOT NULL AUTO_INCREMENT 
	, fld_product_name VARCHAR(75) NOT NULL 
	, fld_category VARCHAR(30) NOT NULL 
	, fld_price FLOAT(20,4) NOT NULL 
	, fld_quantity INT NOT NULL 
	, PRIMARY KEY (fld_pid)
) ENGINE = InnoDB;


INSERT INTO
	tbl_pricelist
	( fld_product_name
	, fld_category
	, fld_price
	, fld_quantity)
VALUES
	( 'Safeguard Pure White Body Wash 1 L'
	, 'Soap'
	, '372.00'
	, 3)

INSERT INTO
	tbl_pricelist
	( fld_product_name
	, fld_category
	, fld_price
	, fld_quantity)
VALUES
	( 'Century Tuna Flakes in Vegetable Oil 6 x 180 g'
	, 'Canned Goods'
	, 298.00
	, 10)
   ,( 'Century Tuna Chunks in Water 6 x 184 g'
	, 'Canned Goods'
	, 481.00
	, 6)


SELECT	
	*
FROM	
	tbl_pricelist

SELECT
	fld_product_name
	,fld_category
FROM
	tbl_pricelist

SELECT
	*
FROM
	tbl_pricelist
ORDER BY fld_product_name

SELECT
	*
FROM
	tbl_pricelist
WHERE
	fld_category = 'Drinks'

