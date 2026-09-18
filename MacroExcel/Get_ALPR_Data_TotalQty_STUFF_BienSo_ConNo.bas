Attribute VB_Name = "Get_ALPR_Data1"
Sub Get_ALPR_Data()

    Dim ws As Worksheet
    Dim Conn As Object
    Dim Cmd As Object
    Dim Rs As Object

    Dim LastRow As Long
    Dim i As Long
    Dim TotalRows As Long
    Dim CurrentRow As Long
    Dim Percent As Double

    Dim PO As String
    Dim SKU As String

    Dim SQL As String
    Dim SQL1 As String
    Dim SQL2 As String
    Dim SQL3 As String
    Dim SQL4 As String
    Dim SQL5 As String
    Dim SQL6 As String
    Dim SQL7 As String
    Dim SQL8 As String
        
    ' ==========================================================
    ' CAU HINH COT EXCEL
    ' ==========================================================
    
    Dim ColPO As String
    Dim ColStyle As String
    Dim ColColor As String
    
    Dim ColQty As String
    Dim ColConNo As String
    Dim ColBienSo As String

    ' --- Cot dau vao ---
    ColPO = "G"
    ColStyle = "H"
    ColColor = "I"

    ' --- Cot ket qua ---
    ColQty = "S"
    ColConNo = "T"
    ColBienSo = "U"


    Set ws = ActiveSheet

    LastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    
    ws.Range(ColQty & "1").Offset(0, -1).Copy _
        Destination:=ws.Range(ColQty & "1")
    
    ws.Range(ColConNo & "1").Offset(0, -1).Copy _
        Destination:=ws.Range(ColConNo & "1")
    
    ws.Range(ColBienSo & "1").Offset(0, -1).Copy _
        Destination:=ws.Range(ColBienSo & "1")
    
    
    ws.Range(ColQty & "1").Value = "ExQty"
    ws.Range(ColConNo & "1").Value = "ConNo"
    ws.Range(ColBienSo & "1").Value = "BienSo"
    
    
    ' To nen cam
    ws.Range(ColQty & "1").Interior.Color = RGB(255, 192, 0)
    ws.Range(ColConNo & "1").Interior.Color = RGB(255, 192, 0)
    ws.Range(ColBienSo & "1").Interior.Color = RGB(255, 192, 0)
    
    ' AutoFit 3 cot
    ws.Columns(ColQty).AutoFit
    ws.Columns(ColConNo).AutoFit
    ws.Columns(ColBienSo).AutoFit
    
    If LastRow < 2 Then
        MsgBox "Khong co du lieu!", vbInformation
        Exit Sub
    End If

    TotalRows = LastRow - 1


    ' ==========================================
    ' TAT EXCEL DE TANG TOC
    ' ==========================================

    Application.ScreenUpdating = False
    Application.EnableEvents = False
    Application.Calculation = xlCalculationManual


    ' ==========================================
    ' MO CONNECTION 1 LAN
    ' ==========================================

    Set Conn = CreateObject("ADODB.Connection")

    Conn.ConnectionTimeout = 0
    Conn.CommandTimeout = 0

    Conn.Open _
        "Provider=SQLOLEDB;" & _
        "Data Source=192.168.71.7;" & _
        "Initial Catalog=LYS_ERP;" & _
        "User ID=tyxuan;" & _
        "Password=jack;"


    ' ==========================================
    ' TAO SQL
    ' Khong dung qua nhieu dau _
    ' ==========================================
    
    SQL1 = ""
    SQL1 = SQL1 & "SET NOCOUNT ON;"
    SQL1 = SQL1 & "DECLARE @po varchar(30); "
    SQL1 = SQL1 & "DECLARE @sku varchar(30); "
    SQL1 = SQL1 & "SET @po = ?; "
    SQL1 = SQL1 & "SET @sku = ?; "

    SQL2 = ""
    SQL2 = SQL2 & "IF OBJECT_ID('tempdb..#Ex_Data') IS NOT NULL "
    SQL2 = SQL2 & "DROP TABLE #Ex_Data; "

    SQL3 = ""
    SQL3 = SQL3 & "SELECT CAST(r.outtime AS date) AS OutTime, "
    SQL3 = SQL3 & "r.Plate_Id, r.CON_NO, i.RYNO, "
    SQL3 = SQL3 & "Y.TotalQty, x.Barcode "
    SQL3 = SQL3 & "INTO #Ex_Data "
    SQL3 = SQL3 & "FROM [ALPR_DB].[dbo].[ALPR_Records] r "

    SQL4 = ""
    SQL4 = SQL4 & "CROSS APPLY ( "
    SQL4 = SQL4 & "SELECT T.c.value('.', 'VARCHAR(100)') AS Barcode "
    SQL4 = SQL4 & "FROM ( "
    SQL4 = SQL4 & "SELECT CAST('<x>' + "
    SQL4 = SQL4 & "REPLACE(r.Packinglist_Barcode, ';', "
    SQL4 = SQL4 & "'</x><x>') + '</x>' AS XML) AS XmlData "
    SQL4 = SQL4 & ") A "
    SQL4 = SQL4 & "CROSS APPLY XmlData.nodes('/x') T(c) "
    SQL4 = SQL4 & ") x "

    SQL5 = ""
    SQL5 = SQL5 & "INNER JOIN INVOICE_D i "
    SQL5 = SQL5 & "ON x.Barcode COLLATE DATABASE_DEFAULT = "
    SQL5 = SQL5 & "i.INV_NO COLLATE DATABASE_DEFAULT "

    SQL6 = ""
    SQL6 = SQL6 & "INNER JOIN ( "
    SQL6 = SQL6 & "SELECT DDBH, "
    SQL6 = SQL6 & "REPLACE(BIEN_SO,'-','') AS BIENSO, "
    SQL6 = SQL6 & "CON_NO, SUM(Qty) AS TotalQty "
    SQL6 = SQL6 & "FROM YWCP "
    SQL6 = SQL6 & "WHERE SB = '3' "
    SQL6 = SQL6 & "GROUP BY DDBH, REPLACE(BIEN_SO,'-',''), CON_NO "
    SQL6 = SQL6 & "UNION ALL "
    SQL6 = SQL6 & "SELECT DDBH, "
    SQL6 = SQL6 & "REPLACE(BIEN_SO,'-','') AS BIENSO, "
    SQL6 = SQL6 & "CON_NO, SUM(Qty) AS TotalQty "
    SQL6 = SQL6 & "FROM YWCPOld "
    SQL6 = SQL6 & "WHERE SB = '3' "
    SQL6 = SQL6 & "GROUP BY DDBH, REPLACE(BIEN_SO,'-',''), CON_NO "
    SQL6 = SQL6 & ") Y "

    SQL7 = ""
    SQL7 = SQL7 & "ON Y.DDBH = i.RYNO "
    SQL7 = SQL7 & "AND Y.BIENSO COLLATE DATABASE_DEFAULT = "
    SQL7 = SQL7 & "r.Plate_Id COLLATE DATABASE_DEFAULT "
    SQL7 = SQL7 & "AND Y.CON_NO COLLATE DATABASE_DEFAULT = "
    SQL7 = SQL7 & "r.CON_NO COLLATE DATABASE_DEFAULT "

    SQL8 = ""
    SQL8 = SQL8 & "WHERE i.RYNO IN ( "
    SQL8 = SQL8 & "SELECT DDBH FROM DDZL "
    SQL8 = SQL8 & "WHERE KHPO = @po AND ARTICLE = @sku "
    SQL8 = SQL8 & "); "

    SQL8 = SQL8 & "SELECT "
    SQL8 = SQL8 & "SUM(E.TotalQty) AS TotalQty, "

    SQL8 = SQL8 & "STUFF(( "
    SQL8 = SQL8 & "SELECT DISTINCT ',' + LTRIM(RTRIM(E2.CON_NO)) "
    SQL8 = SQL8 & "FROM #Ex_Data E2 "
    SQL8 = SQL8 & "WHERE E2.CON_NO IS NOT NULL "
    SQL8 = SQL8 & "FOR XML PATH(''), TYPE "
    SQL8 = SQL8 & ").value('.', 'VARCHAR(MAX)'), 1, 1, '') AS CON_NO, "

    SQL8 = SQL8 & "STUFF(( "
    SQL8 = SQL8 & "SELECT DISTINCT ',' + LTRIM(RTRIM(E2.Plate_Id)) "
    SQL8 = SQL8 & "FROM #Ex_Data E2 "
    SQL8 = SQL8 & "WHERE E2.Plate_Id IS NOT NULL "
    SQL8 = SQL8 & "FOR XML PATH(''), TYPE "
    SQL8 = SQL8 & ").value('.', 'VARCHAR(MAX)'), 1, 1, '') AS Plate_Id "

    SQL8 = SQL8 & "FROM #Ex_Data E;"


    SQL = SQL1 & SQL2 & SQL3 & SQL4
    SQL = SQL & SQL5 & SQL6 & SQL7 & SQL8


    ' ==========================================
    ' TAO COMMAND 1 LAN
    ' ==========================================

    Set Cmd = CreateObject("ADODB.Command")

    With Cmd

        Set .ActiveConnection = Conn

        .CommandType = 1
        .CommandTimeout = 0

        .CommandText = SQL

        .Parameters.Append .CreateParameter("@po", 200, 1, 30)
        .Parameters.Append .CreateParameter("@sku", 200, 1, 30)

        .Prepared = True

    End With


    ' ==========================================
    ' BAT DAU TIEN TRINH
    ' ==========================================

    Application.StatusBar = _
        "Dang xu ly 0 / " & TotalRows & " (0%)"


    ' ==========================================
    ' DUYET TUNG DONG
    ' ==========================================

    For i = 2 To LastRow

        PO = Trim(CStr(ws.Cells(i, ColPO).Value))

        SKU = Trim(CStr(ws.Cells(i, ColStyle).Value)) & "-" & Trim(CStr(ws.Cells(i, ColColor).Value))


        ' Neu PO va SKU khong rong
        If PO <> "" And SKU <> "" Then

            Cmd.Parameters("@po").Value = PO
            Cmd.Parameters("@sku").Value = SKU


            ' Chay SQL
            Set Rs = Cmd.Execute


            If Not Rs.EOF Then

                ' Cot TotalQty
                If IsNull(Rs.Fields("TotalQty").Value) Then
                    ws.Cells(i, ColQty).Value = ""
                Else
                    ws.Cells(i, ColQty).Value = _
                        Rs.Fields("TotalQty").Value
                End If


                ' Cot CON_NO
                If IsNull(Rs.Fields("CON_NO").Value) Then
                    ws.Cells(i, ColConNo).Value = ""
                Else
                    ws.Cells(i, ColConNo).Value = _
                        Rs.Fields("CON_NO").Value
                End If


                ' Cot Plate_Id
                If IsNull(Rs.Fields("Plate_Id").Value) Then
                    ws.Cells(i, ColBienSo).Value = ""
                Else
                    ws.Cells(i, ColBienSo).Value = _
                        Rs.Fields("Plate_Id").Value
                End If

            Else

                ws.Cells(i, ColQty).Value = "0"
                ws.Cells(i, ColConNo).Value = ""
                ws.Cells(i, ColBienSo).Value = ""

            End If


            Rs.Close
            Set Rs = Nothing

        Else

            ws.Cells(i, ColQty).Value = "0"
            ws.Cells(i, ColConNo).Value = ""
            ws.Cells(i, ColBienSo).Value = ""

        End If


        ' ==========================================
        ' CAP NHAT TIEN TRINH
        ' ==========================================

        CurrentRow = i - 1

        Percent = CurrentRow / TotalRows

        Application.StatusBar = _
            "Dang xu ly " & CurrentRow & _
            " / " & TotalRows & _
            " (" & Format(Percent, "0%") & _
            ") - Dong " & i

        DoEvents

    Next i


    ' ==========================================
    ' DONG OBJECT
    ' ==========================================

    If Not Rs Is Nothing Then
        If Rs.State <> 0 Then
            Rs.Close
        End If
    End If

    Set Rs = Nothing
    Set Cmd = Nothing


    If Conn.State <> 0 Then
        Conn.Close
    End If

    Set Conn = Nothing


    ' ==========================================
    ' KHOI PHUC EXCEL
    ' ==========================================

    Application.StatusBar = False
    Application.ScreenUpdating = True
    Application.EnableEvents = True
    Application.Calculation = xlCalculationAutomatic


    MsgBox _
        "Da xu ly xong " & TotalRows & " dong.", _
        vbInformation

End Sub
