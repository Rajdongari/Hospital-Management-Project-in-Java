package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pojo.specalist;

public class SpecilaistDao {
	private Connection con;

	public SpecilaistDao(Connection con) {
		super();
		this.con = con;
	}
	public boolean addspecial(String spec)
	{boolean f=false;
	  try {
		  String sql="insert into specialist(spec_name) values(?)";
		  PreparedStatement ps=con.prepareStatement(sql);
		  ps.setString(1,spec);
		  int i=ps.executeUpdate();
		  if(i==1)
		  {
			  f=true;
		  }
		  
		  
		
	} catch (Exception e) {
		// TODO: handle exception
	}
		
		
		return f;
	}
	public List<specalist> getallspecialist()
	{
		List<specalist> list=new ArrayList<specalist>();
		specalist s=null;
		try {
			String sql="select * from specialist";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				s=new specalist();
				s.setId(rs.getInt(1));
				s.setSpecialistName(rs.getString(2));
				list.add(s);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}

}
