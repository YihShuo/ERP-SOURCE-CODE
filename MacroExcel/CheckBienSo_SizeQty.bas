Attribute VB_Name = "CheckBienSo_SizeQty"
Option Explicit

Sub ALPR_CheckBienSo()

    Dim conn As Object
    Dim rs As Object
    
    Dim wsCheck As Worksheet
    Dim wsResult As Worksheet
    
    Dim lastRow As Long
    Dim r As Long
    Dim i As Long
    
    Dim po As String
    Dim ddbh As String
    Dim sheetName As String
    Dim sql As String
    
    Dim startTime As Double
    Dim errMsg As String
    
    On Error GoTo ErrHandler
    
    startTime = Timer
    
    '==========================================================
    ' Lay sheet CheckBienSo
    '==========================================================
    Set wsCheck = ThisWorkbook.Worksheets("CheckBienSo")
    
    '==========================================================
    ' Tao ket noi SQL
    '==========================================================
    Set conn = CreateObject("ADODB.Connection")
    
    conn.ConnectionString = _
        "Provider=SQLOLEDB;" & _
        "Data Source=192.168.71.7;" & _
        "Initial Catalog=LYS_ERP;" & _
        "User ID=tyxuan;" & _
        "Password=jack;"
    
    conn.Open
    
    '==========================================================
    ' Tim dong cuoi cung cua cot A
    '==========================================================
    lastRow = wsCheck.Cells(wsCheck.Rows.Count, "A").End(xlUp).Row
    
    '==========================================================
    ' Xoa ket qua cu o cot D
    '==========================================================
    With wsCheck.Range("D2:D" & lastRow)
        .ClearContents
        .Hyperlinks.Delete
    End With
    
    '==========================================================
    ' Duyet tung dong
    '==========================================================
    For r = 2 To lastRow
        
        po = Trim(CStr(wsCheck.Cells(r, "A").Value))
        ddbh = Trim(CStr(wsCheck.Cells(r, "C").Value))
        
        '======================================================
        ' Neu A hoac C rong thi bo qua
        '======================================================
        If po <> "" And ddbh <> "" Then
            
            '==================================================
            ' Tao cau lenh EXEC
            '==================================================
            sql = "EXEC dbo.sp_ALPRcheck " & _
                  "@ddbh = '" & Replace(ddbh, "'", "''") & "', " & _
                  "@po = '" & Replace(po, "'", "''") & "'"
            
            '==================================================
            ' Chay Stored Procedure
            '==================================================
            Set rs = conn.Execute(sql)
            
            '==================================================
            ' Kiem tra co du lieu hay khong
            '==================================================
            If Not rs.EOF Then
                
                '==================================================
                ' Tao ten sheet = A_C
                '==================================================
                sheetName = MakeValidSheetName(po & "_" & ddbh)
                
                '==================================================
                ' Neu sheet da ton tai thi xoa
                '==================================================
                DeleteSheetIfExists sheetName
                
                '==================================================
                ' Tao sheet moi
                '==================================================
                Set wsResult = ThisWorkbook.Worksheets.Add( _
                    After:=ThisWorkbook.Worksheets( _
                        ThisWorkbook.Worksheets.Count))
                
                wsResult.Name = sheetName
                
                '==================================================
                ' Tao link quay lai CheckBienSo
                '==================================================
                wsResult.Hyperlinks.Add _
                    Anchor:=wsResult.Range("A1"), _
                    Address:="", _
                    SubAddress:="'CheckBienSo'!A" & r, _
                    TextToDisplay:="<< Back to CheckBienSo"
                
                '==================================================
                ' Ghi header
                '==================================================
                For i = 0 To rs.Fields.Count - 1
                    wsResult.Cells(3, i + 1).Value = rs.Fields(i).Name
                Next i
                
                '==================================================
                ' Ghi data
                '==================================================
                wsResult.Range("A4").CopyFromRecordset rs
                
                '==================================================
                ' Format sheet ket qua
                '==================================================
                With wsResult
                    .Rows(3).Font.Bold = True
                    .Rows(3).AutoFilter
                    .Columns.AutoFit
                    
                    ' Dieu chinh do rong cot
                    If .Columns("A").ColumnWidth < 18 Then
                        .Columns("A").ColumnWidth = 18
                    End If
                    
                    If .Columns("B").ColumnWidth < 15 Then
                        .Columns("B").ColumnWidth = 15
                    End If
                    
                    If .Columns("C").ColumnWidth < 20 Then
                        .Columns("C").ColumnWidth = 20
                    End If
                End With
                
                '==================================================
                ' Tao hyperlink ExistData tai cot D
                '==================================================
                wsCheck.Hyperlinks.Add _
                    Anchor:=wsCheck.Cells(r, "D"), _
                    Address:="", _
                    SubAddress:="'" & sheetName & "'!A1", _
                    TextToDisplay:="ExistData"
                
                '==================================================
                ' Format hyperlink
                '==================================================
                With wsCheck.Cells(r, "D")
                    .Font.Underline = xlUnderlineStyleSingle
                End With
                
            Else
                
                '==================================================
                ' Khong co data
                '==================================================
                wsCheck.Cells(r, "D").Value = "NoData"
                
            End If
            
            '==================================================
            ' Dong Recordset
            '==================================================
            If Not rs Is Nothing Then
                If rs.State <> 0 Then rs.Close
            End If
            
            Set rs = Nothing
            
        Else
            
            '======================================================
            ' Neu A hoac C rong
            '======================================================
            wsCheck.Cells(r, "D").Value = "NoData"
            
        End If
        
        '======================================================
        ' Cap nhat tien do
        '======================================================
        If r Mod 10 = 0 Then
            
            Application.StatusBar = _
                "Dang xu ly: " & r & "/" & lastRow
            
            DoEvents
            
        End If
        
    Next r
    
    '==========================================================
    ' Dong ket noi SQL
    '==========================================================
    If Not conn Is Nothing Then
        If conn.State <> 0 Then conn.Close
    End If
    
    Set rs = Nothing
    Set conn = Nothing
    
    Application.StatusBar = False
    
    '==========================================================
    ' Thong bao hoan thanh
    '==========================================================
    MsgBox _
        "Done!" & vbCrLf & vbCrLf & _
        "Processed: " & lastRow - 1 & " rows" & vbCrLf & _
        "Time: " & Format(Timer - startTime, "0.00") & " seconds", _
        vbInformation
    
    Exit Sub


