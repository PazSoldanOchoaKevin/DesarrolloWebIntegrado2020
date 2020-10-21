<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
  <head>
   <meta charset="UTF-8">
   <title>Cálculo del consumo de combustible — calculadora online</title>
   <meta name="viewport" content="width=device-width">
   <link rel="stylesheet" href="/styl.css">
   <link rel="shortcut icon" href="/obr/favicon.ico">  
   <style>
    table.zobraz tr td {min-width:100px; text-align:center; padding-left:2px; padding-right:0}
    table.zobraz tr td:first-child {min-width:75px;}
   </style>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-5022382288686796",
    enable_page_level_ads: true
  });
</script>
  </head>
  <body> 
   <!--  h l a v i c k a  -->
   <header id="pozadi" class="navDown">
     <div class="stred">
       <a href="/es/"><img src="/obr/calculatorg.jpg" class="logo" alt="Calculat.org"></a> 
       <input type="image" src="/obr/menu.svg" alt="&#9776;" class="mobileMenu" onClick="otevriMenu()"> 
     </div>
   </header>
   <!-- t e l o -->
   <div class="stred"> 
     <div class="obsah">
       <div class="telo">
         <form name="spotreba1" action="javascript:Vypocet1()">
           <div class="okraj">
             <h1>&#9981; Consumo de combustible</h1>
             <p>La calculadora realiza el cálculo del consumo y del precio de los combustibles.</p> 
             <h2>Calculadora</h2>
             <h3 id="error1">Introduzca la distancia</h3>
             <input type="tel" name="vzdalenost"> km<br>
             <input type="checkbox" name="cestaZpet">&nbsp;agregar el camino de regreso<br>
             <h3 id="error2">Introduzca el consumo medio del vehículo</h3>
             <input type="tel" name="spotreba">
             <select name="jednotka">
               <option>km/l</option>  
               <option>l/100 km</option>
             </select>
             <h3>Introduzca el precio de la gasolina o del diesel</h3>
             <input type="tel" name="cena"> /l 
           </div>
<!-- reklamaB horizontal -->
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- ES-EN-SPA-B1 -->
<ins class="adsbygoogle reklamaB"
     style="display:block"
     data-ad-client="ca-pub-5022382288686796"
     data-ad-slot="5743533826"
     data-ad-format="horizontal"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<!-- reklamaB -->            
           <div class="okraj">
             <div class="tlacitka"><input type="submit" value="Calcula"><input type="reset" value="Borra"></div> 
             <table class="zobraz">
               <tr><th></th><th>Consumo<br>(l)</th><th>Precio</th>
               <tr><td id="ujetychKm">X km</td><td id="spotrebaUV"></td><td id="cenaUV"></td></tr>
               <tr><td>1 km</td><td id="spotreba1km"></td><td id="cena1km"></td></tr>
             </table>
           </div>
         </form>
<!-- reklamaB -->
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- ES-EN-SPA-B2 -->
<ins class="adsbygoogle reklamaB"
     style="display:block"
     data-ad-client="ca-pub-5022382288686796"
     data-ad-slot="7220267028"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<!-- reklamaB --> 
         <div class="okraj">
           <p class="pata">Con gusto recibiremos sus comentarios y sugerencias.<br>
             <a href="mailto:info@calculat.org">info@calculat.org</a><br>
             <a href="https://www.calculat.org/">calculat.org</a>
           </p>
         </div>  
       </div> <!--telo-->
       <nav id="menuOff">
         <div class="pozMenu">
          <div></div> <!--kvuli pozadi-->
          <div>
           <input type="image" src="/obr/close-menu.svg" class="mobileMenu" alt="X" onClick="zavriMenu()">
          </div>
         </div>
       <div class="menu" id="ulMenu">   
         <div class="search">
           <form action="https://www.google.com">
             <input type="hidden" name="cx" value="000817978268712530256:ztglwstaxxo">
             <input type="hidden" name="ie" value="UTF-8">
             <input type="search" name="q">
             <input type="image" name="sa" src="/obr/search.svg" alt="&#128269;">
           </form>     
         </div>       
         <div class="zaverka"></div>
         <ul>                     
           <li class="rozbal"><a href="/es/energia/">Energía y combustible</a><div class="zaverka"></div>
             <ul>
               <li><a href="/es/energia/consumo-de-electricidad.html">Consumo de electricidad</a></li>
               <li class="zde"><a href="/es/energia/consumo-de-combustible.html">Consumo de combustible</a></li>
               <li><a href="/es/energia/consumo-de-gas.html">Consumo de gas</a></li>
             </ul></li>
           <li><a href="/es/area-perimetro/">Área y perímetro</a><input type="button" value="»" onClick="Rozbal(this.parentNode, 'rozbal');"><div class="zaverka"></div>
             <ul>
               <li><a href="/es/area-perimetro/circulo.html">Círculo</a></li>
               <li><a href="/es/area-perimetro/triangulo.html">Triángulo</a></li>
               <li><a href="/es/area-perimetro/triangulo-rectangulo.html">Triángulo rectángulo</a></li>
               <li><a href="/es/area-perimetro/cuadrado.html">Cuadrado</a></li>
               <li><a href="/es/area-perimetro/rectangulo.html">Rectángulo</a></li>
               <li><a href="/es/area-perimetro/rombo.html">Rombo</a></li>
               <li><a href="/es/area-perimetro/paralelogramo.html">Paralelogramo</a></li>
               <li><a href="/es/area-perimetro/trapecio.html">Trapecio</a></li>
               <li><a href="/es/area-perimetro/pentagono.html">Pentágono</a></li>
               <li><a href="/es/area-perimetro/hexagono.html">Hexágono</a></li>
               <li><a href="/es/area-perimetro/poligono.html">Polígono</a></li>
               <li><a href="/es/area-perimetro/teorema-de-pitagoras.html">Teorema de Pitágoras</a></li>
             </ul></li>
           <li><a href="/es/volumen-area/">Volumen y área</a><input type="button" value="»" onClick="Rozbal(this.parentNode, 'rozbal');"><div class="zaverka"></div>
             <ul>
               <li><a href="/es/volumen-area/cubo.html">Cubo</a></li>
               <li><a href="/es/volumen-area/ortoedro.html">Ortoedro</a></li>
               <li><a href="/es/volumen-area/cilindro.html">Cilindro</a></li>
               <li><a href="/es/volumen-area/cono.html">Cono</a></li>
               <li><a href="/es/volumen-area/esfera.html">Esfera</a></li>
               <li><a href="/es/volumen-area/prisma.html">Prisma</a></li>
               <li><a href="/es/volumen-area/piramide.html">Pirámide</a></li>
             </ul></li>
           <li><a href="/es/porcentajes/">Porcentajes</a><div class="zaverka"></div></li>
           <li><a href="/es/regla-de-tres/">Regla de tres</a><div class="zaverka"></div></li>
           <li><a href="/es/promedio/">Promedio</a><input type="button" value="»" onClick="Rozbal(this.parentNode, 'rozbal')"><div class="zaverka"></div>
             <ul>
               <li><a href="/es/promedio/media-aritmetica.html">Media aritmética</a></li>
               <li><a href="/es/promedio/media-ponderada.html">Media ponderada</a></li>
             </ul></li>
           <li><a href="/es/ecuaciones/">Ecuaciones</a><input type="button" value="»" onClick="Rozbal(this.parentNode, 'rozbal');"><div class="zaverka"></div>
             <ul>
               <li><a href="/es/ecuaciones/ecuacion-lineal.html">Ecuación lineal</a></li>
               <li><a href="/es/ecuaciones/ecuacion-cuadratica.html">Ecuación cuadrática</a></li>
               <li><a href="/es/ecuaciones/sistema-de-ecuaciones.html">Sistema de ecuaciones</a></li>
             </ul></li>
           <li><a href="/es/potencias-raices/">Potencias y raíces</a><input type="button" value="»" onClick="Rozbal(this.parentNode, 'rozbal');"><div class="zaverka"></div>
             <ul>
               <li><a href="/es/potencias-raices/cuadrado.html">Cuadrado</a></li>
               <li><a href="/es/potencias-raices/cubo.html">Cubo</a></li>
               <li><a href="/es/potencias-raices/potencia-n-esima.html">Potencia n-ésima</a></li>
               <li><a href="/es/potencias-raices/raiz-cuadrada.html">Raíz cuadrada</a></li>
               <li><a href="/es/potencias-raices/raiz-cubica.html">Raíz cúbica</a></li>
               <li><a href="/es/potencias-raices/raiz-n-esima.html">Raíz n-ésima</a></li>
             </ul></li>
           <li><a href="/es/funciones-trigonometricas/">Funciones trigonométricas</a><input type="button" value="»" onClick="Rozbal(this.parentNode, 'rozbal');"><div class="zaverka"></div>
             <ul>
               <li><a href="/es/funciones-trigonometricas/seno.html">Seno</a></li>
               <li><a href="/es/funciones-trigonometricas/coseno.html">Coseno</a></li>
               <li><a href="/es/funciones-trigonometricas/tangente.html">Tangente</a></li>
               <li><a href="/es/funciones-trigonometricas/cotangente.html">Cotangente</a></li>
             </ul></li>
           <li><a href="/es/logaritmos/">Logaritmos</a><input type="button" value="»" onClick="Rozbal(this.parentNode, 'rozbal');"><div class="zaverka"></div>
             <ul>
               <li><a href="/es/logaritmos/logaritmo.html">Logaritmo</a></li>
               <li><a href="/es/logaritmos/logaritmo-natural.html">Logaritmo natural</a></li>
               <li><a href="/es/logaritmos/logaritmo-decimal.html">Logaritmo decimal</a></li>
             </ul></li>
           <li><a href="/es/conversiones-de-unidades/">Conversiones de unidades</a><input type="button" value="»" onClick="Rozbal(this.parentNode, 'rozbal');"><div class="zaverka"></div>
             <ul>
               <li><a href="/es/conversiones-de-unidades/longitud.html">Longitud</a></li>
               <li><a href="/es/conversiones-de-unidades/area.html">Área</a></li>
               <li><a href="/es/conversiones-de-unidades/volumen.html">Volumen</a></li>
               <li><a href="/es/conversiones-de-unidades/masa.html">Masa</a></li>
               <li><a href="/es/conversiones-de-unidades/velocidad.html">Velocidad</a></li>
               <li><a href="/es/conversiones-de-unidades/temperatura.html">Temperatura</a></li>
               <li><a href="/es/conversiones-de-unidades/angulos.html">Ángulos</a></li>
               <li><a href="/es/conversiones-de-unidades/presion.html">Presión</a></li>
               <li><a href="/es/conversiones-de-unidades/potencia.html">Potencia</a></li>
               <li><a href="/es/conversiones-de-unidades/energia.html">Energía</a></li>
               <li><a href="/es/conversiones-de-unidades/tiempo.html">Tiempo</a></li>
             </ul></li>
         </ul>
         </div>
       </nav> <!--menu-->
     </div> <!--obsah-->
     <div class="reklS">
       <div id="reklS">
