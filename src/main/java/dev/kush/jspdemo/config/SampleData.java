package dev.kush.jspdemo.config;

import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.github.javafaker.Faker;

import dev.kush.jspdemo.model.Student;
import dev.kush.jspdemo.repository.StudentRepository;

//@Configuration
public class SampleData {
	
//	@Bean
	CommandLineRunner commandLineRunner(StudentRepository studentRepository,Faker faker) {
		return args -> {
			Student s1 = new Student("kush","kush@gmail.com","9473289","software developer");
			Student s2 = new Student("param","param@gmail.com","4378783","software developer");
			Student s3 = new Student("jay","jay@gmail.com","78795465","software developer");
			
			studentRepository.saveAll(List.of(s1,s2,s3));
			for(var i = 0; i <23 ;i++) {
				String name = faker.name().firstName();
				Student student = new Student(
						name.toString(),
						name.toString().toLowerCase() + "@vasyerp.com",
						faker.phoneNumber().phoneNumber().toString(),
						"software developer"
						);
				studentRepository.save(student);
			}
			
		};
	}
	
	
	
	

}
