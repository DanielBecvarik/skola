Attribute VB_Name = "Module1"
Sub Procedura()
    MsgBox "Zdar Davidku"
End Sub

Function Funkce()
    Funkce = "Zdar Davidku from Funkce"
End Function

Sub TestFunkce()
    MsgBox Funkce()
End Sub
    
Function Secti(arg1, arg2)
    Secti = arg1 + arg2
End Function

Sub TestSecti()
    MsgBox Secti(69, 420)
End Sub

Function Zprocesuj(agr1, agr2, operator)
    If operator = "+" Then
    Zprocesuj = agr1 + arg2
    Elself operator = "-" Then
    Zprocesuj = agr1 - agr2
    Elself operator = "*"
    Zprocesuj = agr1 * agr2
    Elself operator = "/"
    Zprocesuj = agr1 / agr2
    End If
    
End Function
