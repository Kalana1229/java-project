package com.student.service;

import java.util.ArrayList;

import com.student.model.Student;

public interface IStudentService {
	
	public void addStudent(Student student);
	
	public ArrayList<Student> getStudents();
	
	public ArrayList<Student> getStudentById(String studentId);	
	
	public void updateStudent(String studentId, Student student);
	
	public void deleteStudent(String studentId);
	
}
