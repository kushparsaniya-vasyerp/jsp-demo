package dev.kush.jspdemo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Student {
	
	@Id  @GeneratedValue
	private Long id;
	private String name;
	private String email;
	private String phone;
	private String position;
	private String github;
	private String linkedin;
	
	
	
	public Student(String name, String email, String phone, String position) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.position = position;
		this.github = "https://github.com/KushParsaniya";
		this.linkedin = "https://www.linkedin.com/";
	}
	
	
	
	

}
