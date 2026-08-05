Attribute VB_Name = "GetReturnID"
Option Explicit

Sub Get_ReturnID()

    Dim Conn As ADODB.Connection
    Dim Cmd As ADODB.Command
    Dim Rs As ADODB.Recordset

    Dim ws As Worksheet
    Dim LastRow As Long
    Dim i As Long

    Set ws = ActiveSheet

    Set Conn = New ADODB.Connection
    Conn.Open "Provider=SQLOLEDB;" & _
              "Data Source=192.168.71.7;" & _
              "Initial Catalog=LYS_ERP;" & _
              "User ID=tyh;" & _
              "Password=tyh;"

    LastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row

    For i = 2 To LastRow

        ws.Cells(i, "K").Value = ""

        'Chi xu ly FT-YS
        If Trim(ws.Cells(i, "A").Value) <> "FT-YS" Then
            GoTo NextRow
        End If

        Set Cmd = New ADODB.Command

        With Cmd
            .ActiveConnection = Conn
            .CommandType = adCmdText
            .CommandText = _
                "SELECT top 1 return_id " & _
                "FROM po_daily " & _
                "WHERE khpo=? AND style_no=? AND color_code=? order by UserDate desc"

            .Parameters.Append .CreateParameter(, adVarChar, adParamInput, 50, Trim(ws.Cells(i, "C").Value))
            .Parameters.Append .CreateParameter(, adVarChar, adParamInput, 50, Trim(ws.Cells(i, "D").Value))
            .Parameters.Append .CreateParameter(, adVarChar, adParamInput, 50, Trim(ws.Cells(i, "E").Value))
        End With

        Set Rs = Cmd.Execute

        If Not Rs.EOF Then
            ws.Cells(i, "K").Value = Rs.Fields("return_id").Value
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

