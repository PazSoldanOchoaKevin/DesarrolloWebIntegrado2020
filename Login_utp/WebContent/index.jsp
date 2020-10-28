<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<title>JSP Page</title>
</head>

<body  style=Background-color:#969887; style=" margin-top: 30px, ">

	<%
		//base de datos
	Connection con;
	String url = "jdbc:mysql://localhost:3306/mysql_database_utp";
	String Driver = "com.mysql.jdbc.Driver";
	String user = "root";
	String clave = "";
	Class.forName(Driver);
	con = DriverManager.getConnection(url, user, clave);
	PreparedStatement ps;
	//Emnpezamos Listando los Datos de la Tabla Usuario
	Statement smt;
	ResultSet rs;
	smt = con.createStatement();
	rs = smt.executeQuery("select * from registro");
	%>

	<div class="container">
		<h1 align="center">CALCULOS DE CONSUMO </h1>
		 <button type="button" class="btn btn-primary btn-lg right"
			data-toggle="modal" data-target="#myModal">Agregar Nuevo</button> 

	</div>

	<br>
	<div class="container">

		<table class="table table-borderless table-dark" id="tablaDatos">
			<thead>
				<tr class="bg-primary">
					<th scope="col"class="text-center">Id</th>
					<th scope="col"class="text-center">Kilometros recorridos</th>
					<th scope="col"class="text-center">Litros consumidos</th>
					<th scope="col"class="text-center">Galones consumidos </th>
					<th scope="col"class="text-center">Kilometros por litro</th>
					<th scope="col"class="text-center">Costo</th>
					<th scope="col"class="text-center">Día</th>
					

				</tr>
			</thead>
			<tbody id="tbodys">


				<%
					while (rs.next()) {
				%>
				<tr class="bg-">
					<td scope="col"class="text-center"><%=rs.getInt("Id")%></td>
					<td scope="col"class="text-center"><%=rs.getString("kilometros")%></td>
					<td scope="col"class="text-center"><%=rs.getString("litros_consumidos")%></td>
					<td scope="col"class="text-center"><%=rs.getString("galones_consumidos")%></td>
					<td scope="col"class="text-center"><%=rs.getString("kilometros_por")%></td>
					<td scope="col"class="text-center"><%=rs.getString("costo")%></td>
					<%
						String date = rs.getDate("dia").toString();
						String time = rs.getTime("dia").toString();
						String dateConcat = date + " " + time;
					%>
					<td class="text-center"><%=dateConcat%></td>
					<td class="text-center">
					
						</td>
				</tr>
				<%
					}
				%>
			
		</table>
	</div>
	<div class="container">
		
		
		
		<div class=" right">
		<a href="http://localhost:8082/Login_utp/index1.jsp"class="btn btn-primary">SALIR</a>
		
		</div>
		

	</div>
	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>