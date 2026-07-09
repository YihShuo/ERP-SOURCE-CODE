object MaterialHistory: TMaterialHistory
  Left = 677
  Top = 308
  Width = 736
  Height = 388
  BorderIcons = [biSystemMenu]
  Caption = 'History'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 720
    Height = 349
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ReadOnly = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Type'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 100
      end
      item
        DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Title.Caption = 'Update Time'
      end
      item
        DisplayFormat = '###,###,##0.0'
        EditButtons = <>
        FieldName = 'Usage'
        Footers = <>
        Width = 60
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'ArrivalDate'
        Footers = <>
        Title.Caption = 'Arrival Date'
        Width = 100
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'Reason'
        Footers = <>
        Width = 150
        OnEditButtonClick = DBGridEh1Columns4EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 150
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * from schedule_materials')
    UpdateObject = UpSQL1
    Left = 16
    Top = 88
    object Query1Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1ArrivalDate: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object Query1Usage: TFloatField
      FieldName = 'Usage'
    end
    object Query1Reason: TStringField
      FieldName = 'Reason'
      FixedChar = True
      Size = 255
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 255
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 56
  end
  object UpSQL1: TUpdateSQL
    Left = 96
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 96
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
    end
  end
end
