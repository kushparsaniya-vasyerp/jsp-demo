package dev.kush.jspdemo.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import dev.kush.jspdemo.model.Student;
import dev.kush.jspdemo.service.StudentService;

@RestController
@RequestMapping("/rest")
public class StudentRestController {
	
	private final StudentService studentService;

	public StudentRestController(StudentService studentService) {
		this.studentService = studentService;
	}
	
	@GetMapping("/all")
	public ResponseEntity<List<Student>> getAll(){
		return new ResponseEntity<>(studentService.getAll(),HttpStatus.OK);
	}
	
	@GetMapping("/get/{id}")
	public ResponseEntity<Student> getById(@PathVariable Long id){
		return ResponseEntity.ok(studentService.getById(id));
	}
	
	@PostMapping("/add")
	public ResponseEntity<Student> addStudent(@RequestBody Student student){
		return ResponseEntity.ok(studentService.addStudent(student));
	}
	
	@DeleteMapping("/delete/{id}")
	public ResponseEntity<String> deleteStudent(@PathVariable Long id){
		return ResponseEntity.ok(studentService.deleteStudent(id));
	}
	
	@PutMapping("/update")
	public ResponseEntity<Student> updateStudent(@RequestBody Student student){
		return ResponseEntity.ok(studentService.updateStudent(student));
	}
	
}
