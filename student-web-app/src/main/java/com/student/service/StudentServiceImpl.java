package com.student.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;


import com.student.model.Student;
import com.student.util.CommonConstants;
import com.student.util.CommonUtil;
import com.student.util.DBConnection;
import com.student.util.QueryUtil;

public class StudentServiceImpl implements IStudentService {

	private static Connection connection;
	private static Statement stmt;
	private static PreparedStatement preparedStatement;
	
	static {
		
		createstudentTable();
	}
	
	public static void createstudentTable(){
		
		try {
			connection = DBConnection.getDBConnection();
			
			stmt = connection.createStatement();
			
			stmt.execute(QueryUtil.queryById(CommonConstants.QUERY_ID_CREATE_STUDENT_TABLE));
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println("Create table exception"+e.getMessage());
		}finally{
			try {
				
				if (connection != null) {
					
					connection.close();
					
				}
				if(stmt != null) {
					
					stmt.close();
					
				}
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
		}
	}
	
	@Override
	public void addStudent(Student student) {
		
		String studentId = CommonUtil.genarateStudentIds(getstudentIds());		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_INSERT_STUDENT));
			connection.setAutoCommit(false);
			
			student.setStudentId(studentId);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, student.getStudentId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, student.getFirstName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, student.getLastName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, student.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, student.getMobileNo());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
		}finally{
			try {
				
				if (connection != null) {
					
					connection.close();
					
				}
				if(preparedStatement != null) {
					
					preparedStatement.close();
					
				}
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
			
		}
		
	}

	@Override
	public ArrayList<Student> getStudents() {
		
		ArrayList<Student> studentList = new ArrayList<Student>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ALL_STUDENTS));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				Student st = new Student();
				
				st.setStudentId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				st.setFirstName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				st.setLastName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				st.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				st.setMobileNo(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				
				studentList.add(st);
			}
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
		}finally{
			try {
				
				if (connection != null) {
					
					connection.close();
					
				}
				if(preparedStatement != null) {
					
					preparedStatement.close();
					
				}
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
			
		}
		 	return studentList;
	}

	@Override
	public ArrayList<Student> getStudentById(String studentId) {
		ArrayList<Student> studentList = new ArrayList<Student>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_STUDENT_BY_ID));
			preparedStatement.setNString(CommonConstants.COLUMN_INDEX_ONE, studentId);
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				Student st = new Student();
				
				st.setStudentId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				st.setFirstName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				st.setLastName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				st.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				st.setMobileNo(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				
				studentList.add(st);
			}
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
		}finally{
			try {
				
				if (connection != null) {
					
					connection.close();
					
				}
				if(preparedStatement != null) {
					
					preparedStatement.close();
					
				}
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
			
		}
		 	return studentList;
		
	
	}

	@Override
	public void updateStudent(String studentId, Student student) {
	    
        try {
			
			connection = DBConnection.getDBConnection();
			
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_UPDATE_STUDENT));
			connection.setAutoCommit(false);
			
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, student.getFirstName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, student.getLastName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, student.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, student.getMobileNo());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, student.getStudentId());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
		}finally{
			try {
				
				if (connection != null) {
					
					connection.close();
					
				}
				if(preparedStatement != null) {
					
					preparedStatement.close();
					
				}
			}catch(SQLException e) {
				
				System.out.println("Error occurred while closing resources: " +e.getMessage());
			}
			
		}
		
	}

	@Override
	public void deleteStudent(String studentId) {
		
		if(studentId != null && !studentId.isEmpty()) {
			
			try {
				
				connection = DBConnection.getDBConnection();
				preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_DELETE_STUDENT));
				
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, studentId);
				preparedStatement.execute();
				
			}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e){
				System.out.println(e.getMessage());
			}finally{
				try {
					
					if (connection != null) {
						
						connection.close();
						
					}
					if(preparedStatement != null) {
						
						preparedStatement.close();
						
					}
				}catch(SQLException e) {
					
					System.out.println(e.getMessage());
				}
				
			}
			
		}
		
	}
	
	public ArrayList<String> getstudentIds(){
		
		ArrayList<String> ids = new ArrayList<String>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_STUDENT_IDS));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				ids.add(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
			}
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
		}finally{
			try {
				
				if (connection != null) {
					
					connection.close();
					
				}
				if(preparedStatement != null) {
					
					preparedStatement.close();
					
				}
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
		}
		return ids;
		
		
	}
	
	

}
