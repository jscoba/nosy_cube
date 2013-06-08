'*****************************************
'* Nosy Cube - Javier Sáez de la Coba    *
'*                                       *
'* I.E.S. Bembézar   2013                *
'*                                       *
'*****************************************

DelayMS 100

Declare LCD_Lines 4
Inicio:

    Print At 1,2, "Nosy Cube"
    Dim pin As Word           'pin de marcador
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
    Dim temp As String * 4     'pin de respuesta
    Dim number As Word         'numero de pregunta a cargar despues del aleatorio
    Dim ans As String * 3
    Symbol maxquest = 245
    ans = "ans"

RAMDOM:
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
    Print At 1,3, "| (_) | ' <|_|"
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

q1:
                                                
ansA = "Hoña como estás?"                      
ansB = "HASTA LUEGO LUCA"                    
ansC = "MEH! MEH! MEH!"                       
ansD = "Javier Sáez"
quest1= "¿Cómo se llama?"
true= "D"

GoTo PREGUNTA
                          



Antirebote:
    If pin = 0 Then
        DelayMS 10
        GoTo Antirebote
    EndIf

