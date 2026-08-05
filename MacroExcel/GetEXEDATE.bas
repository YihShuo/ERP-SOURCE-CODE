Attribute VB_Name = "GETEXEDATEYWCP"
Option Explicit

Sub GetExeDate()

    Dim Conn As ADODB.Connection
    Dim Cmd As ADODB.Command
    Dim Rs As ADODB.Recordset

    Dim ws As Worksheet
    Dim LastRow As Long
    Dim i As Long

    Dim KHPO As String
    Dim ARTICLE As String
    Dim Key As String

    Dim Dict As Object
    Set Dict = CreateObject("Scripting.Dictionary")

    Set ws = ActiveSheet
    LastRow = ws.Cells(ws.Rows.Count, "C").End(xlUp).Row

    Set Conn = New ADODB.Connection
    Conn.Open "Provider=SQLOLEDB;Data Source=192.168.71.7;Initial Catalog=LYS_ERP;User ID=tyh;Password=tyh;"

    For i = 2 To LastRow

        KHPO = Trim(ws.Cells(i, "C").Value)
        ARTICLE = Trim(ws.Cells(i, "D").Value) & "-" & Trim(ws.Cells(i, "E").Value)

        If KHPO = "" Or ARTICLE = "-" Then GoTo NextRow

        Key = KHPO & "|" & ARTICLE

        If Dict.Exists(Key) Then

            ws.Cells(i, "K").Value = Dict(Key)

        Else

            Set Cmd = New ADODB.Command

            With Cmd
                .ActiveConnection = Conn
                .CommandType = adCmdText

                .CommandText = _
                "SELECT STUFF((" & _
                "SELECT ',' + CONVERT(varchar(10), CAST(EXEDATE AS date),120) " & _
                "FROM (SELECT * FROM YWCP UNION ALL SELECT * FROM YWCPOld) YWCP " & _
                "WHERE DDBH IN (" & _
                "SELECT DDBH FROM DDZL WHERE KHPO=? AND ARTICLE=? AND DDZT='Y')" & _
                " GROUP BY CAST(EXEDATE AS date)" & _
                " ORDER BY CAST(EXEDATE AS date)" & _
                " FOR XML PATH('')),1,1,'') AS EXEDATE"

                .Parameters.Append .CreateParameter(, adVarChar, adParamInput, 50, KHPO)
                .Parameters.Append .CreateParameter(, adVarChar, adParamInput, 100, ARTICLE)
            End With

            Set Rs = Cmd.Execute

            Dim Result As String
            Result = ""

            If Not Rs.EOF Then
                If Not IsNull(Rs.Fields(0).Value) Then
                    Result = Trim(Rs.Fields(0).Value)
                End If
            End If

            Rs.Close
            Set Rs = Nothing
            Set Cmd = Nothing

            Dict.Add Key, Result
            ws.Cells(i, "K").Value = Result

        End If

NextRow:
    Next i

    Conn.Close
    Set Conn = Nothing

    MsgBox "OK!!!"

End Sub

