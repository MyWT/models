CREATE DATABASE `mwt`

CREATE TABLE  `mwt`.`jdo_sequencex` (
  `PKX` int(10) unsigned NOT NULL DEFAULT '0',
  `SEQUENCEX` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  `mwt`.`phase` (
  `PhaseId` bigint(20) NOT NULL,
  `ProjectId` bigint(20) DEFAULT NULL,
  `PhaseName` varchar(150) DEFAULT NULL,
  `JDOLOCKX` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`PhaseId`),
  KEY `FK_Association_1` (`ProjectId`),
  CONSTRAINT `FK_Association_1` FOREIGN KEY (`ProjectId`) REFERENCES `project` (`ProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE  `mwt`.`project` (
  `ProjectId` bigint(20) NOT NULL,
  `CreatedById` bigint(20) DEFAULT NULL,
  `ProjectName` varchar(150) DEFAULT NULL,
  `JDOLOCKX` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`ProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE  `mwt`.`task` (
  `TaskId` bigint(20) NOT NULL,
  `PhaseId` bigint(20) DEFAULT NULL,
  `ProjectId` bigint(20) DEFAULT NULL,
  `CreatedById` bigint(20) DEFAULT NULL,
  `TaskName` varchar(150) DEFAULT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `JDOLOCKX` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`TaskId`),
  KEY `FK_Association_2` (`PhaseId`),
  KEY `FK_Association_3` (`ProjectId`),
  CONSTRAINT `FK_Association_2` FOREIGN KEY (`PhaseId`) REFERENCES `phase` (`PhaseId`),
  CONSTRAINT `FK_Association_3` FOREIGN KEY (`ProjectId`) REFERENCES `project` (`ProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE  `mwt`.`user` (
  `UserName` varchar(45) NOT NULL,
  `SuperUser` tinyint(1) DEFAULT NULL,
  `JDOLOCKX` int(10) unsigned DEFAULT NULL,
  `UserId` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;