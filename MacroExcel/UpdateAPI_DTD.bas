Attribute VB_Name = "UpdateAPI_DTD"
Option Explicit

Sub UpdatePO_DTD()

    Dim ws As Worksheet
    Dim LastRow As Long
    Dim i As Long

    Dim KHPO As String
    Dim ApiDate As String
    Dim Json As String

    Dim Http As Object

    Set ws = ActiveSheet

    LastRow = ws.Cells(ws.Rows.Count, 1).End(xlUp).Row

    For i = 2 To LastRow

        KHPO = Trim(ws.Cells(i, 1).Value)
		ApiDate = Trim(Format(ws.Cells(i, 2).Value, "yyyy-mm-dd"))

        Json = "{""date"":""" & ApiDate & """," & _
               """databaseType"":""A""," & _
               """poList"":[""" & KHPO & """]}"

        ws.Cells(i, 3).Value = Json

        On Error GoTo ErrHandler

        Set Http = CreateObject("WinHttp.WinHttpRequest.5.1")

        Http.Open "GET", "http://localhost:8081/api/v1/deckers/RePoList", False
        Http.SetRequestHeader "Content-Type", "application/json"
        Http.Send Json

        ws.Cells(i, 4).Value = Http.Status
        ws.Cells(i, 5).Value = Http.ResponseText

        On Error GoTo 0

ContinueLoop:
        Set Http = Nothing

    Next i

    MsgBox "OK!"

    Exit Sub

ErrHandler:

    ws.Cells(i, 4).Value = "ERROR"
    ws.Cells(i, 5).Value = Err.Description

    Resume ContinueLoop

End Sub
