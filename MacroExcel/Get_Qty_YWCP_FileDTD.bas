Attribute VB_Name = "Module1"
Sub GetQty()

    Dim ws As Worksheet
    Dim conn As Object
    Dim rs As Object

    Dim lastRow As Long
    Dim i As Long

    Dim KHPO As String
    Dim ARTICLE As String
    Dim sql As String

    Set ws = ActiveSheet

    ' Tim dong cuoi theo cot A
    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row

    ' Ket noi SQL Server
    Set conn = CreateObject("ADODB.Connection")

    conn.ConnectionTimeout = 30
    conn.CommandTimeout = 0

    conn.Open "Provider=SQLOLEDB;" & _
              "Data Source=192.168.71.7;" & _
              "Initial Catalog=LYS_ERP;" & _
              "User ID=tyh;" & _
              "Password=tyh;"

    Application.ScreenUpdating = False
    Application.EnableEvents = False
    Application.StatusBar = False

    For i = 2 To lastRow

        KHPO = Trim(CStr(ws.Cells(i, "A").Value))
        ARTICLE = Trim(CStr(ws.Cells(i, "B").Value)) & "-" & _
                  Trim(CStr(ws.Cells(i, "C").Value))

        If KHPO <> "" Then

            ' Escape dau nhay don neu co
            KHPO = Replace(KHPO, "'", "''")
            ARTICLE = Replace(ARTICLE, "'", "''")

            sql = ""
            sql = sql & "SELECT ISNULL(SUM(Qty), 0) AS Qty "
            sql = sql & "FROM ( "
            sql = sql & "    SELECT * FROM YWCP "
            sql = sql & "    UNION ALL "
            sql = sql & "    SELECT * FROM YWCP_Split WHERE SB <> 5 "
            sql = sql & ") Y "
            sql = sql & "WHERE DDBH IN ( "
            sql = sql & "    SELECT DDBH "
            sql = sql & "    FROM DDZL "
            sql = sql & "    WHERE KHPO = '" & KHPO & "' "
            sql = sql & "      AND ARTICLE = '" & ARTICLE & "' "
            sql = sql & "      AND SB IS NOT NULL "
            sql = sql & ")"

            Set rs = conn.Execute(sql)

            ' Chi co 1 dong 1 cot
            If Not rs.EOF Then
                ws.Cells(i, "K").Value = rs.Fields("Qty").Value
            Else
                ws.Cells(i, "K").Value = 0
            End If

            rs.Close
            Set rs = Nothing

        Else

            ws.Cells(i, "K").Value = 0

        End If

        Application.StatusBar = "Processing: " & i - 1 & "/" & lastRow - 1

    Next i

    Application.StatusBar = False
    Application.ScreenUpdating = True
    Application.EnableEvents = True

    conn.Close
    Set conn = Nothing

    MsgBox "Done!", vbInformation

End Sub
