package org.dpppt.backend.sdk.ws.config;

import org.flywaydb.core.Flyway;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
@Profile("prod_ib")
public class WSProdIBConfig extends WSProdConfig {

    @Bean
    @Override
    public Flyway flyway() {
        final Flyway flyWay = Flyway.configure().dataSource(dataSource()).locations("classpath:/db/migration/mariadb").load();
        flyWay.migrate();
        return flyWay;
    }

    @Override
    public String getDbType() {
        return "mariadb";
    }

}
