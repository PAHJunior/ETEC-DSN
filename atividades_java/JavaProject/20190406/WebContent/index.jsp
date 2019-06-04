<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="principal.jsp">
		
		<label> Login </label><br>
		<input type="text" name="login"><br>
		<label> Senha: </label><br>
		<input type="password" name="senha"><br>
		<button>Ok</button>
		
	</form>
</body>
</html>

<style>
label{
	font-family:'Tahoma';
	color: rgb(125,41,41);
	font-weight: bold;
	font-size: 20px;
	margin-left: 50%;
	margin-right: 50%;
}
input{
	margin-left: 30%;
	margin-right: 50%;
	border-radius: 5px;
	width: 500px;
	height: 20px;
	background-color: rgba(255,255,255,0.6);
}

button{
	font-size: 100px;
	height: 500px;
	width: 100%;
	background: rgb(246,190,5);
}



</style>