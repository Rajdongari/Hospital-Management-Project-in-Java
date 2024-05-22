package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.catalina.User;

import com.pojo.user;

public class userDao {
	private Connection con;

	public userDao(Connection con) {
		super();
		this.con = con;
	}
	public boolean userRegister(user us)
	{
		boolean f=false;
		try {
			String sql="insert into usertb(Name,Email,Password)values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,us.getName());
			ps.setString(2,us.getEmail());
			ps.setString(3,us.getPassword());
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
	public user login(String em,String pass)
	{
		user u=null;
		try {
			String sqk="select * from usertb where Email=? and Password=?";
			PreparedStatement ps1=con.prepareStatement(sqk);
		   ps1.setString(1,em);
		   ps1.setString(2, pass);
		   ResultSet rs=ps1.executeQuery();
		   while(rs.next())
		   {
			    u=new user();
			   u.setId(rs.getInt(1));
			   u.setName(rs.getString(2));
			   u.setEmail(rs.getString(3));
			   u.setPassword(rs.getString(4));
			  
			   
		   }
		} catch (Exception e) {
			// TODO: handle exception
		}
		return u;
	}

}
