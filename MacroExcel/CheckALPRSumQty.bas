Attribute VB_Name = "CheckALPRSumQty1"
Sub CheckALPRSumQty()

    Dim ws As Worksheet
    Dim conn As Object
    Dim rs As Object

    Dim lastRow As Long
    Dim totalRows As Long
    Dim processedRows As Long
    Dim i As Long

    Dim sql As String
    Dim KHPO As String
    Dim ARTICLE As String

    Dim oldCalc As XlCalculation
    Dim oldScreenUpdating As Boolean
    Dim oldEnableEvents As Boolean
    Dim oldStatusBar As Variant

    On Error GoTo ErrHandler

    Set ws = ActiveSheet

    '==========================================================
    ' Xác d?nh dòng cu?i
    '==========================================================
    lastRow = ws.Cells(ws.Rows.Count, "C").End(xlUp).Row

    If lastRow < 2 Then
        MsgBox "Không có d? li?u d? x? lý.", vbExclamation
        Exit Sub
    End If

    totalRows = lastRow - 1

    '==========================================================
    ' Luu tr?ng thái Excel hi?n t?i
    '==========================================================
    oldScreenUpdating = Application.ScreenUpdating
    oldEnableEvents = Application.EnableEvents
    oldCalc = Application.Calculation
    oldStatusBar = Application.StatusBar

    '==========================================================
    ' T?t các th? không c?n thi?t d? tang t?c
    '==========================================================
    Application.ScreenUpdating = False
    Application.EnableEvents = False
    Application.Calculation = xlCalculationManual
    Application.StatusBar = "Ðang ket noi SQL Server..."

    '==========================================================
    ' K?t n?i SQL Server
    '==========================================================
    Set conn = CreateObject("ADODB.Connection")

    conn.ConnectionTimeout = 10
    conn.CommandTimeout = 60

    conn.ConnectionString = _
        "Provider=SQLOLEDB;" & _
        "Data Source=192.168.71.7;" & _
        "Initial Catalog=LYS_ERP;" & _
        "User ID=tyxuan;" & _
        "Password=jack;"

    conn.Open

    '==========================================================
    ' X? lý t?ng dòng
    '==========================================================
    For i = 2 To lastRow

        KHPO = Trim(CStr(ws.Cells(i, "C").Value))

        ARTICLE = Trim(CStr(ws.Cells(i, "D").Value)) & "-" & _
                  Trim(CStr(ws.Cells(i, "E").Value))

        If KHPO <> "" Then

            sql = "EXEC sp_ALPRcheck_SumQty '" & _
                  Replace(KHPO, "'", "''") & "', '" & _
                  Replace(ARTICLE, "'", "''") & "'"

            Set rs = CreateObject("ADODB.Recordset")

            rs.Open sql, conn, 0, 1

            If Not rs.EOF Then
                If IsNull(rs.Fields(0).Value) Then
                    ws.Cells(i, "M").Value = ""
                Else
                    ws.Cells(i, "M").Value = rs.Fields(0).Value
                End If
            Else
                ws.Cells(i, "M").Value = ""
            End If

            rs.Close
            Set rs = Nothing

        Else
            ws.Cells(i, "M").Value = ""
        End If

        '======================================================
        ' C?p nh?t ti?n trình
        '======================================================
        processedRows = i - 1

        If processedRows Mod 10 = 0 Or i = lastRow Then

            Application.StatusBar = _
                "Ðang xu ly: " & processedRows & "/" & totalRows & _
                " (" & Format(processedRows / totalRows, "0.0%") & ")" & _
                " | Dong hien tai: " & i

            DoEvents

        End If

    Next i

    '==========================================================
    ' Ðóng k?t n?i
    '==========================================================
    If Not rs Is Nothing Then
        If rs.State <> 0 Then rs.Close
        Set rs = Nothing
    End If

    If Not conn Is Nothing Then
        If conn.State <> 0 Then conn.Close
        Set conn = Nothing
    End If

    '==========================================================
    ' Khôi ph?c Excel
    '==========================================================
    Application.StatusBar = False
    Application.ScreenUpdating = oldScreenUpdating
    Application.EnableEvents = oldEnableEvents
    Application.Calculation = oldCalc

    MsgBox "OK - Da xu ly" & totalRows & " dong.", vbInformation

    Exit Sub


'==============================================================
' X? LÝ L?I
'==============================================================
ErrHandler:

    Dim errMsg As String

    errMsg = "L?i t?i dòng " & i & vbCrLf & vbCrLf & _
             "KHPO: " & KHPO & vbCrLf & _
             "ARTICLE: " & ARTICLE & vbCrLf & vbCrLf & _
             "Mã l?i: " & Err.Number & vbCrLf & _
             "N?i dung: " & Err.Description

    On Error Resume Next

    If Not rs Is Nothing Then
        If rs.State <> 0 Then rs.Close
        Set rs = Nothing
    End If

    If Not conn Is Nothing Then
        If conn.State <> 0 Then conn.Close
        Set conn = Nothing
    End If

    Application.StatusBar = False
    Application.ScreenUpdating = oldScreenUpdating
    Application.EnableEvents = oldEnableEvents
    Application.Calculation = oldCalc

    On Error GoTo 0

    MsgBox errMsg, vbCritical, "CheckALPRSumQty"

End Sub

