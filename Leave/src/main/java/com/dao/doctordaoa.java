package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pojo.doctor;
import com.pojo.user;

public class doctordaoa {
	private  Connection conn;

	public doctordaoa(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean registerDoctor(doctor d)
	{
		boolean f=false;
		try {
			String sql="insert into doctor(full_name,DOB,qualification,specialist,email,mobno,password)values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,d.getFullName());
			ps.setString(2,d.getDob());
			ps.setString(3,d.getQualification());
			ps.setString(4,d.getSpecialist());
			ps.setString(5,d.getEmail());
			ps.setString(6, d.getMobno());
			ps.setString(7,d.getPassword());
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
			
			
		} catch (Exception e) {
			 
		}
		return f;
	}
	public List<doctor> getAlldoctor()
	{
		List<doctor> list=new ArrayList<doctor>();
		doctor d=null;
		try {
			String sql="select * from doctor order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				d=new doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobno(rs.getString(7));
				d.setPassword(rs.getString(8));
				list.add(d);
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	public doctor getDoctorById(int id) {
	    doctor b=null;
		try {
			
			String sql="select * from doctor where id=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				b=new doctor();
				b.setId(rs.getInt(1));
				b.setFullName(rs.getString(2));
			    b.setDob(rs.getString(3));
				b.setQualification(rs.getString(4));
				b.setSpecialist(rs.getString(5));
				b.setEmail(rs.getString(6));
				b.setMobno(rs.getString(7));
				b.setPassword(rs.getString(8));
				//b.setStock(rs.getInt(8));
			}
			
		} catch (Exception e) {
		   e.printStackTrace();
		}
		return b;
	}
public boolean updateDoctor(doctor d)
{
	boolean f=false;
	try {
		String sql="update doctor set full_name=?,DOB=?,qualification=?,specialist=?,email=?,mobno=?,password=? where id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,d.getFullName());
		ps.setString(2,d.getDob());
		ps.setString(3,d.getQualification());
		ps.setString(4,d.getSpecialist());
		ps.setString(5,d.getEmail());
		ps.setString(6, d.getMobno());
		ps.setString(7,d.getPassword());
		ps.setInt(8, d.getId());
		int i=ps.executeUpdate();
		if(i==1)
		{
			f=true;
		}
		
		
		
	} catch (Exception e) {
		 
	}
	
	return f;
}
public boolean delete(int id)
{
	boolean f=false;
	try {
		String sql="delete from doctor where id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i=ps.executeUpdate();
		if(i==1)
		{
			f=true;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	return f;
}
public doctor login(String email,String pass)
{
	doctor b=null;
	try {
		String sqk="select * from doctor where email=? and password=?";
		PreparedStatement ps1=conn.prepareStatement(sqk);
	   ps1.setString(1,email);
	   ps1.setString(2, pass);
	   ResultSet rs=ps1.executeQuery();
	   while(rs.next())
	   {
		    b=new doctor();
		   b.setId(rs.getInt(1));
		   b.setFullName(rs.getString(2));
		   b.setDob(rs.getString(3));
			b.setQualification(rs.getString(4));
			b.setSpecialist(rs.getString(5));
			b.setEmail(rs.getString(6));
			b.setMobno(rs.getString(7));
			b.setPassword(rs.getString(8));
		   
	   }
	} catch (Exception e) {
		// TODO: handle exception
	}
	return b;
   }
   
   public int countDoctor()
   {
	   
	   int i=0;
	   try {
		   String sql="select *from doctor";
		   PreparedStatement ps=conn.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   
			   i++;
		   }
				   
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	   return i;
   }
   public int countappointment()
   {
	   
	   int i=0;
	   try {
		   String sql="select *from appointment";
		   PreparedStatement ps=conn.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   
			   i++;
		   }
				   
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	   return i;
   }
   public int countuser()
   {
	   
	   int i=0;
	   try {
		   String sql="select *from usertb";
		   PreparedStatement ps=conn.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   
			   i++;
		   }
				   
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	   return i;
   }
   public int countspecalist()
   {
	   
	   int i=0;
	   try {
		   String sql="select *from specialist";
		   PreparedStatement ps=conn.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   
			   i++;
		   }
				   
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	   return i;
   }
}