<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>IGPlan</title>
<link rel="stylesheet" type="text/css" href="view/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="view/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="view/css/simple-line-icons.css" />
<link rel="stylesheet" type="text/css" href="view/css/animate.css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="view/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="view/css/owl.theme.css" />
<link rel="stylesheet" type="text/css" href="view/css/owl.transitions.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">


<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600|Open+Sans"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="estilos.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href='https://fonts.googleapis.com/css?family=Work+Sans:400,100,200,300,500,600,800,900'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Oleo+Script+Swash+Caps:400,700'
	rel='stylesheet' type='text/css'>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">

	<div class="main-header" id="main-header">
		<nav class="navbar mynav navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="">iCPlan</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#banner">INICIO</a></li>
						<li><a href="#about">NOSOTRO</a></li>
						<li><a href="#testimonials">SUCRIBETE</a></li>
						<li><a href="http://localhost:8082/Login_utp/loginsuccess.jsp">CONVERTIDOR</a></li>
						<li><a href="#contact">CONTACTANOS</a></li>
						
				</div>
			</div>
		</nav>
	</div>
	<div class="banner" id="banner">
		<div class="bg-overlay">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="banner-text">
							<h2>
								Bienvenido a <span>iCPlan </span>Site
							</h2>
							<p>Una de la paginas más confiables para tus viajes</p>
							<a href="#" class="banner-button">Aprender más</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="features">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="feature-box media">
						<div class="icon-box text-center pull-left media-object">
							<i class="icon-bulb"></i>
						</div>
						<div class="feature-text media-body">
							<h4>Elementum laoreet</h4>
							<p class="feature-detail">Cras aliquet et mi id fermentum.
								Suspendisse eget sodales lorem, vestibulum euismod lectus.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="feature-box media pull-left">
						<div class="icon-box text-center pull-left media-object">
							<i class="icon-eye"></i>
						</div>
						<div class="feature-text media-body">
							<h4>Elementum laoreet</h4>
							<p class="feature-detail">Cras aliquet et mi id fermentum.
								Suspendisse eget sodales lorem, vestibulum euismod lectus.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="feature-box media pull-left">
						<div class="icon-box text-center pull-left media-object">
							<i class="icon-heart"></i>
						</div>
						<div class="feature-text media-body">
							<h4>Elementum laoreet</h4>
							<p class="feature-detail">Cras aliquet et mi id fermentum.
								Suspendisse eget sodales lorem, vestibulum euismod lectus.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio -->
	<div id="work" class="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-lg-offset-1 text-center text">
					<h3>Nuestro trabajo</h3>
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<div class="portfolio-item">
								<a href="#"> <img class="img-portfolio img-responsive"
									src="images/download1.webp">
								</a>
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<div class="portfolio-item">
								<a href="#"> <img class="img-portfolio img-responsive"
									src="images/download2.webp">
								</a>
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<div class="portfolio-item">
								<a href="#"> <img class="img-portfolio img-responsive"
									src="images/download3.webp">
								</a>
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<div class="portfolio-item">
								<a href="#"> <img class="img-portfolio img-responsive"
									src="images/download4.webp">
								</a>
							</div>
						</div>
					</div>
					<!-- /.row (nested) -->
					<a href="#" class="view-more">Ver mas</a>
					
				</div>
				<!-- /.col-lg-10 -->
				<br>
				<div class="col-md-12 ">
							<div class="portfolio-item">
								<a href="#"> <img class="img-portfolio img-responsive"
									src="images/download.webp">
								</a>
							</div>
						</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<div class="testimonials" id="testimonials">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="text-center">
						<h3>Noticias </h3>
					</div>
				</div>
				<div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10">
					<div id="owl-demo" class="owl-carousel owl-theme test">
						<div class="item">
							<p>
								<sup><i class="fa fa-quote-left"></i></sup>Lorem ipsum dolor sit
								amet, consectetur adipiscing elit. Sed dui ante, ornare eget est
								in, ultricies rutrum elit.<sup><i
									class="fa fa-quote-right"></i></sup>
							</p>
							<div class="test-img">
								<img src="images/team-img-01.jpg" />
								<p>
									<strong>Yogesh Singh</strong>
								</p>
							</div>
						</div>
						<div class="item">
							<p>
								<sup><i class="fa fa-quote-left"></i></sup>Proin tincidunt, orci
								vel volutpat blandit, purus turpis faucibus massa, sit amet
								posuere nunc diam in ex.<sup><i class="fa fa-quote-right"></i></sup>
							</p>
							<div class="test-img">
								<img src="images/team-img-02.jpg" />
								<p>
									<strong>Brad Will</strong>
								</p>
							</div>
						</div>
						<div class="item">
							<p>
								<sup><i class="fa fa-quote-left"></i></sup>Morbi velit mauris,
								hendrerit in convallis vel, laoreet et orci. Integer semper, est
								vel congue suscipit, nisl nibh convallis lorem, sit amet
								faucibus purus lacus eu nulla. Sed nec blandit ante, sed semper
								tellus.<sup><i class="fa fa-quote-right"></i></sup>
							</p>
							<div class="test-img">
								<img src="images/team-img-03.jpg" />
								<p>
									<strong>John Deo</strong>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="call-to-action">
		<div class="call-overlay">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-10">
						<div class="subscribe-text">
							<h3>Subscribete para actualizaciones</h3>
							<p>
