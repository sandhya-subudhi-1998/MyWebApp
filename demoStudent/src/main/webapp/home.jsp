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
      .searchbox{  width: 420px;
          height: 150px;
          background: #000;
          color: #fff;
          top:25%;
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
      		top:10%;
          padding: 10px 0 20px 0;
          text-align: center;
          font-size: 30px;
          font-family:AR JULIAN;
          color:red;
        }    
      .searchbox p{  margin:0;
          padding: 0;
          font-weight:bold;
                 }
      .searchbox input{width: 100%;
          margin-bottom:30px;
                     }
      .searchbox input[type="text"], input[type="password"]{
          border: none;
          border-bottom: 1px solid #fff;
          background: transparent;
          outline:none;
          height:40px;
          color:#fff;
          font-size:16px;
              }
      .searchbox input[type="submit"]{
          border: none;
          outline:none;
          height:40px;
          background:#fb2525;
          color: #fff;
          font-size:18px;
          border-radius:20px;
              }
      .searchbox input[type="submit"]:hover
      {    cursor:pointer;
          background:#ffc107;
          color:#000;
      }
       </style>
       
  
  </head>
  <body>
    <div class="searchbox">
 	
		<h1>Search Student</h1>
	  <form action="getStudent">		
			<p>Roll Number</p>
			<input type="text" name="roll"><br>	
     	    <input type="submit" name="" value="Search Student">
   	  </form>
 
    </div>
    
      <script src="js/jquery-2.1.4.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/ajax-utils.js"></script>
      <script src="js/script.js"></script>
  </body>
</html>