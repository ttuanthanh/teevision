#Add column custom_file
ALTER TABLE `dg_orders`
ADD COLUMN `custom_file`  varchar(255) NULL AFTER `tax`;

ALTER TABLE `dg_orders`
ADD COLUMN `apparel`  varchar(255) NULL AFTER `custom_file`;

ALTER TABLE `dg_shippings`
ADD COLUMN `ship_day`  int NULL AFTER `price`;

ALTER TABLE `dg_orders`
ADD COLUMN `proof_approved`  tinyint NULL DEFAULT 0 AFTER `apparel`;

ALTER TABLE `dg_orders`
ADD COLUMN `total_qty`  int NULL AFTER `total`;

ALTER TABLE `dg_orders`
ADD COLUMN `balance`  varchar(255) NULL AFTER `status`,
ADD COLUMN `tracking_num`  varchar(255) NULL AFTER `balance`;


CREATE TABLE  `dg_order_garment` (
 `id` BIGINT NOT NULL ,
 `order_number` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
 `order_id` BIGINT NULL ,
 `distributor` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
 `number` INT NULL ,
 `date_order` DATE NULL ,
 `eta` DATE NULL ,
 `tracking_number` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
 `cost` FLOAT NULL ,
 `misc_fees` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (  `id` )
) ENGINE = INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;




<!-- new backend -->
ALTER TABLE `dg_order_garment`
CHANGE COLUMN `number` `invoice`  varchar(11) NULL DEFAULT NULL AFTER `distributor`;

ALTER TABLE `dg_orders`
ADD COLUMN `artwork`  varchar(255) NULL AFTER `apparel`;

CREATE TABLE `dg_order_artwork` (
`id`  bigint NOT NULL ,
`front_color`  tinyint NULL ,
`back_color`  tinyint NULL ,
`front_file`  varchar(255) NULL ,
`back_file`  varchar(255) NULL ,
`createdt`  datetime NULL ,
`modidt`  timestamp NULL ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`)
)ENGINE = INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;



CREATE TABLE `dg_comment` (
`id`  bigint NOT NULL AUTO_INCREMENT ,
`order_id`  bigint NULL ,
`user_id`  bigint NULL ,
`user_name`  varchar(255) NULL ,
`text`  text NULL ,
`createdt`  datetime NULL ,
PRIMARY KEY (`id`)
)
;


CREATE TABLE `dg_order_proof` (
`id`  bigint NOT NULL AUTO_INCREMENT ,
`order_id`  bigint NULL ,
`item_id`  bigint NULL ,
`proof_file`  varchar(255) NULL ,
`proof_update`  datetime NULL ,
`is_approved`  tinyint NULL ,
`approvedt`  datetime NULL ,
PRIMARY KEY (`id`)
)
;


# --- 04/08/2016

ALTER TABLE `dg_orders`
ADD COLUMN `ship_approved` tinyint NULL AFTER `apparel`;

CREATE TABLE `dg_order_shipdate` (
`id`  bigint NULL AUTO_INCREMENT ,
`order_id`  bigint NULL ,
`ship_date`  date NULL ,
`is_approved`  tinyint NULL ,
`approvedt`  datetime NULL ,
`approved_name`  varchar(255) NULL ,
PRIMARY KEY (`id`)
)
;