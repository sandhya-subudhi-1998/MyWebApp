package com.example.demoStudent.controller;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demoStudent.dao.StudentRepo;
import com.example.demoStudent.model.Student;


@Controller
public class StudentController
{

	@Autowired
	StudentRepo repo;

	@RequestMapping("/")
	public String home()
	{	
         return "main.jsp";
	}
	
	@RequestMapping("/addStudent")
	public String addStudent(Student std)
	{
		repo.save(std);
		return "main.jsp";
	}
	
	@RequestMapping("/getStudent")
	public ModelAndView getStudent(@RequestParam int roll)
	{
		ModelAndView mv=new ModelAndView("showStudent.jsp");
		Student std=repo.findById(roll).orElse(new Student());
		mv.addObject(std);
		return mv;
		
	}
	
	@RequestMapping("/getAllStudent")
	public ModelAndView getAllStudent()
	{
		List<Student> list = new ArrayList<Student>();
		ModelAndView mv=new ModelAndView("showStudent.jsp");
		Iterable<Student> std = repo.findAll();
		std.forEach(n->list.add(n));
		mv.addObject("student",list);
		return mv;
		
	}
	

}
