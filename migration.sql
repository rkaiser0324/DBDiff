SQL_UP = u"""
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `abbreviation` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `wp_ontrix_members` ADD `is_married` tinyint(1) DEFAULT NULL;
ALTER TABLE `wp_ontrix_projects` ADD `client_id` int(11) DEFAULT NULL;
ALTER TABLE `wp_ontrix_projects` ADD `zip` int(10) DEFAULT NULL;
ALTER TABLE `wp_ontrix_projects` ADD `state_id` int(11) DEFAULT NULL;
ALTER TABLE `wp_ontrix_projects` ADD `city` varchar(255) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `is_exempt` tinyint(1) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `dependents` int(11) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `state_id` int(11) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `zip` varchar(10) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `city` varchar(255) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `address_2` varchar(255) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `address` varchar(255) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `drivers_license_state_id` int(11) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `drivers_license_number` varchar(20) DEFAULT NULL;
ALTER TABLE `wp_ontrix_members` ADD `social_security_number` varchar(20) DEFAULT NULL;
ALTER TABLE `wp_ontrix_projects` ADD `audience_size` int(11) DEFAULT NULL;
"""
SQL_DOWN = u"""
DROP TABLE `clients`;
DROP TABLE `states`;
DROP TABLE `phinxlog`;
ALTER TABLE `wp_ontrix_members` DROP `is_married`;
ALTER TABLE `wp_ontrix_projects` DROP `client_id`;
ALTER TABLE `wp_ontrix_projects` DROP `zip`;
ALTER TABLE `wp_ontrix_projects` DROP `state_id`;
ALTER TABLE `wp_ontrix_projects` DROP `city`;
ALTER TABLE `wp_ontrix_members` DROP `is_exempt`;
ALTER TABLE `wp_ontrix_members` DROP `dependents`;
ALTER TABLE `wp_ontrix_members` DROP `state_id`;
ALTER TABLE `wp_ontrix_members` DROP `zip`;
ALTER TABLE `wp_ontrix_members` DROP `city`;
ALTER TABLE `wp_ontrix_members` DROP `address_2`;
ALTER TABLE `wp_ontrix_members` DROP `address`;
ALTER TABLE `wp_ontrix_members` DROP `drivers_license_state_id`;
ALTER TABLE `wp_ontrix_members` DROP `drivers_license_number`;
ALTER TABLE `wp_ontrix_members` DROP `social_security_number`;
ALTER TABLE `wp_ontrix_projects` DROP `audience_size`;
"""
