package dev.kush.jspdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView getAll(@RequestParam(name = "pageSize", defaultValue = "5") int pageSize) {
		ModelAndView mv = new ModelAndView("table");
		long totalCount = studentService.getCount(); // Assuming studentService.getCount() returns a long value
        long value = (long) pageSize;

        // Calculate the number of iterations
        long count = ceilDivision(totalCount, value);
		mv.addObject("count",count);
		mv.addObject("entries",totalCount);
		mv.addObject("students",studentService.getByPage(0,(int) value));
		
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
	
	@PostMapping("/updateForm")
	public ModelAndView updateStudentForm(IdDto idDto) {
		ModelAndView mv = new ModelAndView("update");
		mv.addObject("student",studentService.getById(idDto.id()));
		return mv;
	}
	
	@PostMapping("/update")
	public String updateStudent(Student student) {
		studentService.updateStudent(student);
		return "redirect:/student/all";
	}
	
	@GetMapping("/page/{pageno}")
	public ModelAndView getByPage(@PathVariable Integer pageno, @RequestParam(name = "pageSize", defaultValue = "5") int pageSize){
		ModelAndView mv = new ModelAndView("table");
		long totalCount = studentService.getCount(); // Assuming studentService.getCount() returns a long value
        long value = (long) pageSize;

        // Calculate the number of iterations
        long count = ceilDivision(totalCount, value);
		mv.addObject("entries",totalCount);
		mv.addObject("count",count);
		mv.addObject("students",studentService.getByPage(pageno - 1,(int) value));
		return mv;
	}
	
	 public static long ceilDivision(long dividend, long divisor) {
	        return (long) Math.ceil((double) dividend / divisor);
	    }
	
	
	
	
}
