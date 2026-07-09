object CheckQuotation: TCheckQuotation
  Left = 1074
  Top = 348
  Width = 693
  Height = 349
  Caption = 'Check Quotation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 677
    Height = 269
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BJNO'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 90
      end
      item
        DisplayFormat = '#,##0.0000'
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'IsComputed'
        Footers = <>
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 60
      Height = 25
      Caption = 'Ty gia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 80
      Top = 8
      Width = 5
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 224
      Top = 8
      Width = 379
      Height = 25
      Caption = 
        'IsComputer = 1 : USprice khong co du lieu, USPrice ben duoi la V' +
        'nprice / Ty gia'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 72
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ReplenishCon.DS1
    SQL.Strings = (
      
        'select CGBJS.BJNO, CGBJS.CLBH, CGBJS.VNPrice, ROUND(ISNULL(CGBJS' +
        '.USPrice, CGBJS.VNPrice / 26270),4) as USPrice, ZSZL.ZSYWJC'
      
        ',CASE WHEN CGBJS.USPrice IS NULL THEN 1 ELSE 0 END as IsComputed' +
        ' '
      'from CGBJS '
      'left join CGBJ on CGBJS.BJNO=CGBJ.BJNO'
      'left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH '
      'where CGBJS.CLBH='#39'A070000536'#39
      'order by CGBJ.BJNO DESC '
      '')
    Left = 96
    Top = 72
    object Query1BJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1IsComputed: TIntegerField
      FieldName = 'IsComputed'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 168
    Top = 16
  end
end
