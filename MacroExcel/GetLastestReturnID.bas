Attribute VB_Name = "GetReturnID"
Option Explicit
Sub Get_ReturnID()

    Dim Conn As Object
    Dim Cmd As Object
    Dim Rs As Object

    Dim ws As Worksheet
    Dim LastRow As Long
    Dim i As Long

    Set ws = ActiveSheet

    Set Conn = CreateObject("ADODB.Connection")

    Conn.Open "Provider=SQLOLEDB;" & _
              "Data Source=192.168.71.7;" & _
              "Initial Catalog=LYS_ERP;" & _
              "User ID=tyh;" & _
              "Password=tyh;"

    LastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row

    For i = 2 To LastRow

        'Chi xu ly FT-YS
        If Trim(ws.Cells(i, "A").Value) <> "FT-YS" Then
            GoTo NextRow
        End If

        Set Cmd = CreateObject("ADODB.Command")

        With Cmd
            .ActiveConnection = Conn

            'adCmdText = 1
            .CommandType = 1

            .CommandText = _
                "SELECT TOP 1 return_id " & _
                "FROM po_daily " & _
                "WHERE khpo=? " & _
                "AND style_no=? " & _
                "AND color_code=? " & _
                "ORDER BY UserDate DESC"

            'adVarChar = 200
            'adParamInput = 1
            .Parameters.Append .CreateParameter(, 200, 1, 50, Trim(ws.Cells(i, "C").Value))
            .Parameters.Append .CreateParameter(, 200, 1, 50, Trim(ws.Cells(i, "D").Value))
            .Parameters.Append .CreateParameter(, 200, 1, 50, Trim(ws.Cells(i, "E").Value))
        End With

        Set Rs = Cmd.Execute

        If Not Rs.EOF Then
            If Not IsNull(Rs.Fields("return_id").Value) Then
                ws.Cells(i, "Q").Value = Rs.Fields("return_id").Value
            End If
        End If

        Rs.Close
        Set Rs = Nothing

        Set Cmd = Nothing

NextRow:
    Next i

    Conn.Close
    Set Conn = Nothing

    MsgBox "OK!!!!!!!!!!!", vbInformation

End Sub

