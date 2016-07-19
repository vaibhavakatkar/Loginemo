package com.spri.dao;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spri.beans.Emp;
import com.spri.beans.MyUploadForm;
import com.spri.beans.User;

public class EmpDao {
JdbcTemplate template;


public void setTemplate(JdbcTemplate template) {
	this.template = template;
}

public int save(Emp p)
{
	String sql="insert into emp(id,name,salary,designation) values('"+p.getId()+"','"+p.getName()+"',"+p.getSalary()+",'"+p.getDesignation()+"')";
	return template.update(sql);
}
public int save1(User u)
{
	String sql="insert into user(fname) values('"+u.getFname()+"')";
	return template.update(sql);
}
public int saveuser(User u)
{
	
	String sql="insert into user(fname,lname,email,position,addinfo,file1) values('"+u.getFname()+"','"+u.getLname()+"','"+u.getEmail()+"','"+u.getPosition()+"','"+u.getAddinfo()+"','"+u.getPath()+"')";
	return template.update(sql);
	
	
}
public int update(Emp p){
	String sql="update emp set name='"+p.getName()+"', salary="+p.getSalary()+", designation='"+p.getDesignation()+"' where id="+p.getId()+"";
	return template.update(sql);
}
public int delete(int id){
	String sql="delete from emp where id="+id+"";
	return template.update(sql);
}
public Emp getEmpById(int id){
	String sql="select * from emp where id=?";
	return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));
}

public List<Emp> getEmployees(){
	return template.query("select * from emp",new RowMapper<Emp>(){
		public Emp mapRow(ResultSet rs, int row) throws SQLException {
			Emp e=new Emp();
			e.setId(rs.getInt(1));
			e.setName(rs.getString(2));
			e.setSalary(rs.getFloat(3));
			e.setDesignation(rs.getString(4));
			return e;
		}
	});
}
public List<User> getuser(){
	return template.query("select * from user",new RowMapper<User>(){
		public User mapRow(ResultSet rs, int row) throws SQLException {
		
			User u=new User();
			
			u.setFname(rs.getString(1));
			u.setLname(rs.getString(2));
			u.setEmail(rs.getString(3));
			u.setPosition(rs.getString(4));
			u.setAddinfo(rs.getString(5));
			return u;
		}
	});
}
}

