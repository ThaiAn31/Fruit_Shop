package com.web.fruitshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.web.fruitshop.storageConfig.StorageProperties;

@EnableConfigurationProperties(StorageProperties.class)
@SpringBootApplication
public class FruitShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(FruitShopApplication.class, args);
	}

}
