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
<body>
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
      ResultSet rs;
      int id=Integer.parseInt(request.getParameter("id"));
      ps=con.prepareStatement("select * from paciente where Id="+id);
      rs=ps.executeQuery();
      while(rs.next()){
                        %>

	<div class="container">
		<h1>Modificar Registro</h1>
		<hr>
		<form action="" method="post" class="form-control"
			style="width: 500px; height: 600px">
			ID:
			 <input type="text" readonly="" class="form-control" value="<%=rs.getString("Id")%>" /><br>
			Nombres: 
			<input type="text" name="txtNom" class="form-control"value="<%=rs.getString("nombre")%>" /><br> 
			Raza:
			<input type="text" name="txtRaz" class="form-control" value="<%=rs.getString("raza")%>" /><br>
			Sexo: 
			<input type="text" name="txtSex" class="form-control" value="<%=rs.getString("sexo")%>" /><br>
			Edad: 
			<input type="text" name="txtEda" class="form-control" value="<%=rs.getString("edad")%>" /><br>
			Peso: 
			<input type="text" name="txtPes" class="form-control" value="<%=rs.getString("peso")%>" /><br>
			Dueño: 
			<input type="text" name="txtDue" class="form-control" value="<%=rs.getString("dueño")%>" />
			
			<br> <input type="submit" value="Guardar"
				class="btn btn-primary btn-lg" /> <a href="index.html">Regresar</a>
		</form>
<%}%>
	</div>
</body>
</html>
<%
	String nom, raz, sex, eda, due, pes;
		nom = request.getParameter("txtNom");
		raz = request.getParameter("txtRaz");
		sex = request.getParameter("txtSex");
		eda = request.getParameter("txtEda");
		pes = request.getParameter("txtPes");
		due = request.getParameter("txtDue");
		
	if (nom!= null && raz!= null && sex!=null && eda!=null && due!=null && pes!=null){
			ps = con.prepareStatement("update paciente set nombre='"+ nom +"', raza='"+ raz +"', sexo='"+ sex +"',  edad='"+ eda +"', peso='"+ pes +"',  dueño='"+ due +"'Where Id="+id);
			ps.executeUpdate();
			response.sendRedirect("index.jsp");

		}
	
%>