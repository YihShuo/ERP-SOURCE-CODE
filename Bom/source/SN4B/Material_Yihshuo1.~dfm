object Material_Customer_Select: TMaterial_Customer_Select
  Left = 267
  Top = 310
  Width = 1194
  Height = 630
  Caption = 'Material Customer'
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
    Width = 1178
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 88
      Top = 16
      Width = 31
      Height = 13
      Caption = 'CLBH:'
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
    Width = 1178
    Height = 534
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
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Vendor'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Colorcode'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'ColorName'
        Footers = <>
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 300
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
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 192
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'SELECT * FROM CLZL_Customer')
    Left = 224
    Top = 224
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
    end
    object Query1Vendor: TStringField
      FieldName = 'Vendor'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 255
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 255
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1Colorcode: TStringField
      FieldName = 'Colorcode'
      FixedChar = True
      Size = 100
    end
    object Query1ColorName: TStringField
      FieldName = 'ColorName'
      FixedChar = True
      Size = 100
    end
  end
end
