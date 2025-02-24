CREATE TABLE `studentinfo` (
  `studentid` INT PRIMARY KEY AUTO_INCREMENT,
  `studentname` VARCHAR(255),
  `mobilenumber` VARCHAR(255) UNIQUE,
  `email` VARCHAR(255) UNIQUE,
  `mentorname` VARCHAR(255),
  `batchid` INT,
  `batchname` VARCHAR(255)
);

CREATE TABLE `taskinfo` (
  `taskid` INT PRIMARY KEY AUTO_INCREMENT,
  `taskname` VARCHAR(255) UNIQUE,
  `studentid` INT,
  `mentorid` INT,
  `mentorname` VARCHAR(25),
  `batchname` VARCHAR(50)
);

CREATE TABLE `mentorinfo` (
  `mentorid` INT PRIMARY KEY AUTO_INCREMENT,
  `email` VARCHAR(50) UNIQUE,
  `contactno` VARCHAR(15) UNIQUE,
  `assignedbatch` VARCHAR(100)
);

CREATE TABLE `batchinfo` (
  `batchid` INT PRIMARY KEY AUTO_INCREMENT,
  `batchname` VARCHAR(255),
  `totalstudents` INT,
  `mentorid` INT
);

CREATE TABLE `queryinfo` (
  `queryid` INT PRIMARY KEY AUTO_INCREMENT,
  `querytext` TEXT,
  `studentid` INT,
  `mentorid` INT
);

CREATE TABLE `dashboardinfo` (
  `dashboardid` INT PRIMARY KEY AUTO_INCREMENT,
  `studentid` INT,
  `mentorid` INT,
  `batchid` INT
);

CREATE TABLE `mockinterviewinfo` (
  `mockinterviewid` INT PRIMARY KEY AUTO_INCREMENT,
  `studentid` INT,
  `mentorid` INT,
  `batchid` INT
);

ALTER TABLE `studentinfo` ADD FOREIGN KEY (`batchid`) REFERENCES `batchinfo` (`batchid`);

ALTER TABLE `taskinfo` ADD FOREIGN KEY (`studentid`) REFERENCES `studentinfo` (`studentid`);

ALTER TABLE `taskinfo` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentorinfo` (`mentorid`);

ALTER TABLE `batchinfo` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentorinfo` (`mentorid`);

ALTER TABLE `queryinfo` ADD FOREIGN KEY (`studentid`) REFERENCES `studentinfo` (`studentid`);

ALTER TABLE `queryinfo` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentorinfo` (`mentorid`);

ALTER TABLE `dashboardinfo` ADD FOREIGN KEY (`studentid`) REFERENCES `studentinfo` (`studentid`);

ALTER TABLE `dashboardinfo` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentorinfo` (`mentorid`);

ALTER TABLE `dashboardinfo` ADD FOREIGN KEY (`batchid`) REFERENCES `batchinfo` (`batchid`);

ALTER TABLE `mockinterviewinfo` ADD FOREIGN KEY (`studentid`) REFERENCES `studentinfo` (`studentid`);

ALTER TABLE `mockinterviewinfo` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentorinfo` (`mentorid`);

ALTER TABLE `mockinterviewinfo` ADD FOREIGN KEY (`batchid`) REFERENCES `batchinfo` (`batchid`);