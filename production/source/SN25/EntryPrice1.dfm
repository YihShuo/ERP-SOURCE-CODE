object EntryPrice: TEntryPrice
  Left = 1051
  Top = 455
  Width = 758
  Height = 351
  Caption = 'Entry Price'
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
    Width = 742
    Height = 271
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
        FieldName = 'GSBH'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 62
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
        FieldName = 'USERDATE'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Width = 38
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
    Width = 742
    Height = 41
    Align = alTop
    TabOrder = 1
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
    object Label3: TLabel
      Left = 224
      Top = 8
      Width = 379
      Height = 13
      Caption = 
        'IsComputer = 1 : USprice khong co du lieu, USPrice ben duoi la V' +
        'nprice / Ty gia'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ReplenishCon.DS1
    SQL.Strings = (
      
        'select KCRK.GSBH, KCRKS.RKNO,KCRKS.CLBH,KCRKS.VNPrice,ROUND(ISNU' +
        'LL(KCRKS.USPrice, KCRKS.VNPrice / 26270),4) as USPrice,KCRK.USER' +
        'DATE ,KCRKS.RKSB'
      
        ',CASE WHEN KCRKS.USPrice IS NULL THEN 1 ELSE 0 END as IsComputed' +
        ' '
      'from KCRKS '
      'left join KCRK on KCRKS.RKNO=KCRK.RKNO'
      'where  KCRKS.CLBH='#39'A110030801'#39' '
      'ORDER BY KCRK.RKNO desc ')
    Left = 96
    Top = 72
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
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1RKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1IsComputed: TIntegerField
      FieldName = 'IsComputed'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 72
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 296
    Top = 8
  end
end
