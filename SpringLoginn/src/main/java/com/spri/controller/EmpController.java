package com.spri.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;
import org.springframework.web.servlet.ModelAndView;
import com.spri.beans.Emp;
import com.spri.beans.MyUploadForm;
import com.spri.beans.User;
import com.spri.dao.EmpDao;


@Controller
public class EmpController {
    @Autowired
	EmpDao dao;
    File serverFile;
    String name;
    String path;
    
      
    
   	@InitBinder
       public void myInitBinder(WebDataBinder dataBinder) {
           Object target = dataBinder.getTarget();
           if (target == null) {
               return;
           }
           System.out.println("Target=" + target);
    
           if (target.getClass() == User.class) {
    
               // Register to handle the conversion between the multipart object
               // and byte array.
               dataBinder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
           }
       }
    
	@RequestMapping("/empform")
	public ModelAndView showform(){
		return new ModelAndView("empform","command",new Emp());
	}
	@RequestMapping("/aaa")
	public ModelAndView showform1(){
		return new ModelAndView("aaa","command",new User());
	}
	
	
	
   @RequestMapping(value = "/download", method = RequestMethod.GET)
    public void download(HttpServletResponse response) throws IOException {
	 /*
	        File file = new File("F://practice/7-7_night/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/SpringLoginn/upload/"+name);
	   */   
	        	File file=new File(User.path);
	        	      	System.out.println(User.path);
	        InputStream is = new FileInputStream(file);
	 
	        // MIME type of the file
	        response.setContentType("application/octet-stream");
	        // Response header
	        response.setHeader("Content-Disposition", "attachment; filename=\""
	                + file.getName() + "\"");
	        // Read from the file and write into the response
	        OutputStream os = response.getOutputStream();
	        byte[] buffer = new byte[1024];
	        int len;
	        while ((len = is.read(buffer)) != -1) {
	            os.write(buffer, 0, len);
	        }
	        os.flush();
	        os.close();
	        is.close();
	    }

	@RequestMapping(value="/save1",method = RequestMethod.POST)
	public ModelAndView save1(@ModelAttribute("user") User user){
		System.out.println("Fname:" +user.getFname());
		dao.save1(user);
		return new ModelAndView("redirect:/aa");
	}
	 
	@RequestMapping("/submitCV")
	public ModelAndView showsubmitform(){
		return new ModelAndView("submitCV","command",new User());
	}

	@RequestMapping(value="/saveuser",method = RequestMethod.POST)
	public ModelAndView saveuser(@ModelAttribute("user") User user){
		
		
		
		
		
		System.out.println("Fname:" +user.getFname());
		System.out.println("file1:" +user.getDescription());
		System.out.println("filesdata"+user.getFileDatas());
		
		dao.saveuser(user);
		return new ModelAndView("redirect:/viewusera");
	}
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("emp") Emp emp){
		dao.save(emp);
		return new ModelAndView("redirect:/viewemp");
	}
	
	@RequestMapping("/aa")
	public ModelAndView viewemp1(){
		List<User> list=dao.getuser();
		return new ModelAndView("aa","list",list);
	}
	@RequestMapping("/viewemp")
	public ModelAndView viewemp(){
		List<Emp> list=dao.getEmployees();
		return new ModelAndView("viewemp","list",list);
	}
	@RequestMapping("/viewusera")
	public ModelAndView viewuser(){
		List<User> list=dao.getuser();
		return new ModelAndView("viewusera","list",list);
	}
	@RequestMapping("/empupdate")
	public ModelAndView displayform(){
		return new ModelAndView("empupdate","command",new Emp());
	}
	@RequestMapping(value="/editsave",method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("emp") Emp emp){
		dao.update(emp);
		return new ModelAndView("redirect:/viewemp");
	}
	@RequestMapping("/empdelete")
	public ModelAndView dispform(){
		return new ModelAndView("empdelete","command",new Emp());
	}
	
	@RequestMapping(value="/delete/{id}",method = RequestMethod.POST)
	public ModelAndView delete(@PathVariable int id){
		dao.delete(id);
		return new ModelAndView("redirect:/viewemp");
				
	}
	
	
	
	
	@RequestMapping(value = "/uploadOneFile", method = RequestMethod.GET)
    public String uploadOneFileHandler(Model model) {
 
		User myUploadForm = new User();
        model.addAttribute("MyUploadForm", myUploadForm);
 
        // Forward to "/WEB-INF/pages/uploadOneFile.jsp".
        return "uploadOneFile";
    }
 
    // POST: Do Upload
    @RequestMapping(value = "/uploadOneFile", method = RequestMethod.POST)
    public String uploadOneFileHandlerPOST(HttpServletRequest request, //
            Model model, //
            @ModelAttribute("MyUploadForm") User myUploadForm) {
 
        return this.doUpload(request, model, myUploadForm);
 
    }
 
    // GET: Show upload form page.
    @RequestMapping(value = "/uploadMultiFile", method = RequestMethod.GET)
    public String uploadMultiFileHandler(Model model) {
 
        User myUploadForm = new User();
        model.addAttribute("MyUploadForm", myUploadForm);
 
        // Forward to "/WEB-INF/pages/uploadMultiFile.jsp".
        return "uploadMultiFile";
    }
 
    // POST: Do Upload
    @RequestMapping(value = "/uploadMultiFile", method = RequestMethod.POST)
    public String uploadMultiFileHandlerPOST(HttpServletRequest request, //
            Model model, //
            @ModelAttribute("MyUploadForm") User myUploadForm) {
 
        return this.doUpload(request, model, myUploadForm);
 
    }
 
 
    private String doUpload(HttpServletRequest request, Model model, //
            User myUploadForm) {
 
        String description = myUploadForm.getDescription();
        System.out.println("Description: " + description);
 
     
        String uploadRootPath = request.getServletContext().getRealPath("upload");
        System.out.println("uploadRootPath=" + uploadRootPath);
 
        File uploadRootDir = new File(uploadRootPath);
        //
        // Create directory if it not exists.
        if (!uploadRootDir.exists()) {
            uploadRootDir.mkdirs();
        }
        CommonsMultipartFile[] fileDatas = myUploadForm.getFileDatas();
        //
        List<File> uploadedFiles = new ArrayList<File>();
        for (CommonsMultipartFile fileData : fileDatas) {
 
      
            // Client File Name
             name = fileData.getOriginalFilename();
            System.out.println("Client File Name = " + name);
 
            if (name != null && name.length() > 0) {
                try {
                    // Create the file on server
                	  serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + name);
  
                    // Stream to write data to file in server.
                    BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
                    stream.write(fileData.getBytes());
                    stream.close();
                    //
                    uploadedFiles.add(serverFile);
                    System.out.println("Write file: " + serverFile);
                 
                } catch (Exception e) {
                    System.out.println("Error Write file: " + name);
                }
            }
        }
       User.path=serverFile.toString();
        System.out.println("path="+name);
        System.out.println("path="+path);
        model.addAttribute("description", description);
        model.addAttribute("uploadedFiles", uploadedFiles);
        return "uploadResult";  
    	
    }
    
    

	
	
	
	
	
	

}