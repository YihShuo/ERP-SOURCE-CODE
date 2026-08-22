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

        KHPO = Trim(ws.Cells(i, "A").Value)
        ARTICLE = Trim(ws.Cells(i, "B").Value)

        ' Neu A va B co du lieu thi moi truy van
        If KHPO <> "" And ARTICLE <> "" Then

            SQL = "SELECT CAST(MAX(EXEDATE) AS date) AS EXEDATE " & _
                  "FROM YWCP " & _
                  "WHERE DDBH IN (" & _
                  "SELECT DDBH FROM DDZL " & _
                  "WHERE KHPO = '" & Replace(KHPO, "'", "''") & "' " & _
                  "AND ARTICLE = '" & Replace(ARTICLE, "'", "''") & "' " & _
                  "AND DDZT = 'Y')"

            Set rs = CreateObject("ADODB.Recordset")

            rs.Open SQL, conn, 0, 1

            If Not rs.EOF Then
                If IsNull(rs.Fields("EXEDATE").Value) Then
                    ws.Cells(i, "C").Value = ""
                Else
                    ws.Cells(i, "C").Value = rs.Fields("EXEDATE").Value
                    ws.Cells(i, "C").NumberFormat = "yyyy-mm-dd"
                End If
            Else
                ws.Cells(i, "C").Value = ""
            End If

            rs.Close
            Set rs = Nothing

        Else
            ws.Cells(i, "C").Value = ""
        End If

    Next i

    conn.Close
    Set conn = Nothing

    MsgBox "Da xu ly xong!", vbInformation

End Sub

