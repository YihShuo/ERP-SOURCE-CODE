object FlexCodeHistory: TFlexCodeHistory
  Left = 350
  Top = 234
  Width = 507
  Height = 395
  Caption = 'FlexCodeHistory'
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
    Top = 0
    Width = 491
    Height = 356
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'VER'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Title.Caption = 'ERP Code'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CLDHFLEX'
        Footers = <>
        Title.Caption = 'Flex Code'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 170
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 136
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = FlexCode.DataSource2
    Left = 176
    Top = 136
  end
end
