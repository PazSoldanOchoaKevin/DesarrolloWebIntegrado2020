<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="login_utp.*"%>
<!DOCTYPE html>
<html lang=es>
<head>
<meta charset=UTF-8>
<meta content="IE=edge" http-equiv=X-UA-Compatible>
<link type="text/css" href="estilo.css" rel="stylesheet">
<link href=https://api.calcuonline.com rel=dns-prefetch>
<meta content="width=device-width,initial-scale=1.0,minimum-scale=1.0"
	name=viewport>
<meta content=#2369a3 name=theme-color>
<link href=/build/images/favicon.ico rel="shortcut icon"
	type=image/x-icon>
<link href=/build/images/favicon.ico rel=icon type=image/x-icon>
<title>iCPlan</title>
<meta
	content="Â¿Quieres calcular el consumo de gasolina para un viaje? â¨â¨ Usa la calculadora del gasto de combustible para conocer el gasto total, por km y por persona."
	name=description>
<link
	href=https://calcuonline.com/calculadoras/calculadora-gasto-combustible
	/ rel=canonical>
<link
	href=https://calcuonline.com/calculadoras/calculadora-gasto-combustible
	/ hreflang=es rel=alternate>



<meta content=es_ES property=og:locale>
<meta content=article property=og:type>
<meta
	content="â·Calculadora del Gasto de CombustibleãConsumo gasolina o dieselã"
	property=og:title>
<meta
	content="Â¿Quieres calcular el consumo de gasolina para un viaje? â¨â¨ Usa la calculadora del gasto de combustible para conocer el gasto total, por km y por persona."
	property=og:description>
<meta
	content=https://calcuonline.com/calculadoras/calculadora-gasto-combustible
	/ property=og:url>
<meta content=CalcuOnline property=og:site_name>
<meta
	content=https://calcuonline.com/social/calculator_fuelexpense-es.jpg
	property=og:image>
<meta content=summary_large_image name=twitter:card>
<meta
	content="Â¿Quieres calcular el consumo de gasolina para un viaje? â¨â¨ Usa la calculadora del gasto de combustible para conocer el gasto total, por km y por persona."
	name=twitter:description>
<meta
	content="â·Calculadora del Gasto de CombustibleãConsumo gasolina o dieselã"
	name=twitter:title>
<meta
	content=https://calcuonline.com/social/calculator_fuelexpense-es.jpg
	name=twitter:image>
<body>
	


	<header>
	
		<div class=section></div>
	</header>

	<main>
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
	
	
		
	<%
//n1= trayecto
//n2= Precio del combustible
//n3= Pasajeros
//n4= Atasco
//n5= Frecuencia de viaje
//n6= Pasajero


double n1=0, n2=0, n3=1,n4=0,n5=0, costto=0,kiga=60.56656,galoto=0, lito=0, preactu=0, promess=0,pasjj=0;
	double kilometros_por=16.32, dute=10;

DecimalFormat df = new DecimalFormat("#.##");

if (request.getParameter("ok")!=null){
	
	n1=Float.parseFloat(request.getParameter("text1"));
	n2=Float.parseFloat(request.getParameter("text2"));
	n3=Float.parseFloat(request.getParameter("text3"));
	n4=Float.parseFloat(request.getParameter("text4"));
	n5=Float.parseFloat(request.getParameter("text5"));
	
	galoto = n1/kiga;
	lito = galoto*3.78541;
	costto = galoto*n2;
	pasjj= costto/n3;
	promess= costto* n5;
	
	
	
	
}

if (request.getParameter("okk")!=null){
	
	double distancia = Float.parseFloat(request.getParameter("distancia"));
	double litros = Float.parseFloat(request.getParameter("litros"));
	double galones = Float.parseFloat(request.getParameter("galones"));
	
	
	SimpleDateFormat DateFor = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String date = DateFor.format(new Date());
	ps = con.prepareStatement("insert into registro(kilometros, litros_consumidos, galones_consumidos,kilometros_por,costo, dia)values('" + distancia + "','"+ litros + "','"+ galones +"','"+ kilometros_por +"','"+ costto +"','"+ date +"')");
	ps.executeUpdate();
	response.sendRedirect("index.jsp");
}


