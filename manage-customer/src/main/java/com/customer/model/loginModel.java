package com.customer.model;

public class loginModel {
	private String username;
	private String password;
	private String type;
	
	
	public loginModel() {
	}

	public loginModel(String username, String password, String type) {
		super();
		this.username = username;
		this.password = password;
		this.type = type;
	}

	public String getusername() {
		return username;
	}

	public void setusername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}
