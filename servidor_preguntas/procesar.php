<?php

include_once "conectar.php";
$v1=$_POST['quest'];
$v2=$_POST['ansA'];
$v3=$_POST['ansB'];
$v4=$_POST['ansC'];
$v5=$_POST['ansD'];
$v6=$_POST['anstrue'];

$query="INSERT questions '(pregunta,A,B,C,D,correcta) VALUES ('$v1','$v2','$v3','$v4','$v5','$v6')";
$result = mysql_query($query) or die(mysql_error());
?>