%>

		<div class=section>
			<h1>Calculadora del gasto de combustible</h1>

			<div id=calculator>
				<div class="jsLoad load"></div>
				<div class=jsFormOverlayMask>
					<p class=jsFormError>Ha ocurrido un error realizando los
						cÃ¡lculos, por favor contÃ¡ctanos a travÃ©s del formulario situado
						en nuestra pÃ¡gina de contacto para que lo arreglemos lo mÃ¡s
						pronto posible. Muchas gracias.
				</div>
				
				
				
				
				
				
				
				
				<form action="loginsuccess.jsp"  method="post"
					class="calculator-form jsCalculatorForm" >
					<p>Los apartados 1 y 2 son obligatorios.
					
					<p class=step>1. TRAYECTO
					<div class="inline-input-group jsInputGroup">
						<input type="text" name="text1" aria-label=Distancia min=0.01 
							placeholder=Distancia  > 
							<select>
							<option data-full=KilÃ³metros
								data-short=km>km
							</select>
					</div>
					
					<p class=step>2. COMBUSTIBLE
					
					<div class="inline-input-group jsInputGroup">
						<input type="text" name="text2"aria-label="Precio combustible" min=0.01
							 placeholder="Precio combustible" required/>
							 <select aria-label="fuel price currency "
							class="jsCurrency jsResponsiveSelect" name=fuelPrice[currency]><option
								data-full="USD - DÃ³lar estadounidense" data-short=USD value=USD>
								USD
							<option data-full="EUR - Euro" data-short=EUR value=EUR>
								EUR
							<option data-full="JPY - Yen japonÃ©s" data-short=JPY value=JPY>
								JPY
							<option data-full="GBP - Libra esterlina" data-short=GBP
								value=GBP>GBP
							<option data-full="AUD - DÃ³lar australiano" data-short=AUD
								value=AUD>AUD
							<option data-full="CAD - DÃ³lar canadiense" data-short=CAD
								value=CAD>CAD
							<option data-full="CHF - Franco suizo" data-short=CHF value=CHF>
								CHF
							<option data-full="CNY - Yuan chino" data-short=CNY value=CNY>
								CNY
							<option data-full="SEK - Corona sueca" data-short=SEK value=SEK>
								SEK
							<option data-full="NZD - DÃ³lar neozelandÃ©s" data-short=NZD
								value=NZD>NZD
							<option data-full="MXN - Peso mexicano" data-short=MXN value=MXN>
								MXN
							<option data-full="ARS - Peso argentino" data-short=ARS value=ARS>
								ARS
							<option data-full="SGD - DÃ³lar de Singapur" data-short=SGD
								value=SGD>SGD
							<option data-full="HKD - DÃ³lar de Hong Kong" data-short=HKD
								value=HKD>HKD
							<option data-full="NOK - Corona noruega" data-short=NOK value=NOK>
								NOK
							<option data-full="KRW - Won coreano" data-short=KRW value=KRW>
								KRW
							<option data-full="TRY - Lira turca" data-short=TRY value=TRY>
								TRY
							<option data-full="RUB - Rublo ruso" data-short=RUB value=RUB>
								RUB
							<option data-full="INR - Rupia india" data-short=INR value=INR>
								INR
							<option data-full="BRL - Real brasileÃ±o" data-short=BRL
								value=BRL>BRL
							<option data-full="ZAR - Rand sudafricano" data-short=ZAR
								value=ZAR>ZAR
							<option data-full="DKK - Corona danesa" data-short=DKK value=DKK>
								DKK
							<option data-full="PLN - Zloty polaco" data-short=PLN value=PLN>
								PLN
							<option data-full="TWD - DÃ³lar taiwanÃ©s" data-short=TWD
								value=TWD>TWD
							<option data-full="THB - Baht tailandÃ©s" data-short=THB
								value=THB>THB
							<option data-full="MYR - Ringgit malayo" data-short=MYR value=MYR>
								MYR
							<option data-full="HUF - FlorÃ­n hÃºngaro" data-short=HUF
								value=HUF>HUF
							<option data-full="SAR - Riyal saudÃ­" data-short=SAR value=SAR>
								SAR
							<option data-full="CZK - Corona checa" data-short=CZK value=CZK>
								CZK
							<option data-full="ILS - Shekel israelÃ­" data-short=ILS
								value=ILS>ILS
							<option data-full="CLP - Peso chileno" data-short=CLP value=CLP>
								CLP
							<option data-full="IDR - Rupia indonesia" data-short=IDR
								value=IDR>IDR
							<option data-full="COP - Peso colombiano" data-short=COP
								value=COP>COP
							<option data-full="PHP - Peso filipino" data-short=PHP value=PHP>
								PHP
							<option data-full="RON - Leu rumano" data-short=RON value=RON>
								RON
							<option data-full="PEN - Nuevo Sol peruano" data-short=PEN
								value=PEN>PEN
							<option data-full="BGN - Lev bÃºlgaro" data-short=BGN value=BGN>
								BGN
							<option data-full="CRC - ColÃ³n costarricense" data-short=CRC
								value=CRC>CRC
							<option data-full="GTQ - Quetzal guatemalteco" data-short=GTQ
								value=GTQ>GTQ
							<option data-full="LVL - Lats letÃ³n" data-short=LVL value=LVL>
								LVL
							<option data-full="LTL - Litas lituana" data-short=LTL value=LTL>
								LTL
							<option data-full="MNT - Tugrik mongol" data-short=MNT value=MNT>
								MNT
							<option data-full="LKR - Rupia de Sri Lanka" data-short=LKR
								value=LKR>LKR
							<option data-full="VEF - BolÃ­var venezolano" data-short=VEF
								value=VEF>VEF</select>
					</div>
					<p>
						<small><a href=https://geoportalgasolineras.es
							target=_blank> Consulta aqui el precio del combustible de tu
								vehiculo a dia de hoy. </a> </small>
								
								
								
					<p class=step>3. PASAJEROS
					<p>PASAJEROS</p>
					<input type="text"name="text3" aria-label=passengers max=8 min=1 step=1
						 >

					<p class=step>4. PREVISION DE ATASCO
					<p>Cuanto estimas que durara el atasco?
					<div class="jsInputGroup time-interval-picker">
						<input type="text"name="text4"aria-label=Horas min=0 
							placeholder=Horas> <input
							aria-label=Minutos min=0 name=trafficJamForecast[minutes]
							placeholder=Minutos step=1 type=number>
					</div>
					<p class=step>5. FRECUENCIA
					<p>Cuantas veces haces el viaje mensualmente?</p>
					<input  type="text"aria-label="monthly frequency" max=31 min=1
						name="text5" step=1 >
					<button type=submit value="enviar" name="ok">Calcular</button>
					<article class=>
					<h2 class=result-title align="center ">Resultado</h2>
					<div class="highlight red">
						Coste del trayecto: <span></span>
					</div>
						Suponiendo un trayecto de <span ><p><% out.print(df.format(n1));%>KM</p></span>
						y un precio de combustible de <span ><p><% out.print(df.format(n2));%></p></span>
					<ul>
					
						<li>Coste del trayecto <span ><p><% out.print(df.format(costto));%></p></span>
						<li>Coste por <span ><p><% out.print(df.format(n1));%></p></span>
							
						<li>Combustible requerido en galones : <span ><p><% out.print(df.format(galoto));%></p></span>
						
						<li>Combustible requerido en llitros  : <span ><p><% out.print(df.format(lito));%></p></span>
						
						<li>Coste por pasajero: <span ><p><% out.print(df.format(pasjj));%></p></span>
						
						<li >Coste mensual:<span ><p><% out.print(df.format(promess));%></p></span>
						
						<li><i>Estos resultados son aproximados.</i>
					</ul>
				</article>
				</form>



				
			</div>


		</div>
		
		
		<form action="loginsuccess.jsp"  method="post">
		<input type="hidden" name="distancia" value="<% out.print(df.format(n1));%>">
		<input type="hidden" name="litros"" value="<% out.print(df.format(lito));%>">
		<input type="hidden" name="galones"" value="<% out.print(df.format(galoto));%>">
		
		<button type=submit value="enviar" name="okk" >REGISTRO</button>
		</form>
		
		
		
		
	</main>
	<!-- <footer>
		<div class="section wider">
			<div class="flexible grid grid-columns-3">
				<div>
					<div class="#">
						
							<title>CalcuOnline</title><g fill=#fff stroke-width=.264583
								transform="translate(-21.172711 -65.285483)">
							<path
								d="m35.142711 83.065483h-11.43q-1.0414 0-1.8034-.7366-.7366-.762-.7366-1.8034v-12.7q0-1.0414.7366-1.778.762-.762 1.8034-.762h11.43v3.556h-10.16v10.668h10.16z"></path>
							<path
								d="m54.938836 83.065483h-4.318l-1.6256-4.064h-7.1628l-1.6256 4.064h-4.318l7.112-17.78h4.826zm-7.366-7.62-2.159-5.4102-2.159 5.4102z"></path>
							<path
								d="m69.670833 83.065483h-11.43q-1.0414 0-1.8034-.7366-.7366-.762-.7366-1.8034v-15.24h3.81v14.224h10.16z"></path>
							<path
								d="m85.14896 83.065483h-11.43q-1.0414 0-1.8034-.7366-.7366-.762-.7366-1.8034v-12.7q0-1.0414.7366-1.778.762-.762 1.8034-.762h11.43v3.556h-10.16v10.668h10.16z"></path>
							<path
								d="m101.89709 80.525483q0 1.0414-.762 1.8034-.7366.7366-1.778004.7366h-10.16q-1.0414 0-1.8034-.7366-.7366-.762-.7366-1.8034v-15.24h3.81v14.224h7.62v-14.224h3.810004z"></path>
							<g stroke-width=.264583>
							<path
								d="m118.66505 70.873483h-3.81v-1.524h3.81zm-.2032-4.064h-14.8336q.6604-1.524 2.3368-1.524h10.16q1.6764 0 2.3368 1.524zm.2032 6.096h-3.81v-1.524h3.81zm0-4.064h-15.24v-1.016q0-.254.0508-.508h15.1384q.0508.254.0508.508zm0 6.096h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm-11.43-8.128h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm11.43 5.588q0 .254-.0508.508h-15.1384q-.0508-.254-.0508-.508v-1.016h15.24zm-11.43-3.556h-3.81v-1.524h3.81zm11.2268 4.572q-.6604 1.524-2.3368 1.524h-10.16q-1.6764 0-2.3368-1.524zm-11.2268-2.54h-3.81v-1.524h3.81z"></path>
							<path
								d="m135.43302 66.809483h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm-10.3378-8.128h-4.9022v-1.524h3.81zm1.4478 2.032h-6.35v-1.524h5.2578zm8.89 8.128h-8.1534l-1.0922-1.524h5.08l.3556.508v-.508h3.81zm-7.4422-6.096h-7.7978v-1.524h6.7056zm2.8956 4.064h-5.08l-1.0668-1.524h5.08zm4.5466 4.064h-6.7056l-1.0922-1.524h7.7978zm-5.9944-6.096h-5.08l-.3556-.508v.508h-3.81v-1.524h8.1534zm5.9944 8.128h-5.2578l-1.0922-1.524h6.35zm0 2.032h-3.81l-1.0922-1.524h4.9022zm-11.43-8.128h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81z"></path>
							<path
								d="m140.771 66.809483h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm10.16 6.096h-13.9192q-.0508-.254-.0508-.508v-1.016h13.97zm-10.16-4.064h-3.81v-1.524h3.81zm10.16 6.096h-11.43q-1.6764 0-2.3368-1.524h13.7668zm-10.16-4.064h-3.81v-1.524h3.81z"></path>
							<path
								d="m156.24911 66.809483h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81z"></path>
							<path
								d="m173.03693 66.809483h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm-10.3378-8.128h-4.9022v-1.524h3.81zm1.4478 2.032h-6.35v-1.524h5.2578zm8.89 8.128h-8.1534l-1.0922-1.524h5.08l.3556.508v-.508h3.81zm-7.4422-6.096h-7.7978v-1.524h6.7056zm2.8956 4.064h-5.08l-1.0668-1.524h5.08zm4.5466 4.064h-6.7056l-1.0922-1.524h7.7978zm-5.9944-6.096h-5.08l-.3556-.508v.508h-3.81v-1.524h8.1534zm5.9944 8.128h-5.2578l-1.0922-1.524h6.35zm0 2.032h-3.81l-1.0922-1.524h4.9022zm-11.43-8.128h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81zm0 2.032h-3.81v-1.524h3.81z"></path>
							<path
								d="m188.53489 66.809483h-13.7668q.6604-1.524 2.3368-1.524h11.43zm0 2.032h-13.97v-1.016q0-.254.0508-.508h13.9192zm0 4.064h-13.97v-1.524h13.97zm0 2.032h-13.97v-1.524h13.97zm-10.16-4.064h-3.81v-1.524h3.81zm10.16 10.16h-13.9192q-.0508-.254-.0508-.508v-1.016h13.97zm-10.16-4.064h-3.81v-1.524h3.81zm10.16 6.096h-11.43q-1.6764 0-2.3368-1.524h13.7668zm-10.16-4.064h-3.81v-1.524h3.81z"></path></g></g></svg>
					</div>
					<ul class=social-networks-links></ul>
				</div>
				<div>
					<span class=title>AYUDA</span>
					<ul>
						<li><a href=/calculadoras/contactar />Contacto</a>
						<li><a href=/calculadoras/#about>Sobre nosotros</a>
						<li><a href=/calculadoras/equipo-editorial />Equipo
							editorial</a>
						<li><a href=/calculadoras/aviso-legal />Aviso legal</a>
						<li><a href=/calculadoras/politica-privacidad />PolÃ­tica de
							privacidad</a>
						<li><a href=/calculadoras/politica-cookies />PolÃ­tica de
							cookies</a>
					</ul>
				</div>
				<div>
					<span class=title>INTERNACIONAL</span>
					<ul class=language-selector>
						<li><svg xmlns=http://www.w3.org/2000/svg
								viewbox="0 0 750 500">
								<path d="M0 0h750v500H0z" fill=#c60b1e></path>
								<path d="M0 125h750v250H0z" fill=#ffc400></path></svg>
						<li><a href=/calculatrices / title="CalcuOnline - FR"><svg
									xmlns=http://www.w3.org/2000/svg viewbox="0 0 640 480">
									<g fill-rule=evenodd>
									<path d="M0 0h640v480H0z" fill=#fff></path>
									<path d="M0 0h213v480H0z" fill=#00267f></path>
									<path d="M427 0h213v480H427z" fill=#f31830></path></g></svg> </a>
					</ul>
				</div>
			</div>
			<span class=title>CALCULADORAS DESTACADAS</span>
			<ul class="grid grid-columns-3">
				<li><a href=/calculadoras/calculadora-ascendente />Calculadora
					del ascendente</a>
				<li><a href=/calculadoras/calculadora-iban-bic-swift />Calculadora
					IBAN y BIC/SWIFT</a>
				<li><a href=/calculadoras/calculadora-grasa-corporal />Calculadora
					de grasa corporal</a>
				<li><a href=/calculadoras/calculadora-imc />Calculadora IMC</a>
				<li><a href=/calculadoras/calculadora-fecha-parto />Calculadora
					de la fecha de parto</a>
				<li><a href=/calculadoras/calculadora-ovulacion-dias-fertiles />Calculadora
					de ovulaciÃ³n y dÃ­as fÃ©rtiles</a>
				<li><a href=/calculadoras/calculadora-fracciones />Calculadora
					de fracciones</a>
				<li><a href=/calculadoras/calculadora-peso-ideal />Calculadora
					de peso ideal</a>
				<li><a href=/calculadoras/calculadora-amor />Calculadora del
					amor</a>
				<li><a
					href=/calculadoras/calculadora-nutricional-calorias-alimentos />Calculadora
					nutricional</a>
				<li><a href=/calculadoras/calculadora-porcentajes />Calculadora
					de porcentajes</a>
				<li><a href=/calculadoras/calculadora-superficies-areas />Calculadora
					de superficies y Ã¡reas</a>
				<li><a href=/calculadoras/calculadora-iva />Calculadora IVA</a>
				<li><a href=/calculadoras/calculadora-semanas-embarazo />Calculadora
					de semanas de embarazo</a>
			</ul>
			<p>&copy; 2020 CalcuOnline &middot; Todos los derechos reservados
			
		</div>
	</footer>-->
	<script async src=/build/js/polyfills.js></script>
	<script async src=/build/js/page.js></script>
	<script async defer src=/build/js/calculators/calculator_fuelexpense.js></script>
	<div class=jsCookiesBar data-dimiss-text=Aceptar
		data-link=&lt;span&#x20;data-info&#x3D;&quot;L2NhbGN1bGFkb3Jhcy9wb2xpdGljYS1wcml2YWNpZGFkLw&#x3D;&#x3D;&quot;&#x20;class&#x3D;&quot;as-a&#x20;jsAsA&quot;&gt;Leer&#x20;m&#x00E1;s&lt;&#x2F;span&gt;
		data-message=Usamos&#x20;cookies&#x20;para&#x20;analizar&#x20;la&#x20;navegaci&#x00F3;n&#x20;de&#x20;los&#x20;usuarios&#x20;y&#x20;mejorar&#x20;nuestros&#x20;servicios.&#x20;Si&#x20;contin&#x00FA;as&#x20;navegando,&#x20;aceptar&#x00E1;s&#x20;su&#x20;uso.></div>
	<div class=jsMenuOverlayMask></div>