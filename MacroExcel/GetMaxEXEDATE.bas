Attribute VB_Name = "GetMaxExeDate1"
Sub GetMaxExeDate()

    Dim ws As Worksheet
    Dim conn As Object
    Dim rs As Object
    Dim lastRow As Long
    Dim i As Long
    Dim KHPO As String
    Dim ARTICLE As String
    Dim SQL As String

    Set ws = ActiveSheet ' sua ten sheet neu can

    ' Tim dong cuoi cua cot A
    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row

    ' Tao ket noi SQL Server
    Set conn = CreateObject("ADODB.Connection")

    conn.ConnectionString = _
        "Provider=SQLOLEDB;" & _
        "Data Source=192.168.71.7;" & _
        "Initial Catalog=LYS_ERP;" & _
        "User ID=tyh;" & _
        "Password=tyh;"

    conn.Open

    ' Duyet tung dong
    For i = 2 To lastRow

        KHPO = Trim(ws.Cells(i, "G").Value)
        ARTICLE = Trim(ws.Cells(i, "J").Value)

        ' Neu A va B co du lieu thi moi truy van
        If KHPO <> "" And ARTICLE <> "" Then

        SQL = "SET NOCOUNT ON; " & _
              "IF OBJECT_ID('tempdb..#TempDDBH') IS NOT NULL DROP TABLE #TempDDBH; " & _
              "SELECT DISTINCT DDBH " & _
              "INTO #TempDDBH " & _
              "FROM DDZL " & _
              "WHERE KHPO = '" & KHPO & "' " & _
              "AND ARTICLE = '" & ARTICLE & "' " & _
              "AND DDZT = 'Y'; " & _
              "CREATE CLUSTERED INDEX CX_TempDDBH ON #TempDDBH(DDBH); " & _
              "SELECT CAST(MAX(MaxDate) AS DATE) AS EXEDATE " & _
              "FROM (" & _
              "    SELECT MAX(Y.EXEDATE) AS MaxDate " & _
              "    FROM YWCP Y " & _
              "    INNER JOIN #TempDDBH T ON Y.DDBH = T.DDBH " & _
              "    UNION ALL " & _
              "    SELECT MAX(Y.EXEDATE) AS MaxDate " & _
              "    FROM YWCPOld Y " & _
              "    INNER JOIN #TempDDBH T ON Y.DDBH = T.DDBH " & _
              ") AS Result; " & _
              "DROP TABLE #TempDDBH;"

            Set rs = CreateObject("ADODB.Recordset")

            rs.Open SQL, conn, 0, 1

            If Not rs.EOF Then
                ws.Cells(i, "Y").Value = rs.Fields("EXEDATE").Value
                ws.Cells(i, "Y").NumberFormat = "yyyy-mm-dd"
            Else
                'ws.Cells(i, "Y").Value = ""
            End If

            rs.Close
            Set rs = Nothing

        Else
            'ws.Cells(i, "Y").Value = ""
        End If

    Next i

    conn.Close
    Set conn = Nothing

    MsgBox "Da xu ly xong!", vbInformation

End Sub

