object NotiChangeDepartment: TNotiChangeDepartment
  Left = 662
  Top = 344
  Width = 501
  Height = 340
  Caption = 'Noti Change Department'
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
    Width = 485
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 10
      Width = 21
      Height = 20
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 103
      Top = 12
      Width = 46
      Height = 20
      Caption = 'Name:'
    end
    object Button1: TButton
      Left = 320
      Top = 4
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 37
      Top = 8
      Width = 57
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 159
      Top = 7
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 485
    Height = 212
    Align = alClient
    DataSource = DS_NCD
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 70
      end>
  end
  object DS_NCD: TDataSource
    DataSet = QryNCD
    Left = 368
    Top = 160
  end
  object QryNCD: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 192
    object QryNCDID: TStringField
      FieldName = 'ID'
    end
    object QryNCDDepName: TStringField
      FieldName = 'DepName'
    end
    object QryNCDDepMemo: TStringField
      FieldName = 'DepMemo'
    end
    object QryNCDGSBH: TStringField
      FieldName = 'GSBH'
    end
  end
end
