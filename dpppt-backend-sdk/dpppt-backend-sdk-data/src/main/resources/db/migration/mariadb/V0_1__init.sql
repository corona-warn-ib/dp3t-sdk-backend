CREATE TABLE t_exposed (
 `pk_exposed_id` INT NOT NULL AUTO_INCREMENT,
 `key` Text NOT NULL,
 `received_at` Timestamp DEFAULT now() NOT NULL,
 `onset` Date NOT NULL,
 `app_source` varchar(50) NOT NULL,
 CONSTRAINT PK_t_exposed PRIMARY KEY (pk_exposed_id),
 CONSTRAINT `key` UNIQUE KEY (`key`)
) ENGINE=INNODB;
