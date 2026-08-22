Attribute VB_Name = "SoSanhCDE_KLM1"
Sub SoSanhCDE_KLM()

    Dim ws As Worksheet
    Dim lastRowCDE As Long
    Dim lastRowKLM As Long
    Dim i As Long
    Dim j As Long
    
    Set ws = ActiveSheet
    
    ' Tim dong cuoi cua 2 khu vuc
    lastRowCDE = ws.Cells(ws.Rows.Count, "C").End(xlUp).Row
    lastRowKLM = ws.Cells(ws.Rows.Count, "K").End(xlUp).Row
    
    ' Duyet tung dong C:D:E
    For i = 2 To lastRowCDE
        
        ' Duyet toan bo dong K:L:M
        For j = 2 To lastRowKLM
            
            If Trim(ws.Cells(i, "C").Value) = Trim(ws.Cells(j, "K").Value) _
               And Trim(ws.Cells(i, "D").Value) = Trim(ws.Cells(j, "L").Value) _
               And Trim(ws.Cells(i, "E").Value) = Trim(ws.Cells(j, "M").Value) Then
                
                ' Trung -> to mau vang C:D:E
                ws.Range("C" & i & ":E" & i).Interior.Color = RGB(255, 255, 0)
                
                ' Da tim thay -> khong can duyet tiep KLM
                Exit For
                
            End If
            
        Next j
        
    Next i
    
    MsgBox "Da so sanh xong!", vbInformation

End Sub

