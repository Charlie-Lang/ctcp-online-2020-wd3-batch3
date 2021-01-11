-- Web Dev

-- batch 3

-- day 18

-- project: blog


CREATE TABLE `tbl_blog` 
	( `fld_bid` INT NOT NULL AUTO_INCREMENT 
	, `fld_btitle` VARCHAR(128) NOT NULL 
	, `fld_bcontent` TEXT NOT NULL 
	, `fld_bpict` VARCHAR(128) NOT NULL 
	, `fld_bdate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP 
	, `fld_uid` INT NOT NULL , PRIMARY KEY (`fld_bid`)
) ENGINE = InnoDB;


ALTER TABLE `tbl_login` ADD `fld_act_type` VARCHAR(32) NOT NULL DEFAULT 'reader' AFTER `fld_password`;


CREATE TABLE `tbl_login` (
  `fld_uid` int(11) NOT NULL,
  `fld_username` varchar(64) NOT NULL,
  `fld_password` varchar(64) NOT NULL,
  `fld_act_type` varchar(32) NOT NULL DEFAULT 'reader'
  ,`fld_useremail` varchar(64) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `tbl_feedback` 
	( `fld_fid` INT NOT NULL AUTO_INCREMENT
	, `fld_username` VARCHAR(64) NOT NULL 
	, `fld_feedback` TEXT NOT NULL 
	, `fld_bid` INT NOT NULL 
	, `fld_uid` INT NOT NULL 
	, PRIMARY KEY (`fld_fid`)
) ENGINE = InnoDB;