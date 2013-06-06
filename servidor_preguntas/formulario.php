<form name="preguntas" method="POST" action="<? echo 'registro.php'; ?>"  enctype="multipart/form-data"> 
<p>Pregunta<input type="text" name="quest" value="" maxlength=64 required></p>
<p>Respuesta A <input type="text" name="ansA" value="" maxlength=16 required></p>
<p>Respuesta B <input type="text" name="ansB" value="" maxlength=16 required></p>
<p>Respuesta C <input type="text" name="ansC" value="" maxlength=16 required></p>
<p>Respuesta D <input type="text" name="ansD" value="" maxlength=16 required></p>
<p>Respuesta Correcta<select name="anstrue" maxlength=1>
  <option value="A">A</option>
  <option value="B">B</option>
  <option value="C">C</option>
  <option value="D">D</option>
</select></p>
</form>
