<?php


include_once "conectar.php";

  $query = "SELECT * FROM `questions`";
  $result = mysql_query($query);
  $numero = 0;
//while($row = mysql_fetch_array($result))
//{
//$salida='		Case '.$row["ID"].'
//						GoTo q'.$row["ID"].'
//';
//	print nl2br($salida);
	
//}

while($row = mysql_fetch_array($result))
{
		$quest1b= 0;
		$quest2b= 0;
		$quest3b= 0;
		$quest1= "";
		$quest2= "";
		$quest3= "";
		$quest4= "";
		$quest = $row["pregunta"];
		$temporal= strtok($quest," ");
	if (strlen($quest)<=16)
	{

		$quest1= $quest;
		$quest2= "";
		$quest3= "";
		$quest4= "";
	}else{
			while ($temporal){			
			if (strlen($quest1) <= 16 AND strlen($quest1) + strlen($temporal) <= 16 AND $quest1b==0)
			{
				$quest1.= " " . $temporal;
				$temporal =  strtok (" ");
			}else{
				if (strlen($quest2) <= 16 AND strlen($quest2) + strlen($temporal) <= 16 AND $quest2b==0)
				{
					$quest1b = 1;					
					$quest2.= " " . $temporal;
					$temporal =  strtok (" ");					
				}else{
					if (strlen($quest3) <= 16 AND strlen($quest3) + strlen($temporal) <= 16 AND $quest3b==0)
					{
						$quest2b = 1;
						$quest3.= " " . $temporal;
						$temporal =  strtok (" ");				
					}else{
						if (strlen($quest4) <= 20 //AND strlen($quest4) + strlen($temporal) <= 20
						)
						{
							$quest3b = 1;
							$quest4.= " " . $temporal;
							$temporal =  strtok (" ");		
						}
					}
				}
			}
			}
		}

print nl2br('q'.$row["ID"].':
                                                
ansA = "'.$row["A"].'"                     
ansB = "'.$row["B"].'"                   
ansC = "'.$row["C"].'"                      
ansD = "'.$row["D"].'"
quest1= "'.$quest1.'"
quest2= "'.$quest2.'"
quest3= "'.$quest3.'"
quest4= "'.$quest4.'"
true= "'.$row["correcta"].'"

GoTo PREGUNTA
');
}

