DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants`(	
`restaurant_id` int(11) AUTO_INCREMENT,
	`name` varchar(64) DEFAULT NULL,
	`phone` varchar(16) DEFAULT NULL,
	`email_address` varchar(64) DEFAULT NULL,
	`tag` varchar(16) DEFAULT NULL,
	`address` varchar(256) DEFAULT NULL,
	`city` varchar(32) DEFAULT NULL,
	`state` varchar(32) DEFAULT NULL,
	`pin_code` int(11) DEFAULT NULL,
	`created_at` datetime DEFAULT CURRENT_TIMESTAMP,
	`updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(`restaurant_id`)  
);

