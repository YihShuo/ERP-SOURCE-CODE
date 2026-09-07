object DeleteYWCP: TDeleteYWCP
  Left = 235
  Top = 228
  Width = 1305
  Height = 675
  Caption = 'DeleteYWCP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 301
      Top = 24
      Width = 51
      Height = 20
      Caption = 'DDBH:'
    end
    object Label3: TLabel
      Left = 675
      Top = 24
      Width = 84
      Height = 20
      Caption = 'User Name:'
    end
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Import'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
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
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
    object BB6: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object Button1: TButton
      Left = 1123
      Top = 17
      Width = 81
      Height = 33
      Caption = 'Search'
      TabOrder = 1
      OnClick = Button1Click
    end
    object edtDDBH: TEdit
      Left = 358
      Top = 21
      Width = 307
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object edtUSERNAME: TEdit
      Left = 766
      Top = 21
      Width = 339
      Height = 28
      TabOrder = 7
    end
    object BB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1289
    Height = 531
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CARTONNO'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DepNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'KVBH'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'INCS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'INDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LastInDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'INUSER'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'OUTCS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'OUTDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'INSPECTCS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'INSPECTDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'EXEDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CON_NO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'sgw'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'rgw'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ogw'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LPNBarCode'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RECS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'REDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Status'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'BIEN_SO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Status1'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'StatusDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Status1Date'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from YWCP')
    UpdateObject = UpSQL1
    Left = 472
    Top = 224
    object Query1CARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      Origin = 'DB.YWCP.CARTONBAR'
      FixedChar = True
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCP.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1CARTONNO: TIntegerField
      FieldName = 'CARTONNO'
      Origin = 'DB.YWCP.CARTONNO'
    end
    object Query1XH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWCP.XH'
      FixedChar = True
      Size = 3
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCP.Qty'
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      Origin = 'DB.YWCP.SB'
      FixedChar = True
      Size = 1
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.YWCP.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1DepNO: TStringField
      FieldName = 'DepNO'
      Origin = 'DB.YWCP.DepNO'
      FixedChar = True
      Size = 10
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      Origin = 'DB.YWCP.KCBH'
      FixedChar = True
      Size = 10
    end
    object Query1KVBH: TStringField
      FieldName = 'KVBH'
      Origin = 'DB.YWCP.KVBH'
      FixedChar = True
      Size = 5
    end
    object Query1INCS: TSmallintField
      FieldName = 'INCS'
      Origin = 'DB.YWCP.INCS'
    end
    object Query1INDATE: TDateTimeField
      FieldName = 'INDATE'
      Origin = 'DB.YWCP.INDATE'
    end
    object Query1LastInDate: TDateTimeField
      FieldName = 'LastInDate'
      Origin = 'DB.YWCP.LastInDate'
    end
    object Query1INUSER: TStringField
      FieldName = 'INUSER'
      Origin = 'DB.YWCP.INUSER'
      FixedChar = True
      Size = 10
    end
    object Query1OUTCS: TSmallintField
      FieldName = 'OUTCS'
      Origin = 'DB.YWCP.OUTCS'
    end
    object Query1OUTDATE: TDateTimeField
      FieldName = 'OUTDATE'
      Origin = 'DB.YWCP.OUTDATE'
    end
    object Query1INSPECTCS: TIntegerField
      FieldName = 'INSPECTCS'
      Origin = 'DB.YWCP.INSPECTCS'
    end
    object Query1INSPECTDATE: TDateTimeField
      FieldName = 'INSPECTDATE'
      Origin = 'DB.YWCP.INSPECTDATE'
    end
    object Query1EXEDATE: TDateTimeField
      FieldName = 'EXEDATE'
      Origin = 'DB.YWCP.EXEDATE'
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'DB.YWCP.MEMO'
      FixedChar = True
    end
    object Query1CON_NO: TStringField
      FieldName = 'CON_NO'
      Origin = 'DB.YWCP.CON_NO'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWCP.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWCP.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWCP.YN'
      FixedChar = True
      Size = 1
    end
    object Query1sgw: TFloatField
      FieldName = 'sgw'
      Origin = 'DB.YWCP.sgw'
    end
    object Query1rgw: TFloatField
      FieldName = 'rgw'
      Origin = 'DB.YWCP.rgw'
    end
    object Query1ogw: TFloatField
      FieldName = 'ogw'
      Origin = 'DB.YWCP.ogw'
    end
    object Query1LPNBarCode: TStringField
      FieldName = 'LPNBarCode'
      Origin = 'DB.YWCP.LPNBarCode'
      FixedChar = True
    end
    object Query1RECS: TSmallintField
      FieldName = 'RECS'
      Origin = 'DB.YWCP.RECS'
    end
    object Query1REDATE: TDateTimeField
      FieldName = 'REDATE'
      Origin = 'DB.YWCP.REDATE'
    end
    object Query1Status: TStringField
      FieldName = 'Status'
      Origin = 'DB.YWCP.Status'
      FixedChar = True
      Size = 10
    end
    object Query1BIEN_SO: TStringField
      FieldName = 'BIEN_SO'
      Origin = 'DB.YWCP.BIEN_SO'
      FixedChar = True
    end
    object Query1Status1: TStringField
      FieldName = 'Status1'
      Origin = 'DB.YWCP.Status1'
      FixedChar = True
      Size = 10
    end
    object Query1StatusDate: TDateTimeField
      FieldName = 'StatusDate'
      Origin = 'DB.YWCP.StatusDate'
    end
    object Query1Status1Date: TDateTimeField
      FieldName = 'Status1Date'
      Origin = 'DB.YWCP.Status1Date'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 528
    Top = 224
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update YWCP'
      'set'
      '  CARTONBAR = :CARTONBAR,'
      '  DDBH = :DDBH,'
      '  CARTONNO = :CARTONNO,'
      '  XH = :XH,'
      '  Qty = :Qty,'
      '  SB = :SB,'
      '  CKBH = :CKBH,'
      '  DepNO = :DepNO,'
      '  KCBH = :KCBH,'
      '  KVBH = :KVBH,'
      '  INCS = :INCS,'
      '  INDATE = :INDATE,'
      '  LastInDate = :LastInDate,'
      '  INUSER = :INUSER,'
      '  OUTCS = :OUTCS,'
      '  OUTDATE = :OUTDATE,'
      '  INSPECTCS = :INSPECTCS,'
      '  INSPECTDATE = :INSPECTDATE,'
      '  EXEDATE = :EXEDATE,'
      '  MEMO = :MEMO,'
      '  CON_NO = :CON_NO,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN,'
      '  sgw = :sgw,'
      '  rgw = :rgw,'
      '  ogw = :ogw,'
      '  LPNBarCode = :LPNBarCode,'
      '  RECS = :RECS,'
      '  REDATE = :REDATE,'
      '  Status = :Status,'
      '  BIEN_SO = :BIEN_SO,'
      '  Status1 = :Status1,'
      '  StatusDate = :StatusDate,'
      '  Status1Date = :Status1Date'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR and'
      '  DDBH = :OLD_DDBH and'
      '  CARTONNO = :OLD_CARTONNO and'
      '  XH = :OLD_XH and'
      '  Qty = :OLD_Qty and'
      '  SB = :OLD_SB and'
      '  CKBH = :OLD_CKBH and'
      '  DepNO = :OLD_DepNO and'
      '  KCBH = :OLD_KCBH and'
      '  KVBH = :OLD_KVBH and'
      '  INCS = :OLD_INCS and'
      '  INDATE = :OLD_INDATE and'
      '  LastInDate = :OLD_LastInDate and'
      '  INUSER = :OLD_INUSER and'
      '  OUTCS = :OLD_OUTCS and'
      '  OUTDATE = :OLD_OUTDATE and'
      '  INSPECTCS = :OLD_INSPECTCS and'
      '  INSPECTDATE = :OLD_INSPECTDATE and'
      '  EXEDATE = :OLD_EXEDATE and'
      '  MEMO = :OLD_MEMO and'
      '  CON_NO = :OLD_CON_NO and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN and'
      '  sgw = :OLD_sgw and'
      '  rgw = :OLD_rgw and'
      '  ogw = :OLD_ogw and'
      '  LPNBarCode = :OLD_LPNBarCode and'
      '  RECS = :OLD_RECS and'
      '  REDATE = :OLD_REDATE and'
      '  Status = :OLD_Status and'
      '  BIEN_SO = :OLD_BIEN_SO and'
      '  Status1 = :OLD_Status1 and'
      '  StatusDate = :OLD_StatusDate and'
      '  Status1Date = :OLD_Status1Date')
    InsertSQL.Strings = (
      'insert into YWCP'
      
        '  (CARTONBAR, DDBH, CARTONNO, XH, Qty, SB, CKBH, DepNO, KCBH, KV' +
        'BH, INCS, '
      
        '   INDATE, LastInDate, INUSER, OUTCS, OUTDATE, INSPECTCS, INSPEC' +
        'TDATE, '
      
        '   EXEDATE, MEMO, CON_NO, USERID, USERDATE, YN, sgw, rgw, ogw, L' +
        'PNBarCode, '
      
        '   RECS, REDATE, Status, BIEN_SO, Status1, StatusDate, Status1Da' +
        'te)'
      'values'
      
        '  (:CARTONBAR, :DDBH, :CARTONNO, :XH, :Qty, :SB, :CKBH, :DepNO, ' +
        ':KCBH, '
      
        '   :KVBH, :INCS, :INDATE, :LastInDate, :INUSER, :OUTCS, :OUTDATE' +
        ', :INSPECTCS, '
      
        '   :INSPECTDATE, :EXEDATE, :MEMO, :CON_NO, :USERID, :USERDATE, :' +
        'YN, :sgw, '
      
        '   :rgw, :ogw, :LPNBarCode, :RECS, :REDATE, :Status, :BIEN_SO, :' +
        'Status1, '
      '   :StatusDate, :Status1Date)')
    DeleteSQL.Strings = (
      'delete from YWCP'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR and'
      '  DDBH = :OLD_DDBH and'
      '  CARTONNO = :OLD_CARTONNO and'
      '  XH = :OLD_XH and'
      '  Qty = :OLD_Qty and'
      '  SB = :OLD_SB and'
      '  CKBH = :OLD_CKBH and'
      '  DepNO = :OLD_DepNO and'
      '  KCBH = :OLD_KCBH and'
      '  KVBH = :OLD_KVBH and'
      '  INCS = :OLD_INCS and'
      '  INDATE = :OLD_INDATE and'
      '  LastInDate = :OLD_LastInDate and'
      '  INUSER = :OLD_INUSER and'
      '  OUTCS = :OLD_OUTCS and'
      '  OUTDATE = :OLD_OUTDATE and'
      '  INSPECTCS = :OLD_INSPECTCS and'
      '  INSPECTDATE = :OLD_INSPECTDATE and'
      '  EXEDATE = :OLD_EXEDATE and'
      '  MEMO = :OLD_MEMO and'
      '  CON_NO = :OLD_CON_NO and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN and'
      '  sgw = :OLD_sgw and'
      '  rgw = :OLD_rgw and'
      '  ogw = :OLD_ogw and'
      '  LPNBarCode = :OLD_LPNBarCode and'
      '  RECS = :OLD_RECS and'
      '  REDATE = :OLD_REDATE and'
      '  Status = :OLD_Status and'
      '  BIEN_SO = :OLD_BIEN_SO and'
      '  Status1 = :OLD_Status1 and'
      '  StatusDate = :OLD_StatusDate and'
      '  Status1Date = :OLD_Status1Date')
    Left = 560
    Top = 224
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 416
    Top = 224
  end
  object OpenDialog1: TOpenDialog
    Left = 472
    Top = 160
  end
end
