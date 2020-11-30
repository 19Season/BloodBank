package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.entity.Donars;

public class DonarsDao {
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}   
	
	public int register(Donars d){
		String sql="insert into donars(name,address,bloodgroup,contact)values('"+d.getName()+"','"+d.getAddress()+"','"+d.getBloodgroup()+"','"+d.getContact()+"')";
		 return template.update(sql);	
	}
	
	public List<Donars> view(){    
	    return template.query("select * from donars",new RowMapper<Donars>(){    

	    	public Donars mapRow(ResultSet rs, int row) throws SQLException {    
	            Donars d=new Donars();
	               d.setName(rs.getString(2));
	               d.setAddress(rs.getString(3));
	               d.setBloodgroup(rs.getString(4));
	               d.setContact(rs.getString(5));
	              
	            return d;    
	        }    
	    });    
	}    
	
	public List<Donars> search(String bloodgroup){    
		String sql = "SELECT * FROM donars WHERE bloodgroup='"+bloodgroup+"'";
	    return template.query(sql,new RowMapper<Donars>(){    

	    	public Donars mapRow(ResultSet rs, int row) throws SQLException {    
	              Donars d=new Donars();
	               d.setName(rs.getString(2));
	               d.setAddress(rs.getString(3));
	               d.setBloodgroup(rs.getString(4));
	               d.setContact(rs.getString(5));
	              
	            return d;    
	        }    
	    });    
	}    
}
