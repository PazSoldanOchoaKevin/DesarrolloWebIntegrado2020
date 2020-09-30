<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>INGRESA MEDPETS</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'><link rel="stylesheet" href="./style.css">

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
	//Emnpezamos Listando los Datos de la Tabla Usuario
	Statement smt;
	ResultSet rs;
	smt = con.createStatement();
	rs = smt.executeQuery("select * from db_coo");
	%>
	
<!-- partial:index.partial.html -->
<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 width="800px" height="600px" viewBox="0 0 800 600" enable-background="new 0 0 800 600" xml:space="preserve">
<linearGradient id="SVGID_1_" gradientUnits="userSpaceOnUse" x1="174.7899" y1="186.34" x2="330.1259" y2="186.34" gradientTransform="matrix(0.8538 0.5206 -0.5206 0.8538 147.9521 -79.1468)">
	<stop  offset="0" style="stop-color:#FFC035"/>
	<stop  offset="0.221" style="stop-color:#F9A639"/>
	<stop  offset="1" style="stop-color:#E64F48"/>
</linearGradient>
<circle fill="url(#SVGID_1_)" cx="266.498" cy="211.378" r="77.668"/>
<linearGradient id="SVGID_2_" gradientUnits="userSpaceOnUse" x1="290.551" y1="282.9592" x2="485.449" y2="282.9592">
	<stop  offset="0" style="stop-color:#FFA33A"/>
	<stop  offset="0.0992" style="stop-color:#E4A544"/>
	<stop  offset="0.9624" style="stop-color:#00B59C"/>
</linearGradient>
<circle fill="url(#SVGID_2_)" cx="388" cy="282.959" r="97.449"/>
<linearGradient id="SVGID_3_" gradientUnits="userSpaceOnUse" x1="180.3469" y1="362.2723" x2="249.7487" y2="362.2723">
	<stop  offset="0" style="stop-color:#12B3D6"/>
	<stop  offset="1" style="stop-color:#7853A8"/>
</linearGradient>
<circle fill="url(#SVGID_3_)" cx="215.048" cy="362.272" r="34.701"/>
<linearGradient id="SVGID_4_" gradientUnits="userSpaceOnUse" x1="367.3469" y1="375.3673" x2="596.9388" y2="375.3673">
	<stop  offset="0" style="stop-color:#12B3D6"/>
	<stop  offset="1" style="stop-color:#7853A8"/>
</linearGradient>
<circle fill="url(#SVGID_4_)" cx="482.143" cy="375.367" r="114.796"/>
<linearGradient id="SVGID_5_" gradientUnits="userSpaceOnUse" x1="365.4405" y1="172.8044" x2="492.4478" y2="172.8044" gradientTransform="matrix(0.8954 0.4453 -0.4453 0.8954 127.9825 -160.7537)">
	<stop  offset="0" style="stop-color:#FFA33A"/>
	<stop  offset="1" style="stop-color:#DF3D8E"/>
</linearGradient>
<circle fill="url(#SVGID_5_)" cx="435.095" cy="184.986" r="63.504"/>
</svg>


<div class="container">
  <h2>Iniciar sesion</h2>
  <form>
    <input type="text" class="email" placeholder="email">
    <br/>
    <input type="text" class="pwd" placeholder="contraseņa">
    
  </form>
  <a href="#" class="link">
    olvidaste tu contraseņa?
  </a>
  
 
  <br/>
  <button class="register">
    <span>registrar</span>
  </button>
  <button class="signin" >
    <span>ingresar </span>
  </button>
  <h3>Tu registro esta completo !</h3>
  <h3><a href="http://localhost:8081/Lista_proyecto1/index.jsp">Tu ingreso esta completo !</a></h3>
  <div class="reg"></div>
  <div class="sig"></div>

 
 
</div>

<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="./script.js"></script>

</body>
</html>