<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin título</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
	<script rel="stylesheet" src="js/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript">
			$(document).ready(function() {
				$("#boton").click(function(event) {
					$("#capa").load('modelo.php');
				});
			});
		</script>
</head>

<body>

<?php
	session_start();
	$cadena=$_GET["usus"];
     $_SESSION['username']=$cadena;
	 if(empty($_SESSION['username'])) { // Recuerda usar corchetes.
        header('Location: prueba.html');
    } 
?>
<header>
	<div class="container-fluid">
	<div class="row">
			<div class="col-xs-12 col-md-5" >
		
		<div class="row">
		<div class=" col-xs-12 col-md-4">
		<br>
			<img width="100%" class="img-responsive" src="img/logo_sistemas.png" >
		
		
	</div>
	<div class=" col-xs-12 col-md-8">
				<h3 >Sistema de Registro Civil</h3>
		<h6>Municipalidad del Centro Poblado Chumbao</h6>
	</div>
		</div>
		</div>
		
		<div class="col-xs-12 col-md-5" >
		 <br> <br>
		 
		 <div class="row">
<div class="btn-group">
  <button type="button" class="btn btn-primary">Procesos</button>
  <button type="button" class="btn btn-primary dropdown-toggle"
          data-toggle="dropdown">
    <span class="caret"></span>
    <span class="sr-only">Procesos</span>
  </button>
 
  <ul class="dropdown-menu" role="menu">
    <li><a href="#">Registro de Matrimonio</a></li>
    <li><a href="#">Registro de Difusion</a></li>
    <li><a href="#">Registro de Nacimiento</a></li>
    
  </ul>
</div>
 <div class="btn-group">
  <button type="button" class="btn btn-primary">Reportes</button>
   <button type="button" class="btn btn-primary dropdown-toggle"
          data-toggle="dropdown">
    <span class="caret"></span>
    <span class="sr-only">Reportes</span>
  </button>
  <ul class="dropdown-menu" role="menu">
    <li><a href="#">Lista de Registro de Matrimonio</a></li>
    <li><a href="#">Lista de Registro de Difusion</a></li>
    <li><a href="#">Lista de Registro de Nacimiento</a></li>
    <li><a href="#">Lista de Registro de Usuarios</a></li>
  </ul>
</div>
 <div class="btn-group">
  <button type="button" class="btn btn-primary">LLenado</button>
    <button type="button" class="btn btn-primary dropdown-toggle"
          data-toggle="dropdown">
    <span class="caret"></span>
    <span class="sr-only">Llenado</span>
  </button>
 
  <ul class="dropdown-menu" role="menu">
	  <li><a id="boton" name="boton">Matrimonio</a></li>
			 <li><a type="button" id="boton" name="boton" >Listar llenados registrados</a></li>  
  </ul>
</div>
	 
		 </div>
		
		</div>
		<div class="col-xs-4 col-md-2"   >
		<br><br>
		<div class="col-md-4"><img src="img/usuarios.ico" width="100%"></div>
		<div class="row col-md-8" >		 
		<div class="dropdown">
  
    <button style="background: #FFFFFF" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"> <a style="color: 
    #000000"><?php 

echo $cadena;
?></a>
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">HTML</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">JavaScript</a></li>
    </ul>
  </div>
		</div>
		
		
		</div>
	
		
		
	</div>
	
	</div>
		
	
</header>

<div class="container-fluid " id="capa" name="capa" >
	<section class="main row"  >
	<div class="col-md-12" >
		<br><br>			
		</div>
		<div class="col-md-1">
					
		</div>
	<div class="col-xs-12 col-md-5 col-lg-5">
		<div class="row ">
			
		<div class="col-xs-12 col-md-12 col-lg-12" >
		<br><br>
		<img src="img/logo_sistemas.png" class="img-responsive" style="width:100%">
		
	    </div>
	   
	    </div>
	    
		</div>
		
	<div class="col-xs-12 col-md-4 col-lg-5" style="background:#469DC7;border-radius: 10px">
	<br>
		<p>
El Sistema de Registro Civil (SRC) es un sistema
de captura, digitalización, almacenamiento
y reportes de los archivos de registro civil (nacimiento,
matrimonio y defunción). Asimismo, permite
imprimir el archivo sin necesidad de buscar
el documento físico, lo que genera un ahorro de
tiempo y a la vez evita el deterioro del mismo. Por
otro lado, con el SRC se pueden obtener estadísticas
de nacimientos, matrimonios o defunciones
de manera exacta y en poco tiempo. <p>

</p>
		</p>
		
		<lu><p ><b>Beneficios</b></p><li> Permite la búsqueda de actas de hechos vitales
a partir de datos incompletos.</li>
<li>Permite la impresión y expedición de actas de
hechos vitales en forma descentralizada, no es
necesario tener los documentos físicos en el
mismo lugar.</li>
<li>Permite obtener repostes de la forma rápida y precisa; estas
contemplan la información requerida
mensualmente por la RENIEC.</li>
<li>Mejora en la atención al público y reduce los
tiempos de espera.</li> 
<li>Reducción y optimización de las áreas; los documentos
podrán guardarse en lugares más
apropiados.</li></lu>		 

		
		</div>
	<div class="col-md-12" >
		<br><br>			
		</div>
		<div class="col-md-12" >
		<br><br>			
		</div>
</section>

</div>
<footer style="background: #FFFFFF">
		<div class="container">
			<h5 style="color: black;">Sistema dedicado a la gestion de actas de nacimiento , matrimonio y defuncion </h5>
			
			<br>
		</div>
</footer>

<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>

