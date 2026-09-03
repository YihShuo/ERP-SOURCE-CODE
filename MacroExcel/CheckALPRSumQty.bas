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
    ' Xac dinh dong cuoi
    '==========================================================
    lastRow = ws.Cells(ws.Rows.Count, "G").End(xlUp).Row

    If lastRow < 2 Then
        MsgBox "Khong co data xu ly", vbExclamation
        Exit Sub
    End If

    totalRows = lastRow - 1

    '==========================================================
    ' Luu trang thai Excel hien tai
    '==========================================================
    oldScreenUpdating = Application.ScreenUpdating
    oldEnableEvents = Application.EnableEvents
    oldCalc = Application.Calculation
    oldStatusBar = Application.StatusBar

    '==========================================================
    ' Tat nhung thu khong can thiet de tang toc
    '==========================================================
    Application.ScreenUpdating = False
    Application.EnableEvents = False
    Application.Calculation = xlCalculationManual
    Application.StatusBar = "Dang ket noi SQL Server..."

    '==========================================================
    ' Ket noi SQL
    '==========================================================
    Set conn = CreateObject("ADODB.Connection")

    conn.ConnectionTimeout = 0
    conn.CommandTimeout = 0

    conn.ConnectionString = _
        "Provider=SQLOLEDB;" & _
        "Data Source=192.168.71.7;" & _
        "Initial Catalog=LYS_ERP;" & _
        "User ID=tyxuan;" & _
        "Password=jack;"

    conn.Open

    '==========================================================
    ' Xu ly tung dong
    '==========================================================
    For i = 2 To lastRow

        KHPO = Trim(CStr(ws.Cells(i, "G").Value))

        ARTICLE = Trim(CStr(ws.Cells(i, "H").Value)) & "-" & _
                  Trim(CStr(ws.Cells(i, "I").Value))

        If KHPO <> "" Then

            sql = "EXEC sp_ALPRcheck_SumQty '" & _
                  Replace(KHPO, "'", "''") & "', '" & _
                  Replace(ARTICLE, "'", "''") & "'"

            Set rs = CreateObject("ADODB.Recordset")

            rs.Open sql, conn, 0, 1

            If Not rs.EOF Then
                If IsNull(rs.Fields(0).Value) Then
                    ws.Cells(i, "S").Value = ""
                Else
                    ws.Cells(i, "S").Value = rs.Fields(0).Value
                End If
            Else
                ws.Cells(i, "S").Value = ""
            End If

            rs.Close
            Set rs = Nothing

        Else
            ws.Cells(i, "M").Value = ""
        End If

        '======================================================
        ' Cap nhat tien trinh
        '======================================================
        processedRows = i - 1

        If processedRows Mod 10 = 0 Or i = lastRow Then

            Application.StatusBar = _
                "Dang xu ly: " & processedRows & "/" & totalRows & _
                " (" & Format(processedRows / totalRows, "0.0%") & ")" & _
                " | Dong hien tai: " & i

            DoEvents

        End If

    Next i

    '==========================================================
    ' Dong ket noi
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
    ' Khoi phuc Excel
    '==========================================================
    Application.StatusBar = False
    Application.ScreenUpdating = oldScreenUpdating
    Application.EnableEvents = oldEnableEvents
    Application.Calculation = oldCalc

    MsgBox "OK - Da xu ly " & totalRows & " dong.", vbInformation

    Exit Sub


'==============================================================
' Xu ly loi
'==============================================================
ErrHandler:

    Dim errMsg As String

    errMsg = "Loi tai dong " & i & vbCrLf & vbCrLf & _
             "KHPO: " & KHPO & vbCrLf & _
             "ARTICLE: " & ARTICLE & vbCrLf & vbCrLf & _
             "Ma loi: " & Err.Number & vbCrLf & _
             "Noi dung: " & Err.Description

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

