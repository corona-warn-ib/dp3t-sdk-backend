CREATE TABLE t_debug_gaen_exposed (
 `pk_exposed_id` INT NOT NULL AUTO_INCREMENT,
 `device_name` VARCHAR(200) NOT NULL,
 `key` VARCHAR(24) NOT NULL,
 `rolling_start_number` BigInt NOT NULL,
 `rolling_period` BigInt NOT NULL,
 `transmission_risk_level` Int NOT NULL,
 `received_at` Timestamp DEFAULT now() NOT NULL,
 CONSTRAINT PK_t_debug_gaen_exposed PRIMARY KEY (pk_exposed_id),
 CONSTRAINT `debug_gaen_exposed_key` UNIQUE KEY (`key`)
) ENGINE=INNODB;
