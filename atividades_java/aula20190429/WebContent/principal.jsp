<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="logar">
	 	<label>Login:</label>
		<input type="text" name="login" />
	 	
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
	margin-top: 10px;
}

input{
	border: none;
	border-bottom: 1px solid black;
	margin-top: 10px;
	margin-left: 40px;
	background-color: rgb(255,115,53);
}


</style>