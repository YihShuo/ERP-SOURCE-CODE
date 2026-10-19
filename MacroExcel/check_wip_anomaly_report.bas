Attribute VB_Name = "Module1"
Sub Check_Anomaly_Report()

    Dim ws As Worksheet
    Dim arrD As Variant, arrT As Variant
    Dim arrResult() As Variant
    Dim dict As Object

    Dim lastRowD As Long, lastRowT As Long
    Dim i As Long, j As Long
    Dim k As String

    Dim vO As Variant, vW As Variant
    Dim sO As String, sW As String
    Dim calcMode As XlCalculation
    Dim errMsg As String

    Set ws = ActiveSheet
    Set dict = CreateObject("Scripting.Dictionary")
    dict.CompareMode = vbTextCompare

    calcMode = Application.Calculation

    On Error GoTo ErrHandler

    Application.ScreenUpdating = False
    Application.EnableEvents = False
    Application.Calculation = xlCalculationManual
    Application.StatusBar = "Loading data into RAM..."

    ' Tim dong cuoi nhom du lieu ben trai
    lastRowD = Application.Max( _
        ws.Cells(ws.Rows.Count, "A").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "D").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "F").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "H").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "K").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "L").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "N").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "O").End(xlUp).Row)

    ' Tim dong cuoi nhom du lieu ben phai
    lastRowT = Application.Max( _
        ws.Cells(ws.Rows.Count, "P").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "Q").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "R").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "S").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "T").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "U").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "V").End(xlUp).Row, _
        ws.Cells(ws.Rows.Count, "W").End(xlUp).Row)
        
    ws.Cells(1, "X") = "Check"
    ws.Cells(1, "Y") = "qty_wip_hourly_all"
    
    If lastRowD < 2 Then GoTo SafeExit

    ' Doc du lieu ben trai vao RAM
    arrD = ws.Range("A2:O" & lastRowD).Value2

    ' Doc du lieu ben phai vao RAM
    If lastRowT >= 2 Then
        arrT = ws.Range("P2:W" & lastRowT).Value2
    End If

    ReDim arrResult(1 To UBound(arrD, 1), 1 To 2)

    ' Tao Dictionary theo 7 dieu kien:
    ' A,D,F,H,K,L,N <-> P,Q,R,S,T,U,V
    ' W la gia tri can so sanh voi O
    Application.StatusBar = "Building dictionary..."

    If lastRowT >= 2 Then

        For j = 1 To UBound(arrT, 1)

            If Not IsError(arrT(j, 1)) _
            And Not IsError(arrT(j, 2)) _
            And Not IsError(arrT(j, 3)) _
            And Not IsError(arrT(j, 4)) _
            And Not IsError(arrT(j, 5)) _
            And Not IsError(arrT(j, 6)) _
            And Not IsError(arrT(j, 7)) _
            And Not IsError(arrT(j, 8)) Then

                If Len(NormalizeText(arrT(j, 2))) > 0 Then

                    k = MakeKey7( _
                        arrT(j, 1), _
                        arrT(j, 2), _
                        arrT(j, 3), _
                        arrT(j, 4), _
                        arrT(j, 5), _
                        arrT(j, 6), _
                        arrT(j, 7))

                    ' Chi lay dong dau tien neu trung khoa
                    If Not dict.Exists(k) Then
                        dict.Add k, NormalizeValue(arrT(j, 8))
                    End If

                End If

            End If

        Next j

    End If

    ' Tim du lieu ben trai theo 7 dieu kien
    Application.StatusBar = "Comparing data..."

    For i = 1 To UBound(arrD, 1)

        If Not IsError(arrD(i, 1)) _
        And Not IsError(arrD(i, 4)) _
        And Not IsError(arrD(i, 6)) _
        And Not IsError(arrD(i, 8)) _
        And Not IsError(arrD(i, 11)) _
        And Not IsError(arrD(i, 12)) _
        And Not IsError(arrD(i, 14)) _
        And Not IsError(arrD(i, 15)) Then

            If Len(NormalizeText(arrD(i, 4))) > 0 Then

                k = MakeKey7( _
                    arrD(i, 1), _
                    arrD(i, 4), _
                    arrD(i, 6), _
                    arrD(i, 8), _
                    arrD(i, 11), _
                    arrD(i, 12), _
                    arrD(i, 14))

                If dict.Exists(k) Then

                    vO = arrD(i, 15)
                    vW = dict(k)

                    ' Cot Y: gia tri cot W da chuan hoa
                    arrResult(i, 2) = vW

                    ' Cot X: so sanh O voi W sau khi TRIM
                    sO = NormalizeText(vO)
                    sW = NormalizeText(vW)

                    If StrComp(sO, sW, vbTextCompare) = 0 Then
                        arrResult(i, 1) = "OK"
                    Else
                        arrResult(i, 1) = "NG"
                    End If

                Else
                    arrResult(i, 1) = "Not Found"
                    arrResult(i, 2) = Empty
                End If

            End If

        End If

    Next i

    ' Ghi ket qua X:Y mot lan
    Application.StatusBar = "Writing results..."

    ws.Range("X2").Resize(UBound(arrResult, 1), 2).Value = arrResult