¡Únase a nuestros más de 1000 suscriptores y obtenga acceso a las últimas herramientas, obsequios, anuncios de productos y mucho más!</p>
						</div>
					</div>
					<div class="col-md-4 text-center">
						<a href="#btn-abrir-popup" class="subscribe-button">Subscribete
							ahora</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="about" id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h3>Sobre nosotros</h3>
				</div>
				<div class="col-md-6">
					<div class="about-text">
						<p>Donec velit ex, faucibus eu mauris in, sodales placerat
							augue. Phasellus feugiat ex id enim laoreet mattis. Quisque velit
							quam, pharetra non lorem vel, scelerisque ornare dolor. Etiam id
							ex justo. Nullam nec ipsum non augue convallis gravida. Praesent
							mattis placerat sodales. Pellentesque nec egestas neque.</p>
						<p>Donec velit ex, faucibus eu mauris in, sodales placerat
							augue. Phasellus feugiat ex id enim laoreet mattis. Quisque velit
							quam, pharetra non lorem vel, scelerisque ornare dolor. Etiam id
							ex justo. Nullam nec ipsum non augue convallis gravida. Praesent
							mattis placerat sodales. Pellentesque nec egestas neque.</p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="col-md-6 col-sm-6 col-xs-6 block">
						<div class="counter-item text-center">
							<h5>Nuestros clientes</h5>
							<div class="timer" data-from="0" data-to="55" data-speed="5000"
								data-refresh-interval="50"></div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6">
						<div class="counter-item text-center">
							<h5>Projectos</h5>
							<div class="timer" data-from="0" data-to="88" data-speed="5000"
								data-refresh-interval="50"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="contact" id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="text-center">
						<h3>Contactanos </h3>
					</div>
				</div>
				<div
					class="col-md-7 col-sm-offset-0 col-sm-6 col-xs-offset-1 col-xs-10">
					<div class="contact-form">
						<form role="form">
							<div class="col-md-6">
								<input type="text" class="form-control" id="name"
									placeholder="nombre">
							</div>
							<div class="col-md-6">
								<input type="email" class="form-control" id="email"
									placeholder="Email">
							</div>
							<div class="col-md-12">
								<textarea class="form-control" placeholder="Mensaje" rows="6"></textarea>
							</div>
							<div class="col-md-12 text-center">
								<button type="submit" class="contact-button">Enviar mensaje</button>
							</div>
						</form>
					</div>
				</div>
				<div
					class="col-md-offset-1 col-md-4 col-sm-offset-1 col-sm-5 col-xs-offset-1 col-xs-10">
					<div class="address">
						<h4>Direccion</h4>
						<p>
							123, This Appartment,<br> Near Ocean Street<br> New
							York<br>
						<div class="email">
							<i class="fa fa-at"></i>hello@w3template.com<br> <i
								class="fa fa-mobile"></i>123 456 789
						</div>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>

		

		<script src="model/js/popup.js"></script>
		<script
			src='https://cdnjs.cloudflare.com/ajax/libs/animejs/2.2.0/anime.min.js'></script>
		<script src="model/js/script.js"></script>
		
		<script src="model/js/jquery.min.js"></script>
		<script src="model/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="model/js/owl.carousel.min.js"></script>
		<script type="text/javascript" src="model/js/jquery.countTo.js"></script>
		<script type="text/javascript" src="model/js/jquery.waypoints.min.js"></script>
		<script>
			$(document).ready(function() {

				$("#owl-demo").owlCarousel({

					navigation : false, // Show next and prev buttons
					slideSpeed : 500,
					autoPlay : 3000,
					paginationSpeed : 400,
					singleItem : true

				// "singleItem:true" is a shortcut for:
				// items : 1, 
				// itemsDesktop : false,
				// itemsDesktopSmall : false,
				// itemsTablet: false,
				// itemsMobile : false

				});

			});

			/*$('.timer').each(count);*/
			jQuery(function($) {
				// custom formatting example
				$('.timer').data(
						'countToOptions',
						{
							formatter : function(value, options) {
								return value.toFixed(options.decimals).replace(
										/\B(?=(?:\d{3})+(?!\d))/g, ',');
							}
						});

				// start all the timers
				$('#testimonials').waypoint(function() {
					$('.timer').each(count);
				});

				function count(options) {
					var $this = $(this);
					options = $.extend({}, options || {}, $this
							.data('countToOptions')
							|| {});
					$this.countTo(options);
				}
			});

			$(document).ready(
					function() {
						// Add smooth scrolling to all links in navbar + footer link
						$(".navbar a, footer a[href='#myPage']").on('click',
								function(event) {

									// Prevent default anchor click behavior
									event.preventDefault();

									// Store hash
									var hash = this.hash;

									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								});
					})
		</script>
		
</body>
</html>