package com.example.demoStudent.dao;


import org.springframework.data.repository.CrudRepository;

import com.example.demoStudent.model.Student;

public interface StudentRepo extends CrudRepository<Student,Integer>
{
}
