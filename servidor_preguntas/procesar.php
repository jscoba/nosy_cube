<?php

include_once "conectar.php";
$v1=$_POST['quest'];
$v2=$_POST['ansA'];
$v3=$_POST['ansB'];
$v4=$_POST['ansC'];
$v5=$_POST['ansD'];
$v6=$_POST['anstrue'];
//var_dump($_POST);

//$query="INSERT INTO questions(pregunta, A, B, C, D, correcta) VALUES ('$v1','$v2','$v3','$v4','$v5','$v6')";
$sql = "INSERT INTO questions(pregunta, A, B, C, D, correcta) VALUES ('".$v1."', '".$v2."', '".$v3."', '".$v4."', '".$v5."', '".$v6."')";
if($result = mysql_query($sql) or die(mysql_error())
)
{
	echo' <a href="javascript:history.back(1)">Volver</a>';
}else{
  echo 'ERROR EN LA APLICACIÓN. Contacta con el admin';
}



?>
