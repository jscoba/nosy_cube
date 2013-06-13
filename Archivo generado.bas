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
    	Select number


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
???????????????????????????????????????????????????????
-------------------------------------------------------
???????????????????????????????????????????????????????
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

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
    Print $FE,$90, "| (_) | " <|_|"
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
