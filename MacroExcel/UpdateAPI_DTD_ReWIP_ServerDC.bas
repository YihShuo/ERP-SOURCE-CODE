Sub Update_ReWIP()

    Dim ws As Worksheet
    Dim LastRow As Long, i As Long
    Dim ApiDate As String
    Dim Http As Object

    Set ws = ActiveSheet

    LastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    If LastRow < 2 Then Exit Sub

    Application.ScreenUpdating = False

    Set Http = CreateObject("WinHttp.WinHttpRequest.5.1")

    ' Timeout vo han
    Http.SetTimeouts 0, 0, 0, 0

    On Error GoTo ErrHandler

    For i = 2 To LastRow

        If Trim(CStr(ws.Cells(i, "A").Value)) = "" Then GoTo ContinueLoop

        ApiDate = Trim(Format(ws.Cells(i, "A").Value, "yyyy-mm-dd"))

        Http.Open "POST", _
            "http://192.168.71.18:8080/api/v1/deckers/ReWIP?date=" & _
            ApiDate & "&db=A", False

        Http.SetRequestHeader "Content-Type", "application/json"
        Http.Send

        ' Ghi ket qua API
        ws.Cells(i, "B").Value = Http.ResponseText

ContinueLoop:

        Application.StatusBar = _
            "Dang xu ly " & i - 1 & "/" & LastRow - 1 & _
            " (" & Format((i - 1) / (LastRow - 1), "0.0%") & ")"

        DoEvents

    Next i

CleanExit:

    Set Http = Nothing
    Application.StatusBar = False
    Application.ScreenUpdating = True

    MsgBox "Hoan thanh!", vbInformation, "Thong bao"
    Exit Sub

ErrHandler:

    ws.Cells(i, "B").Value = "ERROR: " & Err.Description
    Err.Clear
    Resume ContinueLoop

End Sub