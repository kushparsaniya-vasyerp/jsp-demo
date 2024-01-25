package dev.kush.jspdemo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
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
	
	public String getGithub() {
		return github;
	}

	public void setGithub(String github) {
		this.github = github;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}

	public Student() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {	
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	
	
	

}
