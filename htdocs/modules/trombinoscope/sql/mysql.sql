# SQL Dump for trombinoscope module
# PhpMyAdmin Version: 4.0.4
# http://www.phpmyadmin.net
#
# Host: xmodules.jubile.fr
# Generated on: Wed Oct 27, 2021 to 17:59:19
# Server version: 5.6.49-log
# PHP Version: 7.3.31

#
# Structure table for `trombinoscope_categories` 5
#

CREATE TABLE `trombinoscope_categories` (
  `cat_id` INT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_parent_id` INT(10) NOT NULL DEFAULT '0',
  `cat_name` VARCHAR(255) NOT NULL DEFAULT '',
  `cat_comments` TEXT NOT NULL ,
  `cat_weight` TINYINT(1) NOT NULL DEFAULT '0',
  `cat_theme` VARCHAR(50) NOT NULL DEFAULT '',
  `cat_default` INT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  INDEX (`cat_parent_id`),
  INDEX (`cat_name`)
) ENGINE=InnoDB;

#
# Structure table for `trombinoscope_members` 16
#

CREATE TABLE `trombinoscope_members` (
  `mbr_id` INT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mbr_cat_id` INT(10) NOT NULL DEFAULT '0',
  `mbr_quality_id` TINYINT(1) NOT NULL DEFAULT '0',
  `mbr_submitter` INT(0) NOT NULL DEFAULT '0',
  `mbr_uid` INT(0) NOT NULL DEFAULT '0',
  `mbr_civilite` VARCHAR(12) NOT NULL DEFAULT '',
  `mbr_firstname` VARCHAR(50) NOT NULL DEFAULT '',
  `mbr_lastname` VARCHAR(50) NOT NULL DEFAULT '',
  `mbr_address` TEXT NOT NULL ,
  `mbr_fonctions` VARCHAR(255) NOT NULL DEFAULT '',
  `mbr_photo` VARCHAR(255) NOT NULL DEFAULT '',
  `mbr_birthday` date NOT NULL DEFAULT '0000-00-00',
  `mbr_email` VARCHAR(80) NOT NULL DEFAULT '',
  `mbr_fixe` VARCHAR(30) NOT NULL DEFAULT '',
  `mbr_mobile` VARCHAR(30) NOT NULL DEFAULT '',
  `mbr_status` CHAR(80) NOT NULL DEFAULT '',
  `mbr_comments` TEXT NOT NULL ,
  `mbr_actif` INT(1) NOT NULL DEFAULT '0',
  `mbr_creation` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mbr_update` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`mbr_id`)
) ENGINE=InnoDB;

CREATE TABLE `trombinoscope_qualities` (
  `quality_id` INT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quality_name` VARCHAR(255) NOT NULL DEFAULT '',
  `quality_weight` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`quality_id`),
  INDEX (`quality_name`)
) ENGINE=InnoDB;

