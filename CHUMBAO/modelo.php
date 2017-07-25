<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin título</title>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<link rel="stylesheet" href="css/estilos.css">
</head>

<body>
	<?php
	include 'conectarv1.php';
	$verificar = conectar();
	$sq=$verificar->query("select * from modelo");
	$num = $sq->num_rows;
	?>
   
<div id="" class="container">
		<table class="table table-striped">
			<tr>
				<th>IdModelo</th>
				<th>Tipo</th>
				<th>Referencia</th>
				<th>Acción</th>
			</tr>
			<?php
			 for($n=0;$n<$num;$n++){
				 $sq->data_seek($num);
    			 $fila = $sq->fetch_assoc();
			?>
			<tr>
				<th><?php echo $fila['IdModelo'] ?></th>
				<th><?php echo $fila['Tipo'] ?></th>
				<th><?php echo $fila['Referencia']?></th>
				<th><a href="llenado_matrimonio.html">Ingresar</a></th>
			</tr>
			<?php
			 }
			?>
		</table>
</div>
</body>
</html>