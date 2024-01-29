package dev.kush.jspdemo.service;

import java.util.List;

import dev.kush.jspdemo.model.Student;

public interface StudentService {
	List<Student> getAll();
	
	Student getById(Long id);
	
	Student addStudent(Student student);
	
	void deleteStudent(Long id);
	
	Student addRandomStudent();
	
	Student updateStudent(Student student);
}
