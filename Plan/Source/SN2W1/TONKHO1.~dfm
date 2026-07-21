object TONKHO: TTONKHO
  Left = 324
  Top = 277
  Width = 1305
  Height = 675
  Caption = 'TON KHO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 74
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 48
      Width = 78
      Height = 16
      Caption = 'Ma Hoa Chat'
    end
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 65
      Height = 16
      Caption = 'Phong keo'
    end
    object Label3: TLabel
      Left = 416
      Top = 24
      Width = 38
      Height = 16
      Caption = 'Don vi'
      Visible = False
    end
    object Button1: TButton
      Left = 752
      Top = 5
      Width = 113
      Height = 33
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 112
      Top = 40
      Width = 169
      Height = 24
      TabOrder = 1
    end
    object Button2: TButton
      Left = 864
      Top = 5
      Width = 113
      Height = 33
      Hint = #39023#31034#26597#35426
      Caption = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object CbbGSBH: TComboBox
      Left = 112
      Top = 8
      Width = 249
      Height = 33
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 25
      ParentFont = False
      TabOrder = 3
      Text = 'Xuong_B'
      Items.Strings = (
        'Xuong_B'
        'Xuong_A')
    end
    object CBBDep: TComboBox
      Left = 472
      Top = 8
      Width = 249
      Height = 33
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 25
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 74
    Width = 704
    Height = 562
    Align = alClient
    DataSource = DS1
    EvenRowColor = clYellow
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Xuong'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MaHoaChat'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'HanSuDung'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SoLuongNhap'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'TongDaXuat'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'TonKhoThucTe'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 100
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 704
    Top = 74
    Width = 585
    Height = 562
    Align = alRight
    DataSource = DS2
    EvenRowColor = clYellow
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MaThung'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'SoLuongNhap'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DaTru'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ConLai'
        Footers = <>
      end>
  end
  object Query1: TQuery
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '    CAST('#39#39' AS VARCHAR(20)) AS Xuong,'
      '    CAST('#39#39' AS VARCHAR(50)) AS MaHoaChat,'
      '    CAST(GETDATE() AS DATETIME) AS HanSuDung,'
      '    CAST(0.0 AS FLOAT) AS SoLuongNhap,'
      '    CAST(0.0 AS FLOAT) AS TongDaXuat,'
      '    CAST(0.0 AS FLOAT) AS TonKhoThucTe'
      'WHERE 1 = 0')
    Left = 208
    Top = 136
    object Query1Xuong: TStringField
      FieldName = 'Xuong'
      FixedChar = True
    end
    object Query1MaHoaChat: TStringField
      FieldName = 'MaHoaChat'
      FixedChar = True
      Size = 50
    end
    object Query1HanSuDung: TDateTimeField
      FieldName = 'HanSuDung'
    end
    object Query1SoLuongNhap: TFloatField
      FieldName = 'SoLuongNhap'
    end
    object Query1TongDaXuat: TFloatField
      FieldName = 'TongDaXuat'
    end
    object Query1TonKhoThucTe: TFloatField
      FieldName = 'TonKhoThucTe'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 136
  end
  object Up: TUpdateSQL
    ModifySQL.Strings = (
      'update Ch_formula'
      'set'
      '  HC1 = :HC1,'
      '  HC2 = :HC2,'
      '  HC3 = :HC3,'
      '  TL1 = :TL1,'
      '  TL2 = :TL2,'
      '  TL3 = :TL3,'
      '  Name = :Name'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into Ch_formula'
      '  (ID, HC1, HC2, HC3, TL1, TL2, TL3, Name)'
      'values'
      '  (:ID, :HC1, :HC2, :HC3, :TL1, :TL2, :TL3, :Name)')
    DeleteSQL.Strings = (
      'delete from Ch_formula'
      'where'
      '  ID = :OLD_ID and'
      '  HC1 = :OLD_HC1 and'
      '  HC2 = :OLD_HC2 and'
      '  HC3 = :OLD_HC3 and'
      '  TL1 = :OLD_TL1 and'
      '  TL2 = :OLD_TL2 and'
      '  TL3 = :OLD_TL3 and'
      '  Name = :OLD_Name')
    Left = 292
    Top = 136
  end
  object temp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  * from Ch_formula')
    UpdateObject = Up
    Left = 520
    Top = 40
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 768
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '    CAST('#39#39' AS VARCHAR(50)) AS MaThung,'
      '    CAST(0.0 AS FLOAT) AS SoLuongNhap,'
      '    CAST(0.0 AS FLOAT) AS DaTru,'
      '    CAST(0.0 AS FLOAT) AS ConLai'
      'WHERE 1 = 0')
    Left = 768
    Top = 208
    object Query2MaThung: TStringField
      FieldName = 'MaThung'
      FixedChar = True
      Size = 50
    end
    object Query2SoLuongNhap: TFloatField
      FieldName = 'SoLuongNhap'
    end
    object Query2DaTru: TFloatField
      FieldName = 'DaTru'
    end
    object Query2ConLai: TFloatField
      FieldName = 'ConLai'
    end
  end
end
