object DetailRemQty01T: TDetailRemQty01T
  Left = 618
  Top = 224
  Width = 1342
  Height = 500
  Caption = 'DetailRemQty'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1326
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 253
      Top = 13
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
      Visible = False
    end
    object Label2: TLabel
      Left = 446
      Top = 13
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
      Visible = False
    end
    object Label4: TLabel
      Left = 253
      Top = 43
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YWPM:'
      Visible = False
    end
    object Label3: TLabel
      Left = 446
      Top = 45
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Declaretion:'
      Visible = False
    end
    object Label5: TLabel
      Left = 632
      Top = 13
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZSBH:'
      Visible = False
    end
    object Label6: TLabel
      Left = 633
      Top = 45
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
      Visible = False
    end
    object Label7: TLabel
      Left = 2
      Top = 13
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label8: TLabel
      Left = 3
      Top = 39
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label9: TLabel
      Left = 114
      Top = 13
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label10: TLabel
      Left = 113
      Top = 42
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object lblFlag: TLabel
      Left = 896
      Top = 24
      Width = 3
      Height = 16
      Visible = False
    end
    object Edit1: TEdit
      Left = 320
      Top = 10
      Width = 121
      Height = 24
      TabOrder = 0
      Visible = False
    end
    object Edit2: TEdit
      Left = 532
      Top = 10
      Width = 101
      Height = 24
      TabOrder = 1
      Visible = False
    end
    object Edit3: TEdit
      Left = 693
      Top = 10
      Width = 95
      Height = 24
      TabOrder = 2
      Visible = False
    end
    object Edit5: TEdit
      Left = 532
      Top = 40
      Width = 101
      Height = 24
      TabOrder = 3
      Visible = False
    end
    object Edit6: TEdit
      Left = 693
      Top = 40
      Width = 95
      Height = 24
      TabOrder = 4
      Visible = False
    end
    object Button1: TButton
      Left = 795
      Top = 40
      Width = 74
      Height = 28
      Caption = 'QUERY'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 796
      Top = 9
      Width = 71
      Height = 28
      Caption = 'EXCEL'
      TabOrder = 6
      Visible = False
      OnClick = Button2Click
    end
    object Edit4: TEdit
      Left = 321
      Top = 40
      Width = 121
      Height = 24
      TabOrder = 7
      Visible = False
    end
    object Edit7: TEdit
      Left = 56
      Top = 9
      Width = 54
      Height = 24
      Color = clScrollBar
      Enabled = False
      TabOrder = 8
    end
    object Edit8: TEdit
      Left = 56
      Top = 37
      Width = 54
      Height = 24
      Color = clScrollBar
      Enabled = False
      TabOrder = 9
    end
    object Edit9: TEdit
      Left = 168
      Top = 9
      Width = 53
      Height = 24
      Color = clScrollBar
      Enabled = False
      TabOrder = 10
    end
    object Edit10: TEdit
      Left = 168
      Top = 38
      Width = 100
      Height = 24
      Color = clScrollBar
      Enabled = False
      TabOrder = 11
    end
    object Edit11: TEdit
      Left = 225
      Top = 9
      Width = 44
      Height = 24
      Color = clScrollBar
      Enabled = False
      TabOrder = 12
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1326
    Height = 380
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footer.FieldName = 'cldh'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 164
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Price'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'ZSYWJC'
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'DECLARE @Year int = 2024'
      'DECLARE @Month int = 6'
      ''
      'DECLARE @Qty money;'
      'DECLARE @CKBH VARCHAR(4);'
      'DECLARE @CLBH VARCHAR(15);'
      'DECLARE @HGLB VARCHAR(5);'
      'DECLARE @Price float;'
      ''
      ''
      'IF OBJECT_ID('#39'tempdb..#Temp'#39') IS NOT NULL      '
      'begin drop table #Temp end  '
      ''
      '-- Tao bang tam de luu ket qua tu CWCLZL_HG_Mon'
      ';WITH CWCLZL_HG_Mon_S AS ('
      
        '    select CWCLZL.*,convert(float,CWCLZL.RemACC)/CWCLZL.RemQty a' +
        's Price'
      #9'from CWCLZL_HG_Mon CWCLZL'
      #9'where KCYEAR=@Year and KCMONTH=@Month'
      #9'and CKBH='#39'VA12'#39' and CLBH='#39'D080017624'#39' and HGLB='#39'HD'#39
      ')'
      ''
      'SELECT * INTO #Temp FROM CWCLZL_HG_Mon_S'
      ''
      '--select *'
      '--from #Temp'
      ''
      'IF OBJECT_ID('#39'tempdb..#TempKCRKS'#39') IS NOT NULL      '
      'begin drop table #TempKCRKS end  '
      ''
      '-- Tao bang tam de luu ket qua tu KCRKS'
      
        'Select KCRK.CKBH,KCRK.RKNO,KCRKS.CLBH,KCRK.HGLB,KCRKS.CGBH,KCRKS' +
        '.Qty,KCRK.USERDATE,KCRK.CFMDATE,KCPK.PKNO,KCRK.ZSBH,ZSZL.zsywjc,' +
        'cast(0 as float) as Price'
      'INTO #TempKCRKS'
      'from KCRKS left join KCRK'
      'on KCRKS.RKNO=KCRK.RKNO'
      'left join KCPK on KCRK.RKNO=KCPK.PKNO'
      'left join zszl on KCRK.ZSBH=zszl.zsdh'
      'WHERE 1 = 2'
      ''
      ''
      '-- Khai bao con tro de duyet ket qua tu #Temp'
      'DECLARE cursor_HG CURSOR FOR '
      '    SELECT CKBH,CLBH,HGLB,RemQty07T,Price'
      '    FROM #Temp'
      ''
      'OPEN cursor_HG'
      'FETCH NEXT FROM cursor_HG INTO @CKBH,@CLBH,@HGLB,@Qty,@Price'
      ''
      'WHILE @@FETCH_STATUS = 0'
      'BEGIN'
      '        -- Khai bao con tro de duyet ket qua tu KCRKS'
      
        '        DECLARE @CKBH_RK varchar(4),@RKNO_RK VARCHAR(11), @CLBH_' +
        'RK VARCHAR(15), @HGLB_RK VARCHAR(4), @CGBH_RK VARCHAR(15), @Qty_' +
        'RK money, @USERDate_RK SMALLDATETIME, @CFMDate_RK SMALLDATETIME,' +
        '@Declaretion_RK varchar(50),@ZSBH_RK varchar(10),@ZSYWJC_RK varc' +
        'har(20),@Price_RK money'
      ''
      '        DECLARE cursor_kcrks CURSOR FOR '
      
        #9#9'Select KCRK.CKBH,KCRK.RKNO,KCRKS.CLBH,KCRK.HGLB,KCRKS.CGBH,KCR' +
        'KS.Qty,KCRK.USERDATE,KCRK.CFMDATE,KCPK.PKNO,KCRK.ZSBH,ZSZL.zsywj' +
        'c,#Temp.Price'
      '        From KCRKS left join KCRK'
      #9#9'on KCRKS.RKNO=KCRK.RKNO'
      #9#9'Left join KCPK on KCRK.RKNO=KCPK.PKNO'
      #9#9'Left join zszl on KCRK.ZSBH=zszl.zsdh'
      
        #9#9'Left join #Temp on KCRK.CKBH=#Temp.CKBH and KCRK.HGLB=#Temp.HG' +
        'LB and KCRKS.CLBH=#Temp.CLBH'
      #9#9'Where KCRK.YN='#39'5'#39' '
      #9#9'and KCRK.CKBH=@CKBH and KCRKs.CLBH=@CLBH and KCRK.HGLB=@HGLB'
      #9#9'and DATEDIFF(day, KCRK.USERDATE, '#39'2024/06/30'#39') >360'
      #9#9'Order by KCRK.RKNO desc,KCRKS.CGBH desc'
      ''
      #9#9'OPEN cursor_kcrks'
      
        '        FETCH NEXT FROM cursor_kcrks INTO @CKBH_RK,@RKNO_RK, @CL' +
        'BH_RK, @HGLB_RK, @CGBH_RK, @Qty_RK, @USERDate_RK, @CFMDate_RK, @' +
        'Declaretion_RK,@ZSBH_RK,@ZSYWJC_RK,@Price_RK'
      ''
      ''
      #9#9'WHILE @@FETCH_STATUS = 0 AND @Qty > 0'
      '        BEGIN'
      #9#9'SET @Qty=@Qty-@Qty_RK'
      #9#9'if (@Qty>0)'
      #9#9'begin'
      
        '           '#9#9'INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGB' +
        'H, Qty, USERDATE, CFMDATE, PKNO, ZSBH, zsywjc,Price)'
      
        #9#9#9#9'VALUES (@CKBH_RK,@RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @Qt' +
        'y_RK, @USERDate_RK, @CFMDate_RK, @Declaretion_RK, @ZSBH_RK, @ZSY' +
        'WJC_RK,@Price_RK)'
      #9#9'end else begin'
      #9#9
      
        '           '#9#9'INSERT INTO #TempKCRKS (CKBH, RKNO, CLBH, HGLB, CGB' +
        'H, Qty, USERDATE, CFMDATE, PKNO, ZSBH, zsywjc,Price)'
      
        #9#9#9#9'VALUES (@CKBH_RK,@RKNO_RK, @CLBH_RK, @HGLB_RK, @CGBH_RK, @Qt' +
        'y +@Qty_RK, @USERDate_RK, @CFMDate_RK, @Declaretion_RK, @ZSBH_RK' +
        ', @ZSYWJC_RK,@Price_RK)'
      #9#9#9#9
      #9#9'SET @Qty=0'
      #9#9'end'
      #9#9#9#9
      #9#9
      
        '         FETCH NEXT FROM cursor_kcrks INTO @CKBH_RK,@RKNO_RK, @C' +
        'LBH_RK, @HGLB_RK, @CGBH_RK, @Qty_RK, @USERDate_RK, @CFMDate_RK, ' +
        '@Declaretion_RK,@ZSBH_RK,@ZSYWJC_RK,@Price_RK'
      #9#9
      #9#9'END'
      #9#9
      '        CLOSE cursor_kcrks'
      '        DEALLOCATE cursor_kcrks'
      'FETCH NEXT FROM cursor_HG INTO @CKBH,@CLBH,@HGLB,@Qty,@Price'
      ''
      'END'
      'CLOSE cursor_HG'
      'DEALLOCATE cursor_HG'
      ''
      
        'SELECT #TempKCRKS.CKBH,#TempKCRKS.RKNO,#TempKCRKS.CLBH,CLZL.YWPM' +
        ',CLZL.DWBH,#TempKCRKS.CGBH,#TempKCRKS.Qty,#TempKCRKS.Price,#Temp' +
        'KCRKS.HGLB,#TempKCRKS.USERDATE,#TempKCRKS.CFMDATE,#TempKCRKS.PKN' +
        'O,#TempKCRKS.ZSBH,#TempKCRKS.zsywjc  '
      'FROM #TempKCRKS '
      'Left join clzl on #TempKCRKS.CLBH=clzl.cldh'
      '')
    Left = 24
    Top = 184
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.00'
    end
    object Query1Price: TFloatField
      FieldName = 'Price'
    end
    object Query1HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      Size = 50
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 192
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