'==============================================================
' Xu ly loi
'==============================================================
ErrHandler:

    errMsg = Err.Description
    
    Application.StatusBar = False
    
    On Error Resume Next
    
    If Not rs Is Nothing Then
        If rs.State <> 0 Then rs.Close
    End If
    
    If Not conn Is Nothing Then
        If conn.State <> 0 Then conn.Close
    End If
    
    Set rs = Nothing
    Set conn = Nothing
    
    On Error GoTo 0
    
    MsgBox _
        "Error at row " & r & vbCrLf & _
        "A = " & wsCheck.Cells(r, "A").Value & vbCrLf & _
        "C = " & wsCheck.Cells(r, "C").Value & vbCrLf & _
        "SQL = " & sql & vbCrLf & _
        "Error = " & errMsg, _
        vbCritical

End Sub


'==============================================================
' Xoa sheet neu sheet da ton tai
'==============================================================
Private Sub DeleteSheetIfExists(ByVal sheetName As String)

    Dim ws As Worksheet
    
    On Error Resume Next
    
    Set ws = ThisWorkbook.Worksheets(sheetName)
    
    On Error GoTo 0
    
    If Not ws Is Nothing Then
        
        Application.DisplayAlerts = False
        ws.Delete
        Application.DisplayAlerts = True
        
    End If

End Sub


'==============================================================
' Tao ten sheet hop le
'==============================================================
Private Function MakeValidSheetName(ByVal sheetName As String) As String

    Dim invalidChars As Variant
    Dim ch As Variant
    
    ' Cac ky tu Excel khong cho phep trong ten sheet
    invalidChars = Array("\", "/", ":", "*", "?", "[", "]")
    
    For Each ch In invalidChars
        sheetName = Replace(sheetName, ch, "_")
    Next ch
    
    ' Xoa khoang trang dau va cuoi
    sheetName = Trim(sheetName)
    
    ' Neu ten rong
    If sheetName = "" Then
        sheetName = "Result"
    End If
    
    ' Excel chi cho phep toi da 31 ky tu
    If Len(sheetName) > 31 Then
        sheetName = Left(sheetName, 31)
    End If
    
    MakeValidSheetName = sheetName

End Function

