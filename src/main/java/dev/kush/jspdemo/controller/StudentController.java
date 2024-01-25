package dev.kush.jspdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dev.kush.jspdemo.dto.IdDto;
import dev.kush.jspdemo.model.Student;
import dev.kush.jspdemo.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	StudentService studentService;
	
	@GetMapping("/all")
	public ModelAndView getAll() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("students",studentService.getAll());
		return mv;
	}
	
	@GetMapping("/get")
	public ModelAndView getById(IdDto idDto) {
		ModelAndView mv = new ModelAndView("profile");
		mv.addObject("student",studentService.getById(idDto.id()));
		return mv;
	}
	
	@PostMapping("/delete") 
	public String deleteStudent(IdDto idDto) {
		studentService.deleteStudent(idDto.id());
		return "redirect:/student/all";
	}
	
	@PostMapping("/addRandom") 
	public String addRandomStudent() {
		studentService.addRandomStudent();
		return "redirect:/student/all";
	}
	
	@PostMapping("/addForm")
	public ModelAndView addStudentForm() {
		return new ModelAndView("add");
	}
	
	@PostMapping("/add")
	public String addStudent(Student student) {
		studentService.addStudent(student);
		return "redirect:/student/all";

	}
	
	
	
	
}
