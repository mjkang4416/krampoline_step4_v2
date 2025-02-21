CREATE SCHEMA IF NOT EXISTS `AssistPeople` DEFAULT CHARACTER SET utf8mb4;

GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
GRANT ALL ON AssistPeople.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `AssistPeople`;

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
    `user_id` BIGINT NOT NULL AUTO_INCREMENT,
    `nick_name` VARCHAR(50) UNIQUE,
    `password` VARCHAR(255),
    `mbti` VARCHAR(10),
    `id` VARCHAR(50) UNIQUE,
    `introduce` TEXT,
    `reason` TEXT,
    `appeal` TEXT,
    `user_pic` VARCHAR(255),
    `role` VARCHAR(20),
    PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `user` (`nick_name`, `password`, `mbti`, `id`, `introduce`, `reason`, `appeal`, `user_pic`, `role`) 
VALUES ('testUser', 'password123', 'INFJ', 'testID', 'Hello! I am a user.', 'I love coding.', 'Hardworking person.', 'profile.jpg', 'USER');
