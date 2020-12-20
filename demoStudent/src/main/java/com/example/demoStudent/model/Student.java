package com.example.demoStudent.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student 
{

	@Id
	private int roll;
	private String course;
	private String stream;
	private String grade;
	private String feedback;
	
	public Student() {
		
	}
	
	public Student(int roll, String course, String stream, String grade, String feedback) {
		
		this.roll = roll;
		this.course = course;
		this.stream = stream;
		this.grade = grade;
		this.feedback = feedback;
	}

	public int getRoll() {
		return roll;
	}
	public void setRoll(int roll) {
		this.roll = roll;
	}
	public String getStream() {
		return stream;
	}
	public void setStream(String stream) {
		this.stream = stream;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	@Override
	public String toString() {
		return "Student [roll=" + roll + ", course=" + course + ", stream=" + stream + ", grade=" + grade
				+ ", feedback=" + feedback + "]";
	}
	
	
	
}
