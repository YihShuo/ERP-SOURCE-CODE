object Reason: TReason
  Left = 946
  Top = 306
  Width = 700
  Height = 500
  Caption = 'Reason'
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
    Width = 684
    Height = 41
    Align = alTop
    TabOrder = 0
    object Reason: TLabel
      Left = 16
      Top = 8
      Width = 51
      Height = 16
      Caption = 'Reason:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 72
      Top = 8
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object Search: TButton
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 1
      OnClick = SearchClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 684
    Height = 420
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
        FieldName = 'Reason'
        Footers = <>
        Width = 500
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from Reason')
    Left = 368
    Top = 112
    object Query1Reason: TStringField
      FieldName = 'Reason'
      FixedChar = True
      Size = 255
    end
    object Query1Location: TStringField
      FieldName = 'Location'
      FixedChar = True
    end
    object Query1YN: TIntegerField
      FieldName = 'YN'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 112
  end
end
