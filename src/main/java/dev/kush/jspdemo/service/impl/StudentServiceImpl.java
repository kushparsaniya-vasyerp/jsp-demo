package dev.kush.jspdemo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
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
		return studentRepository.findAll();
	}
	
	

	@Override
	public Student addStudent(Student student) {
		return studentRepository.save(student);
	}

	@Override
	public String deleteStudent(Long id) {
		studentRepository.deleteById(id);
		return "successfully deleted";
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
		return studentRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("User with id doesn't exist"));
	}


	@Override
	public Student updateStudent(Student student) {
		Long id = student.getId();
		Student newStd = studentRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("User with id doesn't exist"));

		if (student.getName() != null && !student.getName().isEmpty()) {
			newStd.setName(student.getName());
		}
		
		if (student.getEmail() != null && !student.getEmail().isEmpty()) {
			newStd.setEmail(student.getEmail());
		}
		if (student.getPhone() != null && !student.getPhone().isEmpty()) {
			newStd.setPhone(student.getPhone());
		}
		
		if (student.getGithub() != null && !student.getGithub().isEmpty()) {
			newStd.setGithub(student.getGithub());
		}
		
		if (student.getLinkedin() != null && !student.getLinkedin().isEmpty()) {
			newStd.setLinkedin(student.getLinkedin());
		}
		
		studentRepository.save(newStd);
		
		return newStd;	
		
	}


	@Override
	public List<Student> getByPage(Integer pageno, Integer size) {
		PageRequest pr = PageRequest.of(pageno, size);
		var page = studentRepository.findAll(pr);
		return page.getContent();
	}


	@Override
	public Long getCount() {
		return studentRepository.count();	}
	
	

}
