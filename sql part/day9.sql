SELECT
	fld_product_name
	,LOWER(fld_product_name)
    ,UPPER(fld_product_name)
FROM tbl_pricelist


SELECT
	fld_product_name
	,LOWER(fld_product_name)
    ,UPPER(fld_product_name)
FROM tbl_pricelist
WHERE
	LOWER(fld_product_name) LIKE LOWER('%Tuna%')