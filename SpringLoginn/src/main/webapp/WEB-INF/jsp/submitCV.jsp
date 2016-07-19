<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib  uri="http://java.sun.com/jsf/core" prefix="f"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html class="supernova">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/json+oembed" href="https://www.jotform.com/oembed/?format=json&amp;url=http%3A%2F%2Fwww.jotform.com%2Fform%2F61892424905461" title="oEmbed Form"><link rel="alternate" type="text/xml+oembed" href="https://www.jotform.com/oembed/?format=xml&amp;url=http%3A%2F%2Fwww.jotform.com%2Fform%2F61892424905461" title="oEmbed Form">
<meta property="og:title" content="CV Submission" >
<meta property="og:url" content="http://www.jotform.me/form/61892424905461" >
<meta property="og:description" content="Please click the link to complete this form.">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="HandheldFriendly" content="true" />
<title>CV Submission</title>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.14067" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.14067" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.14067" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/5489cead700cc469138b4567.css?themeRevisionID=572b298d977cdf52168b4567"/>
<style type="text/css">
    .form-label-left{
        width:150px !important;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:150px !important;
    }
    body, html{
        margin:0;
        padding:0;
        background:false;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:450px;
        color:#555 !important;
        font-family:'Open Sans';
        font-size:14px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: #555;
    }

</style>

<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.14067" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
	JotForm.clearFieldOnHide="disable";
	JotForm.onSubmissionError="jumpToFirstError";
   });
</script>
</head>
<body>
<form  method="post" action="saveuser" class="jotform-form" >
<div class="form-all">
<ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group">
          <div class="header-text httal htvam">
            <h2 id="header_1" class="form-header">
              CV Submission
            </h2>
            <div id="subHeader_1" class="form-subHeader">
              Do you want to work with us? Please fill in your details below.
            </div>
          </div>
        </div>
      </li>
	<!-- <FORM class="jotform-form" ACTION="saveuser" METHOD="POST"> -->
	 
	
    <li class="form-line jf-required" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3">
          First Name
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_3" class="form-input jf-required">
              <INPUT TYPE="TEXT" class="form-textbox validate[required]"  data-type="input-textbox" NAME="fname"  size="20" >
      <!--  <input  type="text" class="form-textbox validate[required]" data-type="input-textbox"  name="fname" size="20"   /> -->
        </div>
      </li>
          <!--  
           <INPUT TYPE="TEXT" NAME="lname">
          <INPUT TYPE="TEXT" NAME="email">
          <INPUT TYPE="TEXT" NAME="position">
         <INPUT TYPE="TEXT" NAME="addinfo"> -->
          <li class="form-line jf-required" data-type="control_textbox" id="id_4">
        <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4">
          Last Name
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input jf-required">
          <input  type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="lname" name="lname" size="20"/>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-left form-label-auto" id="label_5" for="input_5">
          Email Address
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_5" class="form-input jf-required">
          <input path="email" type="text" class=" form-textbox validate[required, Email]" data-type="input-textbox" id="input_5" name="email" size="20"  />
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_9">
        <label class="form-label form-label-left form-label-auto" id="label_9" for="input_9"> Position Applying For </label>
        <div id="cid_9" class="form-input jf-required">
          <input path="position" type="text" class=" form-textbox" data-type="input-textbox" id="input_9" name="position" size="20"  />
        </div>
      </li>
      
      
      
      
      <li class="form-line jf-required" data-type="control_textarea" id="id_6">
        <label class="form-label form-label-left form-label-auto" id="label_6" for="input_6">
          Additional Information
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_6" class="form-input jf-required">
          <textarea id="input_6" class="form-textarea validate[required]" name="addinfo" cols="40" rows="6"></textarea>
        </div>
      </li>
      
      
      
      
      <li class="form-line jf-required" data-type="control_fileupload" id="id_7">
        <label class="form-label form-label-left form-label-auto" id="label_7" for="input_7">
          Upload your CV Here
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_7" class="form-input jf-required">
        
        
        <%-- <form modelAttribute="MyUploadForm" method="POST"
                        action="" enctype="multipart/form-data">
             
        File to upload: <input path="fileDatas" type="file"/><br />  
         
           
        <input type="submit" value="Upload">
         
    </form>
	
 --%>
<%--   <form modelAttribute="MyUploadForm" method="POST"
                        action="" enctype="multipart/form-data">
         
        Description:
        <br>
        <input path="description" style="width:300px;"/>                
        <br/><br/>                 
     
        File to upload (1): <input path="fileDatas" type="file"/><br />      
        File to upload (2): <form:input path="fileDatas" type="file"/><br />    
        File to upload (3): <form:input path="fileDatas" type="file"/><br />    
        File to upload (4): <form:input path="fileDatas" type="file"/><br />    
        File to upload (5): <form:input path="fileDatas" type="file"/><br />    
         
        <input type="submit" value="Upload">
          
    </form> --%>
     
   <input class="form-upload validate[required]" type="file" id="input_7" name="file1" file-accept="pdf, doc, docx, xls, csv, txt, rtf, html, zip, mp3, wma, mpg, flv, avi, jpg, jpeg, png, gif" file-maxsize="10240" file-minsize="0" file-limit="0" />
        </div>
      </li>
    
            <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide">
          <div style="margin-left:156px" class="form-buttons-wrapper">
            <button id="input_2" type="submit" class="form-submit-button">
              Submit CV
            </button>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
  <script>
  JotForm.showJotFormPowered = true;
  </script>
  <input type="hidden" id="simple_spc" name="simple_spc" value="61892424905461" />
  <script type="text/javascript">
  document.getElementById("si" + "mple" + "_spc").value = "61892424905461-61892424905461";
  </script>
</form></body>
</html>
