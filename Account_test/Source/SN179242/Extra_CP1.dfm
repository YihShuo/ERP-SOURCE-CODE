object Extra_CP: TExtra_CP
  Left = 516
  Top = 191
  Width = 601
  Height = 501
  Caption = 'Extra_CP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 65
    Align = alTop
    TabOrder = 0
    object Lbl_LB: TLabel
      Left = 472
      Top = 24
      Width = 3
      Height = 13
    end
    object BB3: TBitBtn
      Left = 8
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB4: TBitBtn
      Left = 56
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB5: TBitBtn
      Left = 104
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BB5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object Button1: TButton
      Left = 369
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 585
    Height = 397
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
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
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'KCYEAR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'KCYEAR|'#24180
        Width = 70
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'KCMONTH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'KCMONTH|'#26376
        Width = 70
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Factory|'#24288#21029
        Width = 60
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'So luong doi||'#25976#37327'/'#38617
        Width = 80
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'usprice'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Don gia USD|'#21934#20729' USD'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'vnacc'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Thanh tien|'#37329#38989' -VND'
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'nameextra'
        Footers = <>
        Title.Caption = 'TEN DON HANG GC'
        Width = 250
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT KCYEAR,KCMONTH, max(nameextra) nameextra, status, sum(qty' +
        ') qty,'
      '             avg(usprice) usprice, sum(vnacc) vnacc '
      'FROM CW_MatCostMonth_GC'
      'where 1=2'
      'group by KCYEAR,KCMONTH, Status')
    UpdateObject = UpdateSQL1
    Left = 288
    Top = 259
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.CW_MatCostMonth_Total_Adjust.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.CW_MatCostMonth_Total_Adjust.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1nameextra: TStringField
      FieldName = 'nameextra'
      Size = 100
    end
    object Query1status: TStringField
      FieldName = 'status'
      Size = 50
    end
    object Query1qty: TFloatField
      FieldName = 'qty'
    end
    object Query1usprice: TFloatField
      FieldName = 'usprice'
      DisplayFormat = '##,#0.00'
    end
    object Query1vnacc: TFloatField
      FieldName = 'vnacc'
      DisplayFormat = '#,##0'
    end
    object Query1IdKT: TStringField
      FieldName = 'IdKT'
    end
    object Query1DateKT: TDateTimeField
      FieldName = 'DateKT'
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 259
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CW_MatCostMonth_GC'
      'set'
      '      nameextra =:nameextra,'
      '      IdKT= :IdKT,'
      '      DateKT= :DateKT'
      'where'
      '         KCYEAR=:KCYEAR '
      'and   KCMONTH=:KCMONTH'
      'and   Status=:OLD_status')
    Left = 288
    Top = 291
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 256
    Top = 259
  end
end
