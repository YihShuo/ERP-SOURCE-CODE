object Material_CLZL: TMaterial_CLZL
  Left = 580
  Top = 133
  Width = 989
  Height = 675
  Caption = 'Material_CLZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 973
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 88
      Top = 16
      Width = 32
      Height = 13
      Caption = 'CLDH:'
    end
    object Label2: TLabel
      Left = 288
      Top = 16
      Width = 37
      Height = 13
      Caption = 'YWPM:'
    end
    object Label3: TLabel
      Left = 480
      Top = 16
      Width = 37
      Height = 13
      Caption = 'ZWPM:'
    end
    object Edit1: TEdit
      Left = 136
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 336
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 528
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 672
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 973
    Height = 579
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 400
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 400
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 192
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CLDH, YWPM, ZWPM FROM CLZL where 1=2')
    Left = 224
    Top = 232
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
  end
end
