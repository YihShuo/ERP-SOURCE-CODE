Attribute VB_Name = "Module2"
Sub Get_WIP_ReturnID()

    Dim ws As Worksheet
    Dim Conn As Object
    Dim Cmd As Object
    Dim Rs As Object
    Dim LastRow As Long
    Dim i As Long
    Dim Sql As String
    Dim StartTime As String

    On Error GoTo ErrHandler

    Set ws = ActiveSheet

    LastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    If LastRow < 2 Then Exit Sub

    Application.ScreenUpdating = False
    Application.EnableEvents = False
    Application.StatusBar = "Dang truy van returnId..."

    ws.Cells(1, "R").Value = "returnId"

    ' Mo connection mot lan duy nhat
    Set Conn = CreateObject("ADODB.Connection")

    Conn.ConnectionTimeout = 30
    Conn.CommandTimeout = 60

    Conn.Open "Provider=SQLOLEDB;" & _
              "Data Source=192.168.71.7;" & _
              "Initial Catalog=LYS_ERP;" & _
              "User ID=tyh;" & _
              "Password=tyh;"

    ' Prepare SQL mot lan duy nhat
    Set Cmd = CreateObject("ADODB.Command")

    With Cmd
        Set .ActiveConnection = Conn
        .CommandType = 1  ' adCmdText
        .CommandTimeout = 60

        Sql = "SELECT TOP 1 returnId " & _
              "FROM (select * from wip_hourly union all select * from wip_hourly_his) wip_hourly_all " & _
              "WHERE LEFT(startTime, 10) = ? " & _
              "AND po = ? " & _
              "AND styleNumber = ? " & _
              "AND colorCode = ? " & _
              "AND CAST(sizeNumber AS money) = CAST(? AS money) " & _
              "AND stageCode = ? " & _
              "AND productionLineNumber = ?"

        .CommandText = Sql

        ' Khai bao parameters mot lan
        .Parameters.Append .CreateParameter("@p1", 200, 1, 50)
        .Parameters.Append .CreateParameter("@p2", 200, 1, 50)
        .Parameters.Append .CreateParameter("@p3", 200, 1, 50)
        .Parameters.Append .CreateParameter("@p4", 200, 1, 50)
        .Parameters.Append .CreateParameter("@p5", 200, 1, 50)
        .Parameters.Append .CreateParameter("@p6", 200, 1, 50)
        .Parameters.Append .CreateParameter("@p7", 200, 1, 50)
    End With

    ' Truy van tung dong, tai su dung Cmd va parameters
    For i = 2 To LastRow

        StartTime = Trim(CStr(ws.Cells(i, "A").Text))

        If IsDate(ws.Cells(i, "A").Value) Then
            StartTime = Format(CDate(ws.Cells(i, "A").Value), "yyyy-mm-dd")
        End If

        Cmd.Parameters(0).Value = StartTime
        Cmd.Parameters(1).Value = Trim(CStr(ws.Cells(i, "D").Value))
        Cmd.Parameters(2).Value = Trim(CStr(ws.Cells(i, "F").Value))
        Cmd.Parameters(3).Value = Trim(CStr(ws.Cells(i, "H").Value))
        Cmd.Parameters(4).Value = Trim(CStr(ws.Cells(i, "K").Value))
        Cmd.Parameters(5).Value = Trim(CStr(ws.Cells(i, "L").Value))
        Cmd.Parameters(6).Value = Trim(CStr(ws.Cells(i, "N").Value))

        ws.Cells(i, "R").ClearContents

        Set Rs = Cmd.Execute

        If Not Rs.EOF Then
            If Not IsNull(Rs.Fields("returnId").Value) Then
                ws.Cells(i, "R").Value = Rs.Fields("returnId").Value
            End If
        End If

        Rs.Close
        Set Rs = Nothing

        If i Mod 100 = 0 Then
            Application.StatusBar = "Dang xu ly: " & i & "/" & LastRow
            DoEvents
        End If

    Next i

CleanExit:

    On Error Resume Next

    If Not Rs Is Nothing Then
        If Rs.State <> 0 Then Rs.Close
    End If

    Set Rs = Nothing
    Set Cmd = Nothing

    If Not Conn Is Nothing Then
        If Conn.State <> 0 Then Conn.Close
    End If

    Set Conn = Nothing

    Application.ScreenUpdating = True
    Application.EnableEvents = True
    Application.StatusBar = False

    Exit Sub

ErrHandler:

    MsgBox "Loi tai dong " & i & ": " & Err.Description, vbCritical
    Resume CleanExit

End Sub

