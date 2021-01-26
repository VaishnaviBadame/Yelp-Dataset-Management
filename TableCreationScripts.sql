DROP TABLE IF EXISTS `yelp`.`attributes`;
CREATE TABLE  `yelp`.`attributes` (
  `restaurantsdelivery` varchar(20) default NULL,
  `restaurantstableservice` varchar(20) default NULL,
  `happyhour` varchar(45) default NULL,
  `ambience` varchar(255) default NULL,
  `restaurantsreservations` varchar(45) default NULL,
  `bikeparking` varchar(45) default NULL,
  `goodforkids` varchar(45) default NULL,
  `outdoorseating` varchar(45) default NULL,
  `byappointmentonly` varchar(45) default NULL,
  `wifi` varchar(45) default NULL,
  `business_id` varchar(45) NOT NULL,
  `restaurantstakeout` varchar(45) default NULL,
  `acceptscreditcards` varchar(45) default NULL,
  PRIMARY KEY  (`business_id`),
  CONSTRAINT `FK_attributes_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `yelp`.`business`;
CREATE TABLE  `yelp`.`business` (
  `business_id` varchar(25) NOT NULL,
  `name` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `postal_code` varchar(255) default NULL,
  `latitude` float default NULL,
  `longitude` float default NULL,
  `stars` float default NULL,
  `review_count` int(11) default NULL,
  `is_open` int(11) default NULL,
  PRIMARY KEY  (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

create index report_index_business on business(business_id, city, stars);

DROP TABLE IF EXISTS `yelp`.`categories`;
CREATE TABLE  `yelp`.`categories` (
  `business_id` varchar(25) NOT NULL,
  `categories` varchar(255) NOT NULL,
  PRIMARY KEY  (`business_id`,`categories`),
  CONSTRAINT `FK_categories_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

create index category_search on categories(categories);

DROP TABLE IF EXISTS `yelp`.`checkin`;
CREATE TABLE  `yelp`.`checkin` (
  `business_id` varchar(25) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY  (`business_id`,`date`),
  CONSTRAINT `FK_checkin_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `yelp`.`hours`;
CREATE TABLE  `yelp`.`hours` (
  `business_id` varchar(25) NOT NULL,
  `monday` varchar(45) default NULL,
  `tuesday` varchar(45) default NULL,
  `wednesday` varchar(45) default NULL,
  `thursday` varchar(45) default NULL,
  `friday` varchar(45) default NULL,
  `saturday` varchar(45) default NULL,
  `sunday` varchar(45) default NULL,
  PRIMARY KEY  (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `yelp`.`photo`;
CREATE TABLE  `yelp`.`photo` (
  `photo_id` varchar(25) NOT NULL,
  `business_id` varchar(25) NOT NULL,
  `label` varchar(255) default NULL,
  `caption` varchar(255) default NULL,
  PRIMARY KEY  (`photo_id`,`business_id`),
  KEY `FK_photo_1` (`business_id`),
  CONSTRAINT `FK_photo_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `yelp`.`review`;
CREATE TABLE  `yelp`.`review` (
  `user_id` varchar(25) default NULL,
  `review_id` varchar(25) NOT NULL,
  `funny` int(11) default NULL,
  `cool` int(11) default NULL,
  `stars` int(11) default NULL,
  `date` varchar(25) default NULL,
  `business_id` varchar(25) default NULL,
  `text` text,
  `useful` int(11) default NULL,
  `R_dt` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`review_id`),
  KEY `FK_review_1` (`business_id`),
  KEY `FK_review_2` (`user_id`),
  CONSTRAINT `FK_review_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`business_id`),
  CONSTRAINT `FK_review_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `yelp`.`tip`;
CREATE TABLE  `yelp`.`tip` (
  `business_id` varchar(25) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `text` text,
  `date` varchar(25) default NULL,
  `compliment_count` int(11) default NULL,
  PRIMARY KEY  (`business_id`,`user_id`),
  KEY `FK_tip_2` (`user_id`),
  CONSTRAINT `FK_tip_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`business_id`),
  CONSTRAINT `FK_tip_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `yelp`.`user`;
CREATE TABLE  `yelp`.`user` (
  `user_id` varchar(25) NOT NULL,
  `name` varchar(255) default NULL,
  `review_count` int(11) default NULL,
  `compliment_photos` int(11) default NULL,
  `compliment_more` int(11) default NULL,
  `fans` int(11) default NULL,
  `average_stars` float default NULL,
  `compliment_plain` int(11) default NULL,
  `cool` int(11) default NULL,
  `compliment_list` int(11) default NULL,
  `compliment_profile` int(11) default NULL,
  `compliment_note` int(11) default NULL,
  `useful` int(11) default NULL,
  `compliment_hot` int(11) default NULL,
  `compliment_cool` int(11) default NULL,
  `yelping_since` varchar(25) default NULL,
  `compliment_cute` int(11) default NULL,
  `funny` int(11) default NULL,
  `compliment_writer` int(11) default NULL,
  `compliment_funny` int(11) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;