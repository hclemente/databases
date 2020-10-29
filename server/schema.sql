-- CREATE DATABASE chat;

USE chat;

-- drop table messages;

create table rooms (
  id integer not null,
  roomname varchar(255),
  primary key (id)
);

create table friends (
  id integer not null,
  friend varchar(255),
  primary key (id)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id INTEGER NOT NULL,
  message VARCHAR(255) NOT NULL,
  friends_id INTEGER NULL,
  room_id INTEGER NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (room_id) REFERENCES rooms (id),
  FOREIGN KEY (friends_id) REFERENCES friends (id)
);
-- CREATE TABLE friends (
--   /* Describe your table here.*/
--   id INTEGER NOT NULL,
--   username VARCHAR NOT NULL,
--   PRIMARY KEY (id)
-- );
-- CREATE TABLE rooms (
--   /* Describe your table here.*/
--   id INTEGER NOT NULL,
--   roomname VARCHAR NOT NULL,
--   PRIMARY KEY (id)
-- );

-- mysql -u root -p < server/schema.sql

/* Create other tables and define schemas for them here! */



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

-- -- ---
-- -- Globals
-- -- ---

-- -- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- -- SET FOREIGN_KEY_CHECKS=0;

-- -- ---
-- -- Table 'rooms'
-- --
-- -- ---

-- DROP TABLE IF EXISTS `rooms`;

-- CREATE TABLE `rooms` (
--   `id` INTEGER NULL DEFAULT NULL,
--   `messages_id` INTEGER NULL DEFAULT NULL,
--   `name` VARCHAR NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- -- ---
-- -- Table 'messages'
-- --
-- -- ---

-- DROP TABLE IF EXISTS `messages`;

-- CREATE TABLE `messages` (
--   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
--   `message` VARCHAR NULL DEFAULT NULL,
--   `friends_id` INTEGER NULL DEFAULT NULL,
--   `room_id` INTEGER NULL DEFAULT NULL,
--   `user_id` VARCHAR NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- -- ---
-- -- Table 'friends'
-- --
-- -- ---

-- DROP TABLE IF EXISTS `friends`;

-- CREATE TABLE `friends` (
--   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
--   `name` VARCHAR NULL DEFAULT NULL,
--   `user_id` INTEGER NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- -- ---
-- -- Table 'users'
-- --
-- -- ---

-- DROP TABLE IF EXISTS `users`;

-- CREATE TABLE `users` (
--   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
--   `name` VARCHAR NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- -- ---
-- -- Foreign Keys
-- -- ---


-- -- ---
-- -- Table Properties
-- -- ---

-- -- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- ALTER TABLE `friends` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- -- ---
-- -- Test Data
-- -- ---

-- -- INSERT INTO `rooms` (`id`,`messages_id`,`name`) VALUES
-- -- ('','','');
-- -- INSERT INTO `messages` (`id`,`message`,`friends_id`,`room_id`,`user_id`) VALUES
-- -- ('','','','','');
-- -- INSERT INTO `friends` (`id`,`name`,`user_id`) VALUES
-- -- ('','','');
-- -- INSERT INTO `users` (`id`,`name`) VALUES
-- -- ('','');