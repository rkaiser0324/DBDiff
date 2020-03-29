SQL_UP = u"""
CREATE TABLE `wp_esign_settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `setting_name` varchar(55) NOT NULL,
  `setting_value` longtext NOT NULL,
  PRIMARY KEY (`setting_id`),
  KEY `setting_name` (`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `wp_esign_signatures` (
  `signature_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `signature_type` varchar(20) NOT NULL DEFAULT 'full',
  `signature_hash` varchar(64) NOT NULL,
  `signature_salt` varchar(40) NOT NULL,
  `signature_data` longtext NOT NULL,
  `signature_added` datetime NOT NULL,
  PRIMARY KEY (`signature_id`),
  KEY `signature_type` (`signature_type`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `wp_esign_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `wp_user_id` int(11) DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_title` varchar(55) NOT NULL DEFAULT '',
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `is_admin` smallint(6) NOT NULL,
  `is_signer` smallint(6) NOT NULL,
  `is_sa` smallint(6) NOT NULL,
  `is_inactive` smallint(6) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
"""
SQL_DOWN = u"""
DROP TABLE `wp_esign_settings`;
DROP TABLE `wp_esign_signatures`;
DROP TABLE `wp_esign_users`;
DROP TABLE `wp_links`;
"""
