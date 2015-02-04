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

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`(
`question_id` int(11) NOT NULL AUTO_INCREMENT,
        `description` varchar(255) DEFAULT NULL,
        `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
        `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        `soft_delete` int(1) DEFAULT NULL,
        `question_type` varchar(32) DEFAULT NULL,
        PRIMARY KEY(`question_id`)
);


DROP TABLE IF EXISTS `questions_options`;
CREATE TABLE `questions_options`(
`question_id` int(11) NOT NULL AUTO_INCREMENT,
        `options` varchar(64) DEFAULT NULL,
        `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
        `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        `soft_delete` int(11) DEFAULT NULL,
        PRIMARY KEY(`question_id`)
);

DROP TABLE IF EXISTS `restaurants_table`;
CREATE TABLE `restaurants_table`(
`restaurant_table_id` int(11) NOT NULL AUTO_INCREMENT,
        `restaurant_id` int(11) NOT NULL,
        `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
        `soft_delete` int(11) DEFAULT NULL,
        `table_id` int(11) DEFAULT NULL,
        PRIMARY KEY(`restaurant_table_id`)
);

DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers`(
`answer_id` int(11) NOT NULL AUTO_INCREMENT,
		`question_id` int(11) NOT NULL,
        `answer` varchar(64) DEFAULT NULL,
        `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
        `restaurant_table_id` int(11) DEFAULT NULL,
        PRIMARY KEY(`answer_id`)
);

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`(
`comment_id` int(11) NOT NULL AUTO_INCREMENT,
        `comment` varchar(64) DEFAULT NULL,
        `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
        `restaurant_table_id` int(11) DEFAULT NULL,
        PRIMARY KEY(`comment_id`)
);

DROP TABLE IF EXISTS `restaurant_questions`;
CREATE TABLE `restaurant_questions`(
`restaurant_question_id` int(11) NOT NULL AUTO_INCREMENT,
        `question_id` int(11) NOT NULL,
        `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY(`restaurant_question_id`)
);