SafeExit:

    Application.StatusBar = False
    Application.ScreenUpdating = True
    Application.EnableEvents = True
    Application.Calculation = calcMode

    Set dict = Nothing

    If Len(errMsg) > 0 Then
        MsgBox "Error: " & errMsg, vbExclamation
    Else
        MsgBox "Check completed!", vbInformation
    End If

    Exit Sub

ErrHandler:

    errMsg = Err.Description
    Resume SafeExit

End Sub


Private Function MakeKey7( _
    ByVal v1 As Variant, _
    ByVal v2 As Variant, _
    ByVal v3 As Variant, _
    ByVal v4 As Variant, _
    ByVal v5 As Variant, _
    ByVal v6 As Variant, _
    ByVal v7 As Variant) As String

    MakeKey7 = MakeDatePart(v1) & _
               MakePart(v2) & _
               MakePart(v3) & _
               MakePart(v4) & _
               MakePart(v5) & _
               MakePart(v6) & _
               MakePart(v7)

End Function


Private Function MakePart(ByVal v As Variant) As String

    Dim s As String

    s = NormalizeText(v)

    ' Them do dai de tranh trung khoa ghep
    MakePart = Len(s) & ":" & s & "|"

End Function


Private Function MakeDatePart(ByVal v As Variant) As String

    Dim s As String

    If IsError(v) Or IsNull(v) Or IsEmpty(v) Then
        s = ""
    ElseIf IsNumeric(v) Then
        If CDbl(v) > 0 And CDbl(v) < 2958466 Then
            ' Chuan hoa ngay Excel dang so serial
            s = Format$(CDate(CDbl(v)), "yyyy-mm-dd")
        Else
            s = NormalizeText(v)
        End If
    Else
        s = NormalizeText(v)

        ' Chuan hoa ngay dang chuoi ISO yyyy-mm-dd
        If Len(s) >= 10 _
        And Mid$(s, 5, 1) = "-" _
        And Mid$(s, 8, 1) = "-" _
        And IsNumeric(Left$(s, 4)) _
        And IsNumeric(Mid$(s, 6, 2)) _
        And IsNumeric(Mid$(s, 9, 2)) Then

            s = Left$(s, 10)

        ElseIf IsDate(s) Then
            s = Format$(CDate(s), "yyyy-mm-dd")
        End If
    End If

    MakeDatePart = Len(s) & ":" & s & "|"

End Function


Private Function NormalizeText(ByVal v As Variant) As String

    Dim s As String

    If IsError(v) Then
        NormalizeText = "#ERROR"
        Exit Function
    End If

    If IsNull(v) Or IsEmpty(v) Then
        NormalizeText = ""
        Exit Function
    End If

    s = CStr(v)

    ' Chuyen cac loai khoang trang ve space thong thuong
    s = Replace(s, ChrW(160), " ")
    s = Replace(s, vbTab, " ")
    s = Replace(s, vbCr, " ")
    s = Replace(s, vbLf, " ")

    ' Bo khoang trang dau/cuoi va thu gon khoang trang giua
    s = Trim$(s)

    Do While InStr(s, "  ") > 0
        s = Replace(s, "  ", " ")
    Loop

    NormalizeText = s

End Function


Private Function NormalizeValue(ByVal v As Variant) As Variant

    If IsError(v) Then
        NormalizeValue = ""
    ElseIf IsNull(v) Or IsEmpty(v) Then
        NormalizeValue = ""
    ElseIf VarType(v) = vbString Then
        NormalizeValue = NormalizeText(v)
    Else
        NormalizeValue = v
    End If

End Function

