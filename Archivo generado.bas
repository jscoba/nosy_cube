'*****************************************
'* Nosy Cube - Javier Sáez de la Coba    *
'*                                       *
'* I.E.S. Bembézar   2013                *
'*                                       *
'*****************************************

DelayMS 100

Declare LCD_Lines 4
Inicio:

    Print At 2,1, "Nosy Cube"
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
    Symbol maxquest = 24
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
    	Select number
Case 1
GoTo q1
Case 2
GoTo q2
Case 3
GoTo q3
Case 4
GoTo q4
Case 5
GoTo q5
Case 6
GoTo q6
Case 7
GoTo q7
Case 8
GoTo q8
Case 9
GoTo q9
Case 10
GoTo q10
Case 11
GoTo q11
Case 12
GoTo q12
Case 13
GoTo q13
Case 14
GoTo q14
Case 15
GoTo q15
Case 16
GoTo q16
Case 17
GoTo q17
Case 18
GoTo q18
Case 19
GoTo q19
Case 20
GoTo q20
Case 21
GoTo q21
Case 22
GoTo q22
Case 23
GoTo q23
Case 24
GoTo q24


'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'???????????????????????????????????????????????????????
'-------------------------------------------------------
'???????????????????????????????????????????????????????
'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

EndSelect
    EndIf

PREGUNTA:
    Print At 1,1, quest1
    Print At 2,1, quest2
    Print $FE,$90, quest3
    Print $FE,$D0, quest4
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
    Print At 2,1, printb
    Print $FE,$90, printc
    Print $FE,$D0, printd
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
    Print At 1,1,  "  ___  _  ___ "
    Print At 2,1,  " / _ \| |/ / |"
    Print $FE,$90, "| (_) | ' <|_|"
    Print $FE,$D0, " \___/|_|\_(_)"
    DelayMS 2000
    GoTo RAMDOM

INCORRECTA:

    Print At 1,1,  " _  _  ___  _ "   
    Print At 2,1,  "| \| |/ _ \| |"
    Print $FE,$90, "| .` | (_) |_|"
    Print $FE,$D0, "|_|\_|\___/(_)"
    DelayMS 1500
    Cls
    Print At 1,1, "La respuesta" 
    Print At 2,1, "correcta era:"
    Print $FE,$90, true
    DelayMS 1500
    GoTo RAMDOM

q1:

ansA = "Pistilo" 
ansB = "Estambre" 
ansC = "Corola" 
ansD = "Caliz"
quest1= "¿Que nombre "
quest2= "recibe el "
quest3= "conjunto de "
quest4= "petalos de flor? "
true= "C"

GoTo PREGUNTA
q2:

ansA = "1978" 
ansB = "1967" 
ansC = "1492" 
ansD = "1789"
quest1= "¿Cuando se "
quest2= "aprobo la actual "
quest3= "constitucion? "
quest4= ""
true= "A"

GoTo PREGUNTA
q3:

ansA = "1942" 
ansB = "1486" 
ansC = "1492" 
ansD = "1842"
quest1= "¿Cuando "
quest2= "descubrio "
quest3= "Cristobal Colon "
quest4= "America? "
true= "C"

GoTo PREGUNTA
q4:

ansA = "Inditex" 
ansB = "Mercadona" 
ansC = "Forecast" 
ansD = "Carrefour"
quest1= "¿Que empresa no "
quest2= "es hispana? "
quest3= ""
quest4= ""
true= "D"

GoTo PREGUNTA
q5:

ansA = "Biceps" 
ansB = "Diafragma" 
ansC = "Abdomen" 
ansD = "Carpiano"
quest1= "¿Que musculo es "
quest2= "el responsable "
quest3= "de la "
quest4= "ventilacion?"
true= "B"

GoTo PREGUNTA
q6:

ansA = "Felipe V" 
ansB = "Fernando I" 
ansC = "Carlos V" 
ansD = "Carlos I"
quest1= "¿Quien fue el"
quest2= "primer rey de la"
quest3= "Casa de Borbon?"
quest4= ""
true= "A"

GoTo PREGUNTA
q7:

ansA = "Madrid" 
ansB = "Valencia" 
ansC = "Cordoba" 
ansD = "Sevilla"
quest1= "¿Donde podemos"
quest2= "encontrar el"
quest3= "estadio Ramon"
quest4= "Sanchez Pizjuan?"
true= "D"

GoTo PREGUNTA
q8:

ansA = "Fco. Quevedo" 
ansB = "M. Cervantes" 
ansC = "Lope de Vega" 
ansD = "Gongora"
quest1= "¿Que escritor"
quest2= "escribio 'El"
quest3= "Quijote'?"
quest4= ""
true= "B"

GoTo PREGUNTA
q9:

