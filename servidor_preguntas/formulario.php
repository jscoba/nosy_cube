<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta title="Base de datos Nosy Cube">
</head>
<body>

<form name="preguntas" method="POST" action="<? echo 'procesar.php'; ?>"  enctype="multipart/form-data"> 
<p>Pregunta<input type="text" name="quest" value="" maxlength=64 required></p>
<p>Respuesta A <input type="text" name="ansA" value="" maxlength=14 required></p>
<p>Respuesta B <input type="text" name="ansB" value="" maxlength=14 required></p>
<p>Respuesta C <input type="text" name="ansC" value="" maxlength=14 required></p>
<p>Respuesta D <input type="text" name="ansD" value="" maxlength=14 required></p>
<p>Respuesta Correcta<select name="anstrue" maxlength=1>
  <option value="A">A</option>
  <option value="B">B</option>
  <option value="C">C</option>
  <option value="D">D</option>
</select></p>
<p><input type="submit" value="Enviar"><p>
</form><br>
<a href="see.php">Ver preguntas cargadas</a>
</body>
</html>
