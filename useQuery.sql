CREATE DATABASE `homepage`;
USE `homepage`;




DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
	`idx` INT NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(12) NOT NULL DEFAULT '' COMMENT '아이디',
    `userpw` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '비밀번호',
    `username` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '이름',
    `email` VARCHAR(100) NOT NULL DEFAULT '' COMMENT '메일주소',
    `regdate` TIMESTAMP NOT NULL DEFAULT NOW() COMMENT '가입일시',
    PRIMARY KEY(`idx`)
);
INSERT INTO `member` SET `userid`='hyunny333', `userpw`=PASSWORD('tkdgus2'), `username`='엄상현', `email`='hyunny333@gmail.com';
SELECT * FROM `member`;