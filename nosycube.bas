'*****************************************
'* Nosy Cube - Javier S�ez de la Coba    *
'*                                       *
'* I.E.S. Bemb�zar   2013                *
'*                                       *
'*****************************************

DelayMS 100

Declare LCD_Lines 4
Inicio:

    Print At 1,1, "El nuevo y novedoso"
    Print At 1,2, "Nosy Cube"
    Dim pin As Word
Main:

Dim A As String
A = "Los arboles que no pierden su hoja se llaman de hoja..."



Antirebote:
    If pin = 0 Then
        DelayMS 10
        GoTo Antirebote
    EndIf


