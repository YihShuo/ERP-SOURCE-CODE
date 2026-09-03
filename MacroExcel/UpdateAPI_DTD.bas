Attribute VB_Name = "UpdateAPI_DTD"
Sub UpdatePO_DTD()

    Dim ws As Worksheet
    Dim LastRow As Long, i As Long
    Dim KHPO As String, ApiDate As String, Json As String
    Dim Http As Object

    Set ws = ActiveSheet

    ws.Cells(1, "C").Value = "JSON"
    ws.Cells(1, "D").Value = "Status"
    ws.Cells(1, "E").Value = "ResponseText"

    LastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    If LastRow < 2 Then Exit Sub

    ' Tat cap nhat man hinh de toi uu toc do
    Application.ScreenUpdating = False

    ' Khoi tao Http Object 1 lan duy nhat ngoai vong lap
    Set Http = CreateObject("WinHttp.WinHttpRequest.5.1")
    
    ' Dat Timeout hop ly (ms): Resolve, Connect, Send, Receive
    Http.SetTimeouts 60000, 60000, 60000, 60000

    For i = 2 To LastRow

        KHPO = Trim(ws.Cells(i, "A").Value)
        ApiDate = Format(ws.Cells(i, "B").Value, "yyyy-mm-dd")

        ' Tao chuoi JSON request
        Json = "{""date"":""" & ApiDate & """," & _
               """databaseType"":""A""," & _
               """poList"":[""" & KHPO & """]}"

        ws.Cells(i, "C").Value = Json

        On Error GoTo ErrHandler

        ' Mo ket noi va gui request
        Http.Open "GET", "http://localhost:8081/api/v1/deckers/RePoList", False
        Http.SetRequestHeader "Content-Type", "application/json"
        Http.Send Json

        ' Ghi ket qua vao bang tinh
        ws.Cells(i, "D").Value = Http.Status
        ws.Cells(i, "E").Value = Http.ResponseText

ContinueLoop:
        On Error GoTo 0

        ' Cap nhat tien do len thanh trang thai
        Application.StatusBar = _
            "Dang xu ly " & i - 1 & "/" & LastRow - 1 & _
            " (" & Format((i - 1) / (LastRow - 1), "0.0%") & ") PO: " & KHPO

        DoEvents

    Next i

    ' Giai phong tai nguyen SAU KHI hoan thanh toan bo vong lap
    Set Http = Nothing
    Application.StatusBar = False
    Application.ScreenUpdating = True

    MsgBox "Hoan thanh!", vbInformation, "Thong bao"

    Exit Sub

ErrHandler:

    ' Bat loi va ghi thong bao loi vao Excel
    ws.Cells(i, "D").Value = "ERROR"
    ws.Cells(i, "E").Value = Err.Description

    Resume ContinueLoop

End Sub
