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




DROP TABLE `portfolio`;
CREATE TABLE `portfolio` (
	`idx` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '제목',
    `content` TEXT,
    `regdate` TIMESTAMP NOT NULL DEFAULT NOW() COMMENT '등록일',
    PRIMARY KEY(`idx`)
);
SELECT * FROM `portfolio`;




DROP TABLE `portfolio_files`;
CREATE TABLE `portfolio_files` (
	`idx` INT NOT NULL AUTO_INCREMENT,
    `portfolio_idx` INT NOT NULL DEFAULT 0 COMMENT '원글 idx',
    `file_name` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '파일명',
    `file_size` INT NOT NULL DEFAULT 0 COMMENT '파일용량',
    PRIMARY KEY(`idx`)
);
ALTER TABLE `portfolio_files` ADD CONSTRAINT `fk_portfolio` FOREIGN KEY (`portfolio_idx`) REFERENCES `portfolio` (`idx`);
SELECT * FROM `portfolio_files`;