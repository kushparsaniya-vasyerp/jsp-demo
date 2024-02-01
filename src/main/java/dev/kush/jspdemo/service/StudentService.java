package dev.kush.jspdemo.service;

import java.util.List;

import org.springframework.data.domain.Page;

import dev.kush.jspdemo.model.Student;

public interface StudentService {
	List<Student> getAll();
	
	Student getById(Long id);
	
	Student addStudent(Student student);
	
	String deleteStudent(Long id);
	
	Student addRandomStudent();
	
	Student updateStudent(Student student);
	
	List<Student> getByPage(Integer pageno , Integer size);
	
	Long getCount();
}
