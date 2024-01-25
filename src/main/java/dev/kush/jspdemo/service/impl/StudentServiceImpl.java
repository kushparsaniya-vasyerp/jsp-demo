package dev.kush.jspdemo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.javafaker.Faker;

import dev.kush.jspdemo.model.Student;
import dev.kush.jspdemo.repository.StudentRepository;
import dev.kush.jspdemo.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{
	
	
	private final StudentRepository studentRepository;
	private final Faker faker;
	
	@Autowired
	public StudentServiceImpl(StudentRepository studentRepository, Faker faker) {
		super();
		this.studentRepository = studentRepository;
		this.faker = faker;
	}


	@Override
	public List<Student> getAll() {
		// TODO Auto-generated method stub
		return studentRepository.findAll();
	}
	
	

	@Override
	public Student addStudent(Student student) {
		// TODO Auto-generated method stub
		return studentRepository.save(student);
	}

	@Override
	public void deleteStudent(Long id) {
		// TODO Auto-generated method stub
		studentRepository.deleteById(id);
	}

	@Override
	public Student addRandomStudent() {
		String name = faker.name().firstName();
		Student student = new Student(
				name.toString(),
				name.toString().toLowerCase() + "@vasyerp.com",
				faker.phoneNumber().phoneNumber().toString(),
				"software developer"
				);
		
		return studentRepository.save(student);
	}


	@Override
	public Student getById(Long id) {
		// TODO Auto-generated method stub
		return studentRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("User with id doesn't exist"));
	}

}
