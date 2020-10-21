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
	String url = "jdbc:mysql://localhost:3306/coo_practica";
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
	rs = smt.executeQuery("select * from paciente");
	%>

	<div class="container">
		<h1>CALCULOS DE CONSUMO </h1>
		<!-- <button type="button" class="btn btn-primary btn-lg right"
			data-toggle="modal" data-target="#myModal">Agregar Nuevo</button> -->

		<form action="http://localhost:8081/Lista_proyecto1/Busqueda.jsp" method="post" target="_blank">

			<p>

				 <input type="search" name="busquedamusica"
					placeholder="Nombre..."> <input
					type="submit" value="Buscar">

			</p>

		</form>
	</div>

	<br>
	<div class="container">

		<table class="table table-bordered" id="tablaDatos">
			<thead>
				<tr>
					<th class="text-center">Id</th>
					<th class="text-center">Kilometros recorridos</th>
					<th class="text-center">Litros consumidos</th>
					<th class="text-center">Galones consumidos </th>
					<th class="text-center">Kilometros por litro</th>
					<th class="text-center">Costo</th>
					<th class="text-center">Día</th>
					<th class="text-center">Acciones</th>

				</tr>
			</thead>
			<tbody id="tbodys">


				<%
					while (rs.next()) {
				%>
				<tr>
					<td class="text-center"><%=rs.getInt("Id")%></td>
					<td class="text-center"><%=rs.getString("nombre")%></td>
					<td class="text-center"><%=rs.getString("raza")%></td>
					<td class="text-center"><%=rs.getString("sexo")%></td>
					<td class="text-center"><%=rs.getString("edad")%></td>
					<td class="text-center"><%=rs.getString("peso")%></td>
					<td class="text-center"><%=rs.getString("dueño")%></td>
					<td class="text-center">
					<a href="Editar.jsp?id=<%=rs.getInt("Id")%>"class="btn btn-primary">Editar</a>
					<a href="Delete.jsp?id=<%=rs.getInt("Id")%>" class="btn btn-danger">Delete</a>
						</td>
				</tr>
				<%
					}
				%>
			
		</table>
	</div>
	<div class="container">
		<%
			Class.forName(Driver);
		con = DriverManager.getConnection(url, user, clave);
		String nom, raz, sex, eda, due, pes;
		
		nom = request.getParameter("txtNom");
		raz = request.getParameter("txtRaz");
		sex = request.getParameter("txtSex");
		eda = request.getParameter("txtEda");
		pes = request.getParameter("txtPes");
		due = request.getParameter("txtDue");
		
		if (nom != null && raz!= null && sex!=null && eda!=null && due!=null && pes!=null){
			ps = con.prepareStatement("insert into paciente(nombre, raza, sexo, edad, peso, dueño)values('" + nom + "','"+ raz+ "','"+ sex +"','"+ eda +"','"+ pes +"','"+ due +"')");
			ps.executeUpdate();
			response.sendRedirect("index.jsp");

		}
		%>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document"
				style="z-index: 9999; width: 450px">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">Agregar Registro</h4>
					</div>
					<div class="modal-body">
						<form action="" method="post">
							<label>Pet Nombres:</label> <input type="text" name="txtNom"
								class="form-control" /><br> <label>Raza:</label> <input
								type="text" name="txtRaz" class="form-control" /><br> <label>Sexo:</label>
							<input type="text" name="txtSex" class="form-control" /><br>
							<label>Edad:</label> <input type="text" name="txtEda"
								class="form-control" /><br> <label>Peso:</label> <input
								type="text" name="txtPes" class="form-control" /><br> <label>Dueño:</label>
							<input type="text" name="txtDue" class="form-control" /><br>

							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<input type="submit" value="Guardar" class="btn btn-primary" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<div class=" right">
		<a href="http://localhost:8081/Proyect/index.jsp"class="btn btn-primary">SALIR</a>
		
		</div>
		

	</div>
	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>