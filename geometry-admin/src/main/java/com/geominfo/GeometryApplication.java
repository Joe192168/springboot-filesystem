package com.geominfo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * @author xqh
 * @Title:
 * @Description:
 * @date 2022/10/1315:51
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class GeometryApplication {

    public static void main(String[] args) {
        SpringApplication.run(GeometryApplication.class,args);
    }

}
