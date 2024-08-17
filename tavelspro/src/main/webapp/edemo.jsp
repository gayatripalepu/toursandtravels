<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>EnquiryForm</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    
    <link rel="stylesheet" href="css/sstyle.css">
</head>

<body>

    <div class="formcontainer">

        <form id="signup" class="form">
            <h1>Enquiry Form</h1>
            <div class="form-field">
                <label for="firstname">FirstName:</label>
                <input type="text" name="firstname" id="firstname" autocomplete="off">
                <small></small>
            </div>
			<div class="form-field">
                <label for="lastname">LastName:</label>
                <input type="text" name="lastname" id="lastname" autocomplete="off">
                <small></small>
            </div>
            <div class="form-field">
                <label for="Email">Email:</label>
                <input type="text" name="email" id="email" autocomplete="off">
                <small></small>
            </div>
			<div class="form-field">
                <label for="Cell">Cell:</label>
                <input type="text" name="cell" id="cell" autocomplete="off">
                <small></small>
            </div>
			<div class="form-field">
                <label for="Gender">Gender:</label>
                <select name="Gender" id="Gender">
					<option selected>Male</option>
					<option>Female</option>
				</select>
                <small></small>
            </div>
			
			<div class="form-field">
			<label for="checkboxes">Courses:</label>
			<div class="multipleSelection">
            <div class="selectBox" onclick="showCheckboxes()">
                <select>
                    <option>Select Courses</option>
                </select>
                <div class="overSelect"></div>
            </div>
  
            <div id="checkBoxes">
               <label for="clang" class="container">
                    C<input type="checkbox" id="clang" />
					 <span class="checkmark"></span>
               </label>
                  
                <label for="cpp" class="container">
                    CPP<input type="checkbox" id="cpp" />
					 <span class="checkmark"></span>
                   
                </label>
				<label for="rlang" class="container">
                    R<input type="checkbox" id="rlang" />
					 <span class="checkmark"></span>
                   
                </label>
                <label for="ds" class="container">
					DS
                    <input type="checkbox" id="ds" />
                    <span class="checkmark"></span>
                </label>
                <label for="java" class="container">
					Java
                    <input type="checkbox" id="java" />
                    <span class="checkmark"></span>
                </label>
				<label for="android" class="container">
					Android
                    <input type="checkbox" id="android" />
                    <span class="checkmark"></span>
                </label>
				  <label for="python" class="container">
                    Python<input type="checkbox" id="python" />
					 <span class="checkmark"></span>
               </label>
                  
                <label for="oracle" class="container">
                    Oracle<input type="checkbox" id="oracle" />
					 <span class="checkmark"></span>
                   
                </label>
                <label for="webdesigning" class="container">
					WebDesigning
                    <input type="checkbox" id="webdesigning" />
                    <span class="checkmark"></span>
                </label>
                <label for="ai" class="container">
					AI
                    <input type="checkbox" id="ai" />
                    <span class="checkmark"></span>
                </label>
				<label for="datascience" class="container">
					DataScience
                    <input type="checkbox" id="datascience" />
                    <span class="checkmark"></span>
                </label>
                <label for="ba" class="container">
					BusinessAnalytics
                    <input type="checkbox" id="ba" />
                    <span class="checkmark"></span>
                </label>
				 <label for="DataAnalytics" class="container">
					DataAnalytics
                    <input type="checkbox" id="DataAnalytics" />
                    <span class="checkmark"></span>
                </label>
                <label for="cs" class="container">
					C#
                    <input type="checkbox" id="cs" />
                    <span class="checkmark"></span>
                </label>
				<label for="vbnet" class="container">
					VB.net
                    <input type="checkbox" id="vbnet" />
                    <span class="checkmark"></span>
                </label>
				<label for="aspnet" class="container">
					ASP.net
                    <input type="checkbox" id="aspnet" />
                    <span class="checkmark"></span>
                </label>
                <label for="fswebmean" class="container">
					FullStackDeveloper<BR>MEAN 
                    <input type="checkbox" id="fswebmean" />
                    <span class="checkmark"></span>
                </label>
                <label for="fswebmern" class="container">
					FullStackDeveloper<BR>MERN 
                    <input type="checkbox" id="fswebmern" />
                    <span class="checkmark"></span>
                </label>
                <label for="awsdevops" class="container">
					AWS-DevOps
                    <input type="checkbox" id="awsdevops" />
                    <span class="checkmark"></span>
                </label>
                <label for="azuredevops" class="container">
					AZURE-DevOps
                    <input type="checkbox" id="azuredevops" />
                    <span class="checkmark"></span>
                </label>
                <label for="powerbi" class="container">
					PowerBI
                    <input type="checkbox" id="powerbi" />
                    <span class="checkmark"></span>
                </label>
                <label for="tableau" class="container">
					Tableau
                    <input type="checkbox" id="tableau" />
                    <span class="checkmark"></span>
                </label>
            </div>
        </div>
			<small></small>
			</div>
            <div class="form-field">
                <label for="remarks">Remarks:</label>
                <textarea name="remarks" id="remarks" autocomplete="off"></textarea>
                <small></small>
            </div>
			
            <div class="form-field">
                <input type="submit" value="Register" class="btn">
            </div>
        </form>
    </div>

    <script src="js/equiryapp.js"></script>
</body>
</html>