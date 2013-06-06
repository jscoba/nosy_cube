<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta title="Base de datos Nosy Cube">
</head>
<body>
<table border="1" cellspacing=1 cellpadding=2 style="font-size: 8pt"><tr>
<td><font face="verdana"><b>ID</b></font></td>
<td><font face="verdana"><b>Pregunta</b></font></td>
<td><font face="verdana"><b>A</b></font></td>
<td><font face="verdana"><b>B</b></font></td>
<td><font face="verdana"><b>C</b></font></td>
<td><font face="verdana"><b>D</b></font></td>
<td><font face="verdana"><b>Correcta</b></font></td>
</tr>

<?php  
include_once "conectar.php";

  $query = "SELECT * FROM `questions`";
  $result = mysql_query($query);
  $numero = 0;
  while($row = mysql_fetch_array($result))
  {
    echo "<tr><td width=\"14%\"><font face=\"verdana\">" . 
	    $row["ID"] . "</font></td>";
    echo "<td width=\"14%\"><font face=\"verdana\">" . 
	    $row["pregunta"] . "</font></td>";
    echo "<td width=\"14%\"><font face=\"verdana\">" . 
	    $row["A"] . "</font></td>";
    echo "<td width=\"14%\"><font face=\"verdana\">" . 
	    $row["B"]. "</font></td>";    
    echo "<td width=\"14%\"><font face=\"verdana\">" . 
	    $row["C"]. "</font></td>"; 
    echo "<td width=\"14%\"><font face=\"verdana\">" . 
	    $row["D"]. "</font></td>"; 
    echo "<td width=\"14%\"><font face=\"verdana\">" . 
	    $row["correcta"]. "</font></td></tr>"; 
    $numero++;
  }
  echo "<tr><td colspan=\"15\"><font face=\"verdana\"><b>N&uacute;mero: " . $numero . 
      "</b></font></td></tr>";
  
  mysql_free_result($result);
?>
</table>
</body>
