package com.pojo;

public class doctor {

	private int id;
	private String fullName;
	private String dob;
	private String qualification;
	private String specialist;
	
	private String mobno;
	private String password;           
	
	
	
	public doctor(String fullName, String dob, String qualification, String specialist, String email,
			String mobno, String password) {
		super();
		
		this.fullName = fullName;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.mobno = mobno;
		this.password = password;
	}
	public doctor() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String email;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSpecialist() {
		return specialist;
	}
	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public doctor(int id, String fullName, String dob, String qualification, String specialist, String mobno,
			String password, String email) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.mobno = mobno;
		this.password = password;
		this.email = email;
	}
	
}
