#Add column custom_file
ALTER TABLE `dg_orders`
ADD COLUMN `custom_file`  varchar(255) NULL AFTER `tax`;

ALTER TABLE `dg_orders`
ADD COLUMN `apparel`  varchar(255) NULL AFTER `custom_file`;

ALTER TABLE `dg_shippings`
ADD COLUMN `ship_day`  int NULL AFTER `price`;

