<?php


include_once "conectar.php";

  $query = "SELECT * FROM `questions`";
  $result = mysql_query($query);
  $numero = 0;
while($row = mysql_fetch_array($result))
{
$salida='		Case '.$row["ID"].'
						GoTo q'.$row["ID"].'
';
	print nl2br($salida);
	
}
?>