<!-- reklamaS SKRYJ -->
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- ES-EN-SPA-S -->
<ins class="adsbygoogle reklamaS"
     data-ad-client="ca-pub-5022382288686796"
     data-ad-slot="8697000224"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<!-- reklamaS -->
       </div> 
     </div> 
   </div><!--stred-->
   <div class="cookies">
     <div class="stred">
	     <p>Nuestro sitio web utiliza cookies para proporcionar sus servicios.</p>
	     <div>
         <button>OK</button>
	       <a target="_blank" href="https://www.google.com/policies/technologies/cookies/">Más&nbsp;información</a>
       </div> 
     </div>
   </div><!--cookies-->
   <div id="zadost">
     <div>
       <p>¿No les gusta la publicidad? A nosotros tampoco, pero los ingresos por publicidad nos permiten el funcionamiento de nuestras páginas web, y los servicios gratuitos 
         a nuestros visitantes. Valoren, por favor, la posibilidad de cancelar el bloqueo de anuncios en este sitio web. Gracias.</p>
         <div class="zaverka"></div>
     </div>
   </div> <!-- zadost --> 
<!-- s c r i p t y -->
<script async type="text/javascript" src="/script/ep-spal-latam.js"></script>
<script type="application/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>     
<script src="/advertisment.js" type="text/javascript"></script>
<script async type="text/javascript" src="/script.js"></script>
<script>
//adnalytics
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-83202854-1', 'auto');
  ga('send', 'pageview');
 
</script>
  </body>  
</html>
