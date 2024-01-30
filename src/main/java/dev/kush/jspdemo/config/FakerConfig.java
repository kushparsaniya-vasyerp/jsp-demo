package dev.kush.jspdemo.config;

import java.util.Locale;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.github.javafaker.Faker;

@Configuration
public class FakerConfig {
	@Bean
	Faker faker() {
		return new Faker(new Locale("en-IND"));
	}
}
