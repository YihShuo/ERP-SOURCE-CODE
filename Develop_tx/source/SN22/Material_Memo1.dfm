object Material_Memo: TMaterial_Memo
  Left = 403
  Top = 228
  Width = 830
  Height = 454
  Caption = 'Material_Memo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 48
    Width = 814
    Height = 367
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 187
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 176
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 190
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 16
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat No:'
    end
    object Label2: TLabel
      Left = 233
      Top = 16
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat Name:'
    end
    object CLDHEdit: TEdit
      Left = 67
      Top = 13
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object YWPMEdit: TEdit
      Left = 305
      Top = 13
      Width = 130
      Height = 24
      TabOrder = 1
    end
    object Button1: TButton
      Left = 467
      Top = 8
      Width = 74
      Height = 30
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        ' select CLDH,ZWPM,YWPM,DWBH,CQDH,CLZL_Memo.Memo,CLZL_Memo.USERID' +
        ',CLZL_Memo.USERDATE,CLZL_Memo.YN from CLZL '
      ' left join CLZL_Memo on CLZL_Memo.CLBH = CLZL.CLDH'
      ' where 1=2')
    UpdateObject = UpdateSQL1
    Left = 85
    Top = 256
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 85
    Top = 224
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 117
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 272
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
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
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 86
    Top = 288
  end
end
