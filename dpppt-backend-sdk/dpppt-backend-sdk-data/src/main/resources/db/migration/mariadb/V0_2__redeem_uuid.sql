CREATE TABLE t_redeem_uuid (
 `pk_redeem_uuid_id` INT NOT NULL AUTO_INCREMENT,
 `uuid` varchar(50) NOT NULL,
 `received_at` Timestamp DEFAULT now() NOT NULL,
 CONSTRAINT PK_t_redeem_uuid PRIMARY KEY (pk_redeem_uuid_id),
 CONSTRAINT uuid UNIQUE KEY (uuid)
) ENGINE=INNODB;
