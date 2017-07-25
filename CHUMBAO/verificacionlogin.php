<?php
include("conectarv1.php");
$vericador=conectar();
$user=$_POST['usuario'];
$contra=$_POST['contra'];
$resp="";
$resultado = $vericador->query("SELECT Nombre_usuario,Contra_usuario from usuarios");
$num_fila = $resultado->num_rows;
for ($n=0; $n<$num_fila ; $n++) {
    $resultado->data_seek($num_fila);
    $fila = $resultado->fetch_assoc();
    if($fila['Nombre_usuario']== $user && $fila['Contra_usuario']== $contra){
		$resp="si";
	}
	else{$resp="no";}
}
if($resp=="si"){
	  session_start();
        
	header('Location: prueba25.php?usus='.$user);
}
else{
	header('Location: prueba.html');
}

?>