CREATE TABLE t_gaen_exposed (
 `pk_exposed_id` INT NOT NULL AUTO_INCREMENT,
 `key` VARCHAR(24) NOT NULL,
 `rolling_start_number` Int NOT NULL,
 `rolling_period` Int NOT NULL,
 `transmission_risk_level` Int NOT NULL,
 `received_at` Timestamp DEFAULT now() NOT NULL,
 CONSTRAINT PK_t_gaen_exposed PRIMARY KEY (pk_exposed_id),
 CONSTRAINT `gaen_exposed_key` UNIQUE KEY (`key`)
) ENGINE=INNODB;
