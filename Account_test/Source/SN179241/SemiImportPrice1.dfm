object SemiImportPrice: TSemiImportPrice
  Left = 293
  Top = 240
  Width = 1305
  Height = 675
  Caption = 'Semi Import Price'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 311
      Top = 17
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
    end
    object Label13: TLabel
      Left = 144
      Top = 20
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month'
    end
    object Label2: TLabel
      Left = 12
      Top = 20
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year'
    end
    object Edit1: TEdit
      Left = 390
      Top = 15
      Width = 147
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 571
      Top = 15
      Width = 75
      Height = 31
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object chkNoPrice: TCheckBox
      Left = 64
      Top = 55
      Width = 148
      Height = 17
      Caption = 'No Price (XNK_KTH)'
      TabOrder = 2
    end
    object CBX1: TComboBox
      Left = 65
      Top = 16
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = '2007'
      Items.Strings = (
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object CBX2: TComboBox
      Left = 222
      Top = 16
      Width = 67
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button2: TButton
      Left = 652
      Top = 14
      Width = 75
      Height = 31
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object chkPrice: TCheckBox
      Left = 64
      Top = 80
      Width = 156
      Height = 17
      Caption = 'Have Price (XNK_KTH)'
      TabOrder = 6
    end
    object bbt5: TBitBtn
      Left = 738
      Top = 16
      Width = 85
      Height = 65
      Hint = 'Modify Current'
      Caption = 'Import Price'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = bbt5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object chkPrice_Acc: TCheckBox
      Left = 390
      Top = 81
      Width = 156
      Height = 17
      Caption = 'Have Price (Account)'
      TabOrder = 8
    end
    object chkNoPrice_Acc: TCheckBox
      Left = 390
      Top = 56
      Width = 156
      Height = 17
      Caption = 'No Price (Account)'
      TabOrder = 9
    end
    object Button3: TButton
      Left = 572
      Top = 55
      Width = 75
      Height = 31
      Caption = 'Confirm'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 654
      Top = 55
      Width = 75
      Height = 31
      Caption = 'Reset'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = Button4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 113
    Width = 1289
    Height = 523
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Price'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Price (XNK_KTH)'
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 50
      end>
  end
  object Panel9: TPanel
    Left = 400
    Top = 350
    Width = 473
    Height = 136
    TabOrder = 2
    Visible = False
    object Label4: TLabel
      Left = 8
      Top = 44
      Width = 121
      Height = 16
      Caption = 'Column A : DDBH'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 342
      Top = 45
      Width = 120
      Height = 16
      Caption = 'Column C : Memo'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 179
      Top = 45
      Width = 131
      Height = 16
      Caption = 'Column B: USPrice'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 471
      Height = 27
      Align = alTop
      Caption = 'Import Price'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Panel11: TPanel
        Left = 440
        Top = 1
        Width = 30
        Height = 25
        Align = alRight
        Caption = 'X'
        Color = clHotLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DLight
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Panel11Click
      end
    end
    object ProgressBar2: TProgressBar
      Left = 1
      Top = 118
      Width = 471
      Height = 17
      Align = alBottom
      TabOrder = 1
    end
    object Button5: TButton
      Left = 127
      Top = 76
      Width = 89
      Height = 33
      Caption = 'Select File'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 255
      Top = 76
      Width = 89
      Height = 33
      Caption = 'Sample File'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button6Click
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select Cost.DDBH,USPrice,Memo,Price.UserID,Price.UserDate,Price.' +
        'YN'
      'from CW_MatCostMonth Cost'
      
        'Left join CW_MatCostMonth_Price Price on Cost.KCYEAR=Price.KCYEA' +
        'R and Cost.KCMONTH=Price.KCMonth'
      'where Cost.KCYEAR='#39'2023'#39' and Cost.KCMONTH='#39'12'#39
      
        'Group by Cost.DDBH,USPrice,Memo,Price.UserID,Price.UserDate,Pric' +
        'e.YN'
      'Order by Cost. DDBH'
      '')
    UpdateObject = UpdateSQL1
    Left = 272
    Top = 200
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Size = 2
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.CW_MatCostMonth.DDBH'
      FixedChar = True
      Size = 50
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      Origin = 'DB.CW_MatCostMonth_Price.USPrice'
      DisplayFormat = '##,#0.00'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.CW_MatCostMonth_Price.Memo'
      FixedChar = True
      Size = 100
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.CW_MatCostMonth_Price.UserID'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.CW_MatCostMonth_Price.UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CW_MatCostMonth_Price.YN'
      FixedChar = True
      Size = 1
    end
    object Query1Price: TCurrencyField
      FieldName = 'Price'
      DisplayFormat = '##,#0.00'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CW_MatCostMonth_Price'
      'SET'
      '      USPrice = :USPrice,'
      '      Memo = :Memo,'
      '      UserID = :UserID,'
      '      UserDate = :UserDate,'
      '      YN = :YN'
      
        ' WHERE KCYEAR = :OLD_KCYEAR AND KCMONTH = :OLD_KCMONTH AND DDBH ' +
        '= :OLD_DDBH'
      '')
    InsertSQL.Strings = (
      'insert into CW_MatCostMonth_Price'
      '  (KCYEAR, KCMONTH, DDBH, USPrice, Memo, UserID, UserDate, YN)'
      'values'
      
        '  (:KCYEAR, :KCMONTH, :DDBH, :USPrice, :Memo, :UserID, :UserDate' +
        ', :YN)')
    DeleteSQL.Strings = (
      'delete from CW_MatCostMonth_Price'
      
        'WHERE KCYEAR = :OLD_KCYEAR AND KCMONTH = :OLD_KCMONTH AND DDBH =' +
        ' :OLD_DDBH')
    Left = 272
    Top = 233
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 265
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = Delete1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
    object CopyPrice1: TMenuItem
      Caption = 'Copy Price'
      Enabled = False
      OnClick = CopyPrice1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 304
    Top = 200
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel Files|*.xls'
    Left = 338
    Top = 200
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#LastCGBJ'#39') is not null  '
      'begin   drop table #LastCGBJ end   '
      
        'select * into #LastCGBJ from (select CLBH,USPRICE,VNPRICE from (' +
        ' select CGBJS.BJNO,CLBH,USPRICE,VNPRICE,ROW_NUMBER() over (PARTI' +
        'TION BY CLBH ORDER BY CGBJS.BJNO DESC) as  rn from CGBJS,CGBJ wh' +
        'ere CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='#39'VA12'#39'  '
      ') A where A.rn=1 ) CGBJS')
    Left = 240
    Top = 200
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel Files|*.XLS;*.XLSX'
    Left = 288
    Top = 384
  end
  object Qry_Import: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#LastCGBJ'#39') is not null  '
      'begin   drop table #LastCGBJ end   '
      
        'select * into #LastCGBJ from (select CLBH,USPRICE,VNPRICE from (' +
        ' select CGBJS.BJNO,CLBH,USPRICE,VNPRICE,ROW_NUMBER() over (PARTI' +
        'TION BY CLBH ORDER BY CGBJS.BJNO DESC) as  rn from CGBJS,CGBJ wh' +
        'ere CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='#39'VA12'#39'  '
      ') A where A.rn=1 ) CGBJS')
    Left = 232
    Top = 232
  end
end
