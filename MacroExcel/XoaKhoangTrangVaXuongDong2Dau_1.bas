Attribute VB_Name = "XoaKhoangTrangVaXuongDong2Dau_1"
Sub XoaKhoangTrangVaXuongDong2Dau()
    Dim cell As Range
    Dim regEx As Object
    Dim selectedRange As Range
    
    ' Khoi tao RegEx
    Set regEx = CreateObject("VBScript.RegExp")
    With regEx
        .Global = True
        .IgnoreCase = True
        ' Mau tim kiem: Khoang trang, xuong dong (\r, \n), tab (\t), khoang trang web (\xA0) o DAU (^) hoac CUOI ($)
        .Pattern = "^[\s\r\n\t\xA0]+|[\s\r\n\t\xA0]+$"
    End With
    
    ' Tat cap nhat man hinh de tang toc do xu ly khi chon vung lon
    Application.ScreenUpdating = False
    Application.Calculation = xlCalculationManual
    
    On Error Resume Next
    ' Toi uu: Chi quet cac o chua van ban (Text) trong vung dang chon
    Set selectedRange = Selection.SpecialCells(xlCellTypeConstants, xlTextValues)
    On Error GoTo 0
    
    ' Truong hop chon o don le hoac khong loc duoc theo loai
    If selectedRange Is Nothing Then Set selectedRange = Selection
    
    ' Duyet qua tung o de lam sach
    For Each cell In selectedRange
        If Not IsEmpty(cell.Value) And VarType(cell.Value) = vbString Then
            cell.Value = regEx.Replace(cell.Value, "")
        End If
    Next cell
    
    ' Khoi phuc lai thiet lap ban dau cua Excel
    Application.Calculation = xlCalculationAutomatic
    Application.ScreenUpdating = True
    
    MsgBox "Da lam sach du lieu thanh cong!", vbInformation, "Thong bao"
End Sub
