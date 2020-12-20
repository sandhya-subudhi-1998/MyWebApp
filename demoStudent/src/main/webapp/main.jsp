<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>  
    <title> LOGIN Form</title>
    <meta charset="ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/bootstrap.css">
       <link href='https://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
       <style>
       body{
          margin:0;
          padding:0;
          background:url("log.jpg");
          background-size: cover;
          font-family: sans-serif;
           }
      .log{ 
          width:1366px;
          height:696px; 
          }
      .loginbox{  width: 420px;
          height: 650px;
          background: #000;
          color: #fff;
          top:1%;
          left:34%;
          position:absolute;
          transform: translate{-50%,-50%}
          box-sizing: border-box;
          padding: 70px 30px;
          opacity:.7;
               }
      .avatar{  width: 100px;
          height: 100px;
          border-radius:50%;
          position:absolute;
          top:-14%;
          left:calc(50% - 50px);
             }
      h1{    margin:0;
          padding: 0 0 10px;
          text-align: center;
          font-size: 30px;
          font-family:AR JULIAN;
          color:red;
        }    
      .loginbox p{  margin:0;
          padding: 0;
          font-weight:bold;
                 }
      .loginbox input{width: 100%;
          margin-bottom:20px;
                     }
      .loginbox input[type="text"], input[type="password"]{
          border: none;
          border-bottom: 1px solid #fff;
          background: transparent;
          outline:none;
          height:40px;
          color:#fff;
          font-size:16px;
              }
      .loginbox input[type="submit"]{
          border: none;
          outline:none;
          height:40px;
          background:#fb2525;
          color: #fff;
          font-size:18px;
          border-radius:20px;
              }
      .loginbox input[type="submit"]:hover
      {    cursor:pointer;
          background:#ffc107;
          color:#000;
      }
      .loginbox a{   
          text-decoration:none;
          font-size:12px;
          line-height:20px;
          color: darkgrey;
      }
      .loginbox a:hover
      {  
        color:#ffc107;
      }
      .active{
        color:#fff;
        background:#e02626;
        border-radius:4px;
      }
       </style>
       
       <script type="text/javascript">
			function showMessage()
			{
				alert("Student data inserted");
			}
		</script>
  </head>
  <body>
    <img class="log">
    <div class="loginbox">
    <h1>Student Information</h1>
    
    <form action="addStudent">
    	<p> Roll No </p>
    	<input type="text" name="roll" placeholder="Enter Roll No">
    	<p> Course </p>
    	<input type="text" name="course" placeholder="Enter Course"><br>
    	<p> Stream </p>
    	<input type="text" name="stream" placeholder="Enter Stream">
    	<p> Grade </p>
    	<input type="text" name="grade" placeholder="Enter Grade"><br>
    	<p>	Feedback </p>
    	<input type="text" name="feedback" placeholder="Give your Feedback">
    	
    <input type="submit" name="" value="Submit" onClick=showMessage()>
     </form>
     
     <form action="getAllStudent">
     	<input type="submit" name="" value="List of Student">
     </form>
     
   
     <input type="submit" onClick="location.href='home.jsp'" value='Search Student'>
 
    </div>
    
      <script src="js/jquery-2.1.4.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/ajax-utils.js"></script>
      <script src="js/script.js"></script>
  </body>
</html>