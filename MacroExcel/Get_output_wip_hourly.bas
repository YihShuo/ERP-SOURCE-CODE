Attribute VB_Name = "GetOutputWipHourly"
Sub Get_WIP8()

    Dim conn As Object
    Dim cmd As Object
    Dim rs As Object
    Dim ws As Worksheet

    Dim lastRow As Long
    Dim r As Long

    Dim factoryWO As String
    Dim productionLine As String
    Dim sizeNo As String
    Dim startTime As String
    Dim endTime As String
    Dim po As String
    Dim stylenumber As String
    Dim colorcode As String

    Dim SQL As String
    Dim connStr As String

    Dim oldCalc As XlCalculation
    Dim oldScreen As Boolean
    Dim oldEvents As Boolean

    On Error GoTo ErrHandler

    Set ws = ActiveSheet

    oldCalc = Application.Calculation
    oldScreen = Application.ScreenUpdating
    oldEvents = Application.EnableEvents

    Application.ScreenUpdating = False
    Application.EnableEvents = False
    Application.Calculation = xlCalculationManual
    Application.StatusBar = "Dang kiem tra WIP8..."

    ' Tim dong cuoi
    lastRow = Application.Max( _
        ws.Cells(ws.Rows.Count, "H").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "I").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "J").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "L").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "M").End(xlUp).Row)

    ' Xoa ket qua cu
    ws.Range("Q2:Q" & ws.Rows.Count).ClearContents

    ' Copy dinh dang cot P sang cot Q truoc
    ws.Columns("P").Copy
    ws.Columns("Q").PasteSpecial Paste:=xlPasteFormats
    ws.Columns("Q").ColumnWidth = ws.Columns("P").ColumnWidth
    Application.CutCopyMode = False

    ' Sau khi copy xong moi ghi tieu de
    ws.Range("Q1").Value = "WIP8_DB"

    ' SQL Server connection
    connStr = "Provider=SQLOLEDB;" & _
              "Data Source=192.168.71.7;" & _
              "Initial Catalog=LYS_ERP;" & _
              "User ID=tyh;" & _
              "Password=tyh;"

    Set conn = CreateObject("ADODB.Connection")
    conn.CommandTimeout = 0
    conn.Open connStr

    For r = 2 To lastRow

        ' Lay va Trim du lieu Excel
        factoryWO = Trim(CStr(ws.Cells(r, "H").Value))
        productionLine = Trim(CStr(ws.Cells(r, "I").Value))
        sizeNo = Trim(CStr(ws.Cells(r, "J").Value))
        startTime = Trim(CStr(ws.Cells(r, "L").Value))
        endTime = Trim(CStr(ws.Cells(r, "M").Value))
        po = Trim(CStr(ws.Cells(r, "D").Value))
        stylenumber = Trim(CStr(ws.Cells(r, "E").Value))
        colorcode = Trim(CStr(ws.Cells(r, "F").Value))

        ' Cat den phut
        startTime = NormalizeTimeMinute(startTime)
        endTime = NormalizeTimeMinute(endTime)

        If factoryWO <> "" And _
           productionLine <> "" And _
           sizeNo <> "" And _
           startTime <> "" And _
           endTime <> "" Then

            Set cmd = CreateObject("ADODB.Command")

            Set cmd.ActiveConnection = conn
            cmd.CommandType = 1
            cmd.CommandTimeout = 0

            ' startTime / endTime trong DB la VARCHAR(50)
            ' Chi lay 16 ky tu dau: yyyy-MM-ddTHH:mm
            SQL = "SELECT output " & _
                  "FROM wip_hourly " & _
                  "WHERE stageCode = ? " & _
                  "AND factoryWorkOrderNumber = ? " & _
                  "AND productionLineNumber = ? " & _
                  "AND sizeNumber = ? " & _
                  "AND LEFT(startTime, 16) = ? " & _
                  "AND LEFT(endTime, 16) = ? " & _
                    "AND po = ? " & _
                    "AND styleNumber = ? " & _
                    "AND colorCode = ? "

            cmd.CommandText = SQL

            ' stageCode
            cmd.Parameters.Append cmd.CreateParameter( _
                "@stageCode", 202, 1, 20, "WIP8")

            ' factoryWorkOrderNumber
            cmd.Parameters.Append cmd.CreateParameter( _
                "@factoryWO", 202, 1, 50, factoryWO)

            ' productionLineNumber
            cmd.Parameters.Append cmd.CreateParameter( _
                "@productionLine", 202, 1, 50, productionLine)

            ' sizeNumber
            cmd.Parameters.Append cmd.CreateParameter( _
                "@sizeNo", 202, 1, 50, sizeNo)

            ' startTime
            cmd.Parameters.Append cmd.CreateParameter( _
                "@startTime", 202, 1, 16, startTime)

            ' endTime
            cmd.Parameters.Append cmd.CreateParameter( _
                "@endTime", 202, 1, 16, endTime)
            ' po
            cmd.Parameters.Append cmd.CreateParameter( _
                "@po", 202, 1, 20, po)
            ' styleNumber
            cmd.Parameters.Append cmd.CreateParameter( _
                "@stylenumber", 202, 1, 20, stylenumber)
            ' colorCode
            cmd.Parameters.Append cmd.CreateParameter( _
                "@colorcode", 202, 1, 20, colorcode)

            Set rs = cmd.Execute

            ' Chi ghi ket qua vao cot Q
            If Not rs.EOF Then
                ws.Cells(r, "Q").Value = rs.Fields(0).Value
            Else
                ws.Cells(r, "Q").Value = "No Data"
            End If

            rs.Close
            Set rs = Nothing

            Set cmd = Nothing

        Else

            ws.Cells(r, "Q").Value = "Missing Data"

        End If

        If r Mod 100 = 0 Then
            Application.StatusBar = _
                "Dang xu ly " & r & "/" & lastRow
        End If

    Next r

    MsgBox "Hoan tat!", vbInformation

CleanExit:

    On Error Resume Next

    If Not rs Is Nothing Then
        If rs.State <> 0 Then rs.Close
    End If

    If Not conn Is Nothing Then
        If conn.State <> 0 Then conn.Close
    End If

    Set rs = Nothing
    Set cmd = Nothing
    Set conn = Nothing

    Application.StatusBar = False
    Application.ScreenUpdating = oldScreen
    Application.EnableEvents = oldEvents
    Application.Calculation = oldCalc

    Exit Sub

ErrHandler:

    MsgBox "Loi tai dong " & r & ":" & vbCrLf & _
           Err.Description, vbExclamation

    Resume CleanExit

End Sub


Private Function NormalizeTimeMinute(ByVal s As String) As String

    s = Trim(s)

    ' yyyy-MM-ddTHH:mm
    If Len(s) >= 16 Then
        NormalizeTimeMinute = Left(s, 16)
    Else
        NormalizeTimeMinute = ""
    End If

End Function
