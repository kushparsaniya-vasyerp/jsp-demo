package dev.kush.jspdemo.config;

import java.util.List;
import java.util.Locale;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.github.javafaker.Faker;

import dev.kush.jspdemo.model.Student;
import dev.kush.jspdemo.repository.StudentRepository;

@Configuration
public class SampleData {
	
	@Bean
	CommandLineRunner commandLineRunner(StudentRepository studentRepository) {
		return args -> {
			Student s1 = new Student("kush","kush@gmail.com","9473289","software developer");
			Student s2 = new Student("param","param@gmail.com","4378783","software developer");
			Student s3 = new Student("jay","jay@gmail.com","78795465","software developer");
			
			studentRepository.saveAll(List.of(s1,s2,s3));
		};
	}
	
	@Bean
	Faker faker() {
		return new Faker(new Locale("en-IND"));
	}

}
