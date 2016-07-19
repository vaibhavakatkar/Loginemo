package com.spri.beans;

import org.springframework.web.multipart.commons.CommonsMultipartFile;
import java.io.File;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class User {
	/*aaasddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
	*//*ddddddddddddddddddddddddddddddddddddddddddddddddddddddd*/
	private String fname;
	private String lname;
	private String email;
	private String position;
	private String addinfo;	
	private String description;
	private String file1;
	public static String path;
	public  String name;
	
    public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}

	// Upload files.
    private CommonsMultipartFile[] fileDatas;


    public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}

	
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String f) {
		this.position = f;
	}
	public String getAddinfo() {
		return addinfo;
	}
	public void setAddinfo(String addinfo) {
		this.addinfo = addinfo;
	}
	 public String getDescription() {
	        return description;
	    }
	 
	    public void setDescription(String description) {
	        this.description = description;
	    }
	 
	    public CommonsMultipartFile[] getFileDatas() {
	        return fileDatas;
	    }
	 
	    public void setFileDatas(CommonsMultipartFile[] fileDatas) {
	        this.fileDatas = fileDatas;
	    }
	    
}
