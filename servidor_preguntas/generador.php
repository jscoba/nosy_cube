<?php


include_once "conectar.php";

  $query = "SELECT * FROM `questions`";
  $result = mysql_query($query);
  $numero = 0;
function header(){
echo "'*****************************************
'* Nosy Cube - Javier Sáez de la Coba    *
'*                                       *
'* I.E.S. Bembézar   2013                *
'*                                       *
'*****************************************".'

DelayMS 100

Declare LCD_Lines 4
Inicio:

    Print At 1,2, "Nosy Cube"
    Dim pin As Word           
    Dim ansA As String * 16
    Dim ansB As String * 16
    Dim ansC As String * 16
    Dim ansD As String * 16
    Dim true As String  * 1
    Dim quest1 As String * 16
    Dim quest2 As String * 16
    Dim quest3 As String * 16
    Dim quest4 As String * 16
    Dim printa As String * 16
    Dim printb As String * 16
    Dim printc As String * 16
    Dim printd As String * 16    
    Dim temp As String * 4     
    Dim number As Word         
    Dim ans As String * 3
    Symbol maxquest = '.$numero.'
    ans = "ans"

RAMDOM:
	Low PORTA.0
	Low PORTA.1
	Low PORTA.2
	Low PORTA.3   
    If PORTC.0 | PORTC.1 | PORTC.2 | PORTC.3 =1 Then
        If number >= maxquest Then 
            number = 1
        Else
        number = number + 1
        EndIf
    Else
    	Select number';
}
  while($row = mysql_fetch_array($result))
  {
	echo '			Case '.$row["ID"].'
						GoTo q'.$row["ID"];
	
  }
echo '
EndSelect
    EndIf

PREGUNTA:
    Print At 1,1, quest1
    Print At 1,2, quest2
    Print At 1,3, quest3
    Print At 1,4, quest4
    GoTo LUCES
    
LUCES:
    If PORTC.0 = 0 Then
        High PORTA.0
    EndIf
    If PORTC.1 = 0 Then
        High PORTA.1
    EndIf
    If PORTC.2 = 0 Then
        High PORTA.2
    EndIf
    If PORTC.3 = 0 Then
        High PORTA.3
    EndIf    
    GoTo RESPUESTA

RESPUESTA:

    printa= "A." + ansA
    printb= "B." + ansB
    printc= "C." + ansC
    printd= "D." + ansD
    Print At 1,1, printa
    Print At 1,2, printb
    Print At 1,3, printc
    Print At 1,4, printd
    GoTo DECIDIR

DECIDIR:

  If PORTC.7 | PORTC.6 | PORTC.5 | PORTC.4 = 0 Then
    If PORTC.7 = 0 Then
        temp = "A"
    EndIf
    If PORTC.6 = 0 Then
        temp = "B"
    EndIf
    If PORTC.5 = 0 Then
        temp = "C"
    EndIf
    If PORTC.4 = 0 Then
        temp = "D"
    EndIf
    If temp=true Then
    GoTo CORRECTA
    Else
    GoTo INCORRECTA
    EndIf
  Else 
  GoTo DECIDIR
  EndIf
    
CORRECTA:
    Print At 1,1, "  ___  _  ___ "
    Print At 1,2, " / _ \| |/ / |"
    Print At 1,3, "| (_) | " <|_|"
    Print At 1,4, " \___/|_|\_(_)"
    DelayMS 2000
    GoTo RAMDOM

INCORRECTA:

    Print At 1,1, " _  _  ___  _ "   
    Print At 1,2, "| \| |/ _ \| |"
    Print At 1,3, "| .` | (_) |_|"
    Print At 1,4, "|_|\_|\___/(_)"
    DelayMS 1500
    Cls
    Print At 1,1, "La respuesta" 
    Print At 1,2, "correcta era:"
    Print At 1,3, true
    DelayMS 1500
    GoTo RAMDOM
';

while($row = mysql_fetch_array($result))
{
	$quest = $row["pregunta"]
	if (strlen($quest)<=16)
	{
		$quest1= $quest;
		$quest2= "";
		$quest3= "";
		$quest4= "";
	}else{
		$trozo1=explode(" ",$quest);
		foreach( $trozo1 as v1 => v2 ) {
			while (strlen($quest1)<=16)
			{
				$quest1 = $quest1 + 
			}

		}
	}
echo 'q'.$row["ID"].':
                                                
ansA = "'.$row["A"].'"                      
ansB = "'.$row["B"].'"                    
ansC = "'.$row["C"].'"                       
ansD = "'.$row["D"].'"
quest1= "'.$quest1.'"
quest2= "'.$quest2.'"
quest3= "'.$quest3.'"
quest4= "'.$quest4.'"
true= "'.$row["correcta"].'"

GoTo PREGUNTA';
	
  }

?>
