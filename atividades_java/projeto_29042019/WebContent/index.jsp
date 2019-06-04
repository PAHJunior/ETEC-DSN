<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <form method="POST" action="principal">
	 	<label>Login</label>
		 	<input type="text" name="login"  />
	 
	 	<br/>
	 	
	 	<label>Senha:</label>
	 		<input  type="password" name="senha"/>
		
		<br/>
		
		<button type="submit">Enviar</button>
	 </form>
</body>
</html>


<style>
form{
	border: 1px solid black;
	background-color: rgba(197,197,197,0.5);
	width: 400px;
	heigth: 400px;
}

label{
	text-aling:center;
	width: 50px;
	border: 1px solid pink;
	float: left;
}

input{
	margin-left: 30px;
	background-color: gray;
	width: 200px;
}

button{
	margin-left: 40%;
}

</style>