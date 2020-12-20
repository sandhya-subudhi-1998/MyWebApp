package com.example.demoStudent.repo;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import com.example.demoStudent.dao.StudentRepo;
import com.example.demoStudent.model.Student;


@ExtendWith(MockitoExtension.class)
@DataJpaTest	
public class RepoTest 
{

	@Autowired
	StudentRepo repo;
	static List<Student> std=List.of(new Student(10101,"B.tech","CSE","O","FRESHER"),new Student(20202,"B.TECH","ECE","A","FRESHER"));
	
	
	//Testing the save method 
	@Test
	void testSave()
	{
		repo.save(std.get(0));
		List<Student> student=new ArrayList<Student>();
		repo.findAll().forEach(c->student.add(c));
		assertEquals(1,student.size());
	}
	
	//Testing the findById method 
	@Test
	void testFindById() 
	{
			Student expected=repo.save(std.get(0));		
			Optional<Student> actual=repo.findById(expected.getRoll());
			assertEquals(expected,actual.get());
	}
	
	//Testing the findAll method 
	@Test
	void testFindAll() 
	{
			List<Student> details=new ArrayList<Student>();
			repo.findAll().forEach(b->details.add(b));
			assertEquals(0,details.size());		 
			repo.save(std.get(0));
			repo.save(std.get(1));
			repo.findAll().forEach(c->details.add(c));
			assertEquals(2,details.size());
		}
	
}
