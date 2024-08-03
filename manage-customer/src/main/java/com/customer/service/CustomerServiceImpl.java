package com.customer.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.customer.model.Customer;
import com.customer.util.CommonConstants;
import com.customer.util.CommonUtil;
import com.customer.util.DBConnection;
import com.customer.util.QueryUtil;




public class CustomerServiceImpl implements ICustomerService {

	private static Connection connection;
	private static Statement stmt;
	private static PreparedStatement preparedStatement;
	
	static {
		
		createcustomerTable();
	}
	
	public static void createcustomerTable(){
		
		try {
			connection = DBConnection.getDBConnection();
			
			stmt = connection.createStatement();
			
			stmt.execute(QueryUtil.queryById(CommonConstants.QUERY_ID_CREATE_CUSTOMER_TABLE));
			
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
	public void addCustomer(Customer customer) {

		String customerId = CommonUtil.genarateCustomerIds(getcustomerIds());		
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_INSERT_CUSTOMER));
			connection.setAutoCommit(false);
			
			customer.setCustomerId(customerId);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, customer.getCustomerId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, customer.getFirstName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, customer.getLastName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, customer.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, customer.getMobileNo());
			
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
	public ArrayList<Customer> getCustomer() {

		ArrayList<Customer> customerList = new ArrayList<Customer>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ALL_CUSTOMERS));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				Customer ct = new Customer();
				
				ct.setCustomerId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				ct.setFirstName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				ct.setLastName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				ct.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				ct.setMobileNo(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				
				customerList.add(ct);
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
		 	return customerList;
	}
		


	@Override
	public ArrayList<Customer> getCustomertById(String customerId) {
		
		ArrayList<Customer> customerList = new ArrayList<Customer>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_CUSTOMER_BY_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, customerId);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				Customer ct = new Customer();
				
				ct.setCustomerId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				ct.setFirstName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				ct.setLastName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				ct.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				ct.setMobileNo(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				
				customerList.add(ct);
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
		 	return customerList;
	}
		

	@Override
	public void updateCustomer(String customerId, Customer customer) {
		
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_UPDATE_CUSTOMER));
			connection.setAutoCommit(false);
			
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, customer.getFirstName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, customer.getLastName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, customer.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, customer.getMobileNo());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, customer.getCustomerId());
			
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
	public void deleteCustomer(String customerId) {
		
		if(customerId != null && !customerId.isEmpty()) {
			
			try {
				
				connection = DBConnection.getDBConnection();
				preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_DELETE_STUDENT));
				
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, customerId);
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
	
	public ArrayList<String> getcustomerIds(){
		
		ArrayList<String> ids = new ArrayList<String>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_CUSTOMER_IDS));
			
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
