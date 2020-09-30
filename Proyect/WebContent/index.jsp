<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>MedPet</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script>
	$(window).load(function() {
		$('.slider')._TMS({
			show : 0,
			pauseOnHover : false,
			prevBu : '.prev',
			nextBu : '.next',
			playBu : false,
			duration : 800,
			preset : 'fade',
			pagination : true, //'.pagination',true,'<ul></ul>'
			pagNums : false,
			slideshow : 8000,
			numStatus : false,
			banners : true,
			waitBannerAnimation : false,
			progressBar : false
		})
	});
	$(window).load(function() {
		$('.carousel1').carouFredSel({
			auto : false,
			prev : '.prev',
			next : '.next',
			width : 960,
			items : {
				visible : {
					min : 3,
					max : 3
				},
				height : 'auto',
				width : 300,
			},
			responsive : true,
			scroll : 1,
			mousewheel : false,
			swipe : {
				onMouse : true,
				onTouch : true
			}
		});
	});
	jQuery(document).ready(function() {
		$().UItoTop({
			easingType : 'easeOutQuart'
		});
	});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body class="page1">
	<header>
		<div class="container_12">
			<div class="grid_12">
				<h1>
					<a href="index.html"><img
						src="https://www.vetdirectory.co.za/listing-image/838-medpet-pty-ltd.jpeg"
						width="100" height="95" alt=""></a>
				</h1>
				<div class="menu_block">
					<nav>
						<ul class="sf-menu">
							<li class="current"><a href="index.jsp">Inicio</a></li>
							<li class="with_ul"><a href="Sobre-nosotros.jsp">Sobre
									nosotros</a> <!-- <ul>
									<li><a href="#"></a></li>
									<li><a href="#"></a></li>
									<li><a href="#"><span></span></a></li>
								</ul> --></li>
							<li><a href="services.jsp">Servicios</a></li>
							<li><a href="blog.jsp">Blog</a></li>
							<li><a href="contacts.jsp">Contactanos </a>
								<ul>
									<li><a href="https://www.facebook.com/">Facebook</a></li>
									<li><a href="https://web.whatsapp.com/">Whatsapp</a></li>
									<li><a href="https://www.instagram.com/"><span>Instagram</span></a></li>
								</ul></li>
							<li><a href="#">Ingresar </a>
								<ul>
									<li><a href="http://localhost:8081/Formulario/index.jsp">Iniciar</a></li>
									<li><a href="http://localhost:8081/Formulario/index.jsp"></a></li>
								</ul>
						</ul>
					</nav>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</header>
	<div class="top_block">
		<div class="slider-relative">
			<div class="slider-block">
				<div class="slider">
					<ul class="items">
						<li><img src="https://hddesktopwallpapers.in/wp-content/uploads/2015/09/cocker-spaniel-wallpaper.jpg" alt="">
							<div class="banner">
								Ellos necesitan tu <span>amor</span> y <i> cuidado</i>
								<p>Es tan f�cil hacerlas felices</p>
							</div></li>
							
						<li><img src="images/slide1.jpg" alt="">
							<div class="banner">
								They Need Your <span>Love</span> and <i>Care</i>
								<p>It is so easy to make them happy</p>
							</div></li>
						<li><img src="images/slide2.jpg" alt="">
							<div class="banner">
								They Need Your <span>Love</span> and <i>Care</i>
								<p>It is so easy to make them happy</p>
							</div></li>
						<li><img src="https://www.carinyascotties.com/wp-content/uploads/2020/04/carinya-scotties-4.jpg" alt="">
							<div class="banner">
								They Need Your <span>Love</span> and <i>Care</i>
								<p>It is so easy to make them happy</p>
							</div></li>
							 
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="page1_block">
		<div class="container_12">
			<div class="grid_6">
				<h2>Bienvenidos a nuestra pagina</h2>
				<br> <img src="images/page1_img5.jpg" alt=""
					class="img_inner fleft">
				<div class="extra_wrapper style1">
					<p class="text1">
						<a href="#">Click here</a> for more info about this free website
						template created by TemplateMonster.com
					</p>
					Hibh ullamcorper accumsan sem lectus ut sapien. Donec venenatis .
				</div>
				<div class="clear"></div>
				Praesent quis orci eget diam viverra consequat. Fusce sagittis quam
				in pulvinar sollicitudin velit velit cursus nibh ullamcorper
				accumsan sem lectus ut sapien. Donec venenatis posuere velit aty
				convallis neque ullamcorper quis. Integer posuere ipsum eu risus
				sollicitudin nec varius eratylo luctus. Fusce fringilla erat ac urna
				pe llentesque congue. Nunc fringilla diam sit amet adipi scing
				bibendum turpis velit feugiat urna et pharetra neque nisi ac nunc.
				Vivamus est quam dapibuslok. ..ullamco rper imperdiet nec euismod ut
				arcu. Nulla facilisi. Etiam mauris lorem pulvinar vel con sequat ut
				pretium ac erat. Morbi facilisis elit eu nisl blandit ac blandit
				enim faucibu. Praesent quis orci eget diam viverra consequat. Fusce
				sagittis.<br> <a href="#" class="btn">Mas</a>
			</div>
			<div class="grid_5 prefix_1">
				<h2 class="ic1">Ultimas noticias </h2>
				<ul class="list">
					<li><span> <time datetime="2045-01-01">
								27<span>APR</span>
							</time>
					</span>
						<div class="extra_wrapper">
							<div class="col1">
								<a href="#">Duis posuere consectetur pellentesqe;</a>
								<time datetime="2045-01-01">April 27.03.45</time>
							</div>
							Sed nisi turpis, pellentesque at ultrices in dapibus in magna.
							Nunc easi diam risus,placerat ut scelerisque suscipit eu ante.
							Nullam vitae dolor ullcper felises
						</div></li>
					<li><span class="cnt"> <time datetime="2045-01-01">
								28<span>APR</span>
							</time>
					</span>
						<div class="extra_wrapper">
							<div class="col1">
								<a href="#">Kuuis posuere consectetur pellentes;</a>
								<time datetime="2045-01-01">April 28.03.45</time>
							</div>
							Eed nisi turpis, pellentesque at ultrices in dapibus in magna.
							Nunc easi diam risulacerat ut scelerisque et suscipit eu ante.
							Nullam vitae dolor ullcper felises.
						</div></li>
					<li><span> <time datetime="2045-01-01">
								29<span>APR</span>
							</time>
					</span>
						<div class="extra_wrapper">
							<div class="col1">
								<a href="#">Opuis posuere honsectetur pellentesyt;</a>
								<time datetime="2045-01-01">April 29.03.45</time>
							</div>
							Koed nisi turpis, pellentesque at ultrices in dapibus in magna.
							Nunc easi diam risujo placerat ut scelerisque et suscipit eu
							ante. Ullam vitae dolor ullcper felises.
						</div></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="content page1">
		<div class="container_12">
			<div class="grid_12">
				<a href="#" class="next"></a><a href="#" class="prev"></a>
				<h2>Mascotas en adopcion</h2>
			</div>
			<div class="clear"></div>
			<ul class="carousel1">
				<li class="grid_4"><img src="images/carousel1_img1.jpg" alt=""
					class="img_inner fleft">
					<div class="extra_wrapper pad1">
						<p class="col2">
							<a href="#">Praesent quis orcidiam viverralopr </a>
						</p>
						Raes quis orci eget diam viverralopr con equat. Fusce sagit quam
						ihui hyhy kolo opirlo pulvinarhjkjo.
					</div></li>
				<li class="grid_4"><img src="images/carousel1_img2.jpg" alt=""
					class="img_inner fleft">
					<div class="extra_wrapper pad1">
						<p class="col2">
							<a href="#">Aeraesent quis hoj rcieget diam iverral.</a>
						</p>
						Loaesent quis orci diam viverralopr con equat. Lusce sagittis quam
						ihui hyhy opir pulvinarhjk velit.
					</div></li>
				<li class="grid_4"><img src="images/carousel1_img3.jpg" alt=""
					class="img_inner fleft">
					<div class="extra_wrapper pad1">
						<p class="col2">
							<a href="#">Tyeraesent quis hojo rcieget iam iverralji.</a>
						</p>
						Eroaesent quis orci ediam viverralopr con jikjulo poiu retyulo hyk
						equat. Usce sagittis ki quam ihui hyhy opirp.
					</div></li>
				<li class="grid_4"><img src="images/carousel1_img4.jpg" alt=""
					class="img_inner fleft">
					<div class="extra_wrapper pad1">
						<p class="col2">
							<a href="#">Aeraesent quis hoj rcieget diam iverral.</a>
						</p>
						Loaesent quis orci diam viverralopr con equat. Lusce sagittis quam
						ihui hyhy opir pulvinarhjk velit.
					</div></li>
				<li class="grid_4"><img src="images/carousel1_img5.jpg" alt=""
					class="img_inner fleft">
					<div class="extra_wrapper pad1">
						<p class="col2">
							<a href="#">Aeraesent quis hoj rcieget diam iverral.</a>
						</p>
						Loaesent quis orci diam viverralopr con equat. Lusce sagittis quam
						ihui hyhy opir pulvinarhjk velit.
					</div></li>
				<li class="grid_4"><img src="images/carousel1_img6.jpg" alt=""
					class="img_inner fleft">
					<div class="extra_wrapper pad1">
						<p class="col2">
							<a href="#">Aeraesent quis hoj rcieget diam iverral.</a>
						</p>
						Loaesent quis orci diam viverralopr con equat. Lusce sagittis quam
						ihui hyhy opir pulvinarhjk velit.
					</div></li>
			</ul>
		</div>
	</div>
	<div class="bottom_block">
		<div class="container_12">
			<div class="grid_6">
				<h2>Pet Care Tips</h2>
				<br> Praesent quis orci eget diam viverra consequat. Fusce
				sagittis quam in pulvinar sollicitudin velit velit cursus nibh
				ullamcorper accumsan sem lectus ut sapien. Donec venenatis posuere
				velit a convallis neque ullamcorper quis. Integer posuere ipsum eu
				risus sollicitudin nec varius erat luctus. Fusce fringilla erat ac
				urna pe llentesque congue. Nunc fringilla, diam sit amet adipi scing
				bibendum turpis velit feugiat urna, et pharetra neque nisi ac nunc.
				Vivamus est quam dapibus ullamco rper imperdiet nec, euismod ut
				arcu. Nulla facilisi. Etiam mauris lorem pulvinar vel con sequat ut
				pretium ac erat. Morbi facilisis elit eu nisl blandit ac blandit
				enim faucibus. Praesent quis orci eget diam viverra consequat. Fusce
				sagittis.
			</div>
			<div class="grid_4 prefix_2">
				<h2 class="ic1">Alguna pregunta?</h2>
				<img src="images/page1_img4.jpg" alt="" class="fleft img_inner">
				<div class="extra_wrapper">
					<div class="cont">
						Llamanos gratis: <span>+1 800 559 6580</span>
					</div>
				</div>
				<div class="clear"></div>
				Nunc fringilla, diam sit amet adipi scing bibendum turpis velit
				feugiat urna, et pharetra neque nisi ac nunc. Viv amus est quam
				dapibus ullamco rper imperdiet nec euismod ut arcu. Nulla facilisi.
				Etiam mauris.
			</div>
		</div>
	</div>
	<footer>
		<div class="container_12">
			<div class="grid_12">
				<div class="socials">
					<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a>
				</div>
				<p>
					Pet Club &copy; 2045 | <a href="#">Privacy Policy</a> | Design by:
					<a href="http://www.templatemonster.com/">TemplateMonster.com</a>
				</p>
			</div>
			<div class="clear"></div>
		</div>
	</footer>
</body>
</html>