package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pojo.Appointment;

public class AppointmentDao {
	private Connection con;

	public AppointmentDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean addAppointment(Appointment a) {
		boolean f = false;
		try {
			String sql = "insert into appointment (user_id,fullname,gender,age,appoint_date,email,phno,diseases,doctor_id,address,status)values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, a.getUserid());
			ps.setString(2, a.getFullName());
			ps.setString(3, a.getGender());
			ps.setString(4, a.getAge());
			ps.setString(5, a.getAppoinDate());
			ps.setString(6, a.getEmail());
			ps.setString(7, a.getPhno());
			ps.setString(8, a.getDiseases());
			ps.setInt(9, a.getDoctorid());
			ps.setString(10, a.getAddress());
			ps.setString(11, a.getStatus());
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}

	public List<Appointment> getAllAppointmentofuser(int user_id) {
		List<Appointment> list = new ArrayList<Appointment>();
		Appointment ap = null;
		try {

			String sql = "select *from appointment where user_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, user_id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new Appointment();
				ap.setId(rs.getInt(1));
				ap.setUserid(rs.getInt(2));
				ap.setFullName(rs.getString(3));
				ap.setGender(rs.getString(4));
				ap.setAge(rs.getString(5));
				ap.setAppoinDate(rs.getString(6));
				ap.setEmail(rs.getString(7));
				ap.setPhno(rs.getString(8));
				ap.setDiseases(rs.getString(9));
				ap.setDoctorid(rs.getInt(10));
				ap.setAddress(rs.getString(11));
				ap.setStatus(rs.getString(12));
				list.add(ap);
			}

		} catch (Exception e) {

		}

		return list;
	}

	public List<Appointment> getAllAppointment() {
		List<Appointment> list = new ArrayList<Appointment>();
		Appointment ap = null;
		try {

			String sql = "select *from appointment order by id desc";
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new Appointment();
				ap.setId(rs.getInt(1));
				ap.setUserid(rs.getInt(2));
				ap.setFullName(rs.getString(3));
				ap.setGender(rs.getString(4));
				ap.setAge(rs.getString(5));
				ap.setAppoinDate(rs.getString(6));
				ap.setEmail(rs.getString(7));
				ap.setPhno(rs.getString(8));
				ap.setDiseases(rs.getString(9));
				ap.setDoctorid(rs.getInt(10));
				ap.setAddress(rs.getString(11));
				ap.setStatus(rs.getString(12));
				list.add(ap);
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return list;
	}

	public List<Appointment> getAllAppointmentDoctor(int doctor_id) {
		List<Appointment> list = new ArrayList<Appointment>();
		Appointment ap = null;
		try {

			String sql = "select *from appointment where doctor_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, doctor_id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new Appointment();
				ap.setId(rs.getInt(1));
				ap.setUserid(rs.getInt(2));
				ap.setFullName(rs.getString(3));
				ap.setGender(rs.getString(4));
				ap.setAge(rs.getString(5));
				ap.setAppoinDate(rs.getString(6));
				ap.setEmail(rs.getString(7));
				ap.setPhno(rs.getString(8));
				ap.setDiseases(rs.getString(9));
				ap.setDoctorid(rs.getInt(10));
				ap.setAddress(rs.getString(11));
				ap.setStatus(rs.getString(12));
				list.add(ap);
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return list;
	}

	public Appointment getAppointmentbyid(int id) {

		Appointment ap = null;
		try {

			String sql = "select *from appointment where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new Appointment();
				ap.setId(rs.getInt(1));
				ap.setUserid(rs.getInt(2));
				ap.setFullName(rs.getString(3));
				ap.setGender(rs.getString(4));
				ap.setAge(rs.getString(5));
				ap.setAppoinDate(rs.getString(6));
				ap.setEmail(rs.getString(7));
				ap.setPhno(rs.getString(8));
				ap.setDiseases(rs.getString(9));
				ap.setDoctorid(rs.getInt(10));
				ap.setAddress(rs.getString(11));
				ap.setStatus(rs.getString(12));

			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return ap;
	}

	public boolean updatecomment(int id, int doctor_id, String comm) {

       boolean f=false;
       try {
    	   
    	   String sql="update appointment set status=? where id=? and doctor_id=?";
    	   PreparedStatement ps=con.prepareStatement(sql);
    	   ps.setInt(1, id);
    	   ps.setInt(2, doctor_id);
    	   ps.setString(3,comm);
    	   int i=ps.executeUpdate();
    	   if(i==1)
    	   {
    		   f=true;
    	   }
    	   
    	   
    	   
    	   
		
	} catch (Exception e) {
	  e.printStackTrace();	}
	return f;
	
	
	
	
	
	}
}