ansA = "Los pulmones" 
ansB = "Las glandulas" 
ansC = "Las nefronas" 
ansD = "Los ovarios"
quest1= "¿Que estructuras"
quest2= "son encargadas"
quest3= "de fabricar la"
quest4= "orina? "
true= "C"

GoTo PREGUNTA
q10:

ansA = "Buena amistad" 
ansB = "Buena salida" 
ansC = "Buen comienzo" 
ansD = "Buena suerte"
quest1= "¿Qué significa"
quest2= "'good luck' en"
quest3= "ingles?"
quest4= ""
true= "D"

GoTo PREGUNTA
q11:

ansA = "Facebook" 
ansB = "Tuenti" 
ansC = "Twitter" 
ansD = "Tumblr"
quest1= "¿Como se llama"
quest2= "la red social"
quest3= "que tiene de "
quest4= "icono un pajaro azul?
true= "C"

GoTo PREGUNTA
q12:

ansA = "4.20" 
ansB = "4.14" 
ansC = "3.20" 
ansD = "3.14"
quest1= "¿Con que numero"
quest2= "denotamos 'PI'"
quest3= "en matematicas?"
quest4= ""
true= "D"

GoTo PREGUNTA
q13:

ansA = "Higado" 
ansB = "Pancreas" 
ansC = "Cerebro" 
ansD = "Oido"
quest1= "¿Que organo"
quest2= "segrega la"
quest3= "insulina?"
quest4= ""
true= "B"

GoTo PREGUNTA
q14:

ansA = "Utah" 
ansB = "Alaska" 
ansC = "Texas" 
ansD = "California"
quest1= "¿Cuál es el"
quest2= "estado más"
quest3= "extenso de los"
quest4= "Estados Unidos?"
true= "B"

GoTo PREGUNTA
q15:

ansA = "Celula" 
ansB = "Pulmon" 
ansC = "Molecula" 
ansD = "Corazon"
quest1= "¿Cual es la"
quest2= "unidad basica de"
quest3= "los seres vivos?"
quest4= ""
true= "A"

GoTo PREGUNTA
q16:

ansA = "Arterias" 
ansB = "Capilares" 
ansC = "Venas" 
ansD = "Neuronas"
quest1= "¿Cuales son los"
quest2= "vasos sanguineos"
quest3= "de entrada al"
quest4= "corazon?"
true= "A"

GoTo PREGUNTA
q17:

ansA = "Arquimedes" 
ansB = "Tales" 
ansC = "del triangulo" 
ansD = "Pitagoras"
quest1= "¿Que teorema se"
quest2= "aplica al"
quest3= "triangulo"
quest4= "rectangulo?"
true= "D"

GoTo PREGUNTA
q18:

ansA = "360º" 
ansB = "90º" 
ansC = "45º" 
ansD = "180º"
quest1= "¿Cuanto mide un"
quest2= "angulo recto?"
quest3= ""
quest4= ""
true= "B"

GoTo PREGUNTA
q19:

ansA = "Tajo" 
ansB = "Ebro" 
ansC = "Guadalquivir" 
ansD = "Segura"
quest1= "¿Cual es el rio"
quest2= "mas largo de la"
quest3= "peninsula
quest4= "iberica?"
true= "A"

GoTo PREGUNTA
q20:

ansA = "Los beatles" 
ansB = "Queen" 
ansC = "Rolling Stones" 
ansD = "The who"
quest1= "¿Que grupo"
quest2= "cantaba We are "
quest3= "the champion?
quest4= ""
true= "B"

GoTo PREGUNTA
q21:

ansA = "Lo imposible" 
ansB = "Los vengadores" 
ansC = "TED" 
ansD = "Amanecer"
quest1= "¿Cual fue la"
quest2= "pelicula mas
quest3= "vista de 2012?"
quest4= ""
true= "D"

GoTo PREGUNTA
q22:

ansA = "B·h" 
ansB = "L2" 
ansC = "P·ap" 
ansD = "L2·ap"
quest1= "¿Cual es el area"
quest2= "de un cuadrado?"
quest3= ""
quest4= ""
true= "B"

GoTo PREGUNTA
q23:

ansA = "Bill gates" 
ansB = "Rutherford" 
ansC = "Steve Jobs" 
ansD = "Edison"
quest1= "¿Quien fundo"
quest2= "Apple?"
quest3= ""
quest4= ""
true= "C"

GoTo PREGUNTA
q24:

ansA = "Jose" 
ansB = "Pedro" 
ansC = "Mariano" 
ansD = "Jaimito"
quest1= "¿Como se llama"
quest2= "el presidente"
quest3= "del gobierno?"
quest4= ""
true= "C"

GoTo PREGUNTA
