object NotiChangeUser: TNotiChangeUser
  Left = 718
  Top = 319
  Width = 454
  Height = 325
  Caption = 'Noti Change User'
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
    Width = 438
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
    Width = 438
    Height = 197
    Align = alClient
    DataSource = DS_NCI
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
        FieldName = 'USERID'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'USERNAME'
        Footers = <>
        Width = 200
      end>
  end
  object DS_NCI: TDataSource
    DataSet = QryNCI
    Left = 368
    Top = 160
  end
  object QryNCI: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 192
    object QryNCIUSERID: TStringField
      FieldName = 'USERID'
    end
    object QryNCIUSERNAME: TStringField
      FieldName = 'USERNAME'
    end
  end
end
