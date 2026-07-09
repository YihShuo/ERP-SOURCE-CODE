object TechShoeStock: TTechShoeStock
  Left = 396
  Top = 266
  Width = 1315
  Height = 524
  Caption = 'Inventory Checking List'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1299
    Height = 485
    ActivePage = TS2
    Align = alClient
    TabOrder = 0
    object TS2: TTabSheet
      Caption = 'Stock'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1291
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 284
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sample No:'
        end
        object Label2: TLabel
          Left = -14
          Top = 16
          Width = 49
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year'
        end
        object Label13: TLabel
          Left = 118
          Top = 16
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month'
        end
        object Edit2: TEdit
          Left = 357
          Top = 14
          Width = 153
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 587
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button4: TButton
          Left = 685
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 2
          OnClick = Button4Click
        end
        object Button6: TButton
          Left = 781
          Top = 7
          Width = 89
          Height = 33
          Caption = 'Print'
          TabOrder = 3
          OnClick = Button6Click
        end
        object Button8: TButton
          Left = 991
          Top = 7
          Width = 89
          Height = 33
          Caption = 'Import'
          TabOrder = 4
          OnClick = Button8Click
        end
        object CBX1: TComboBox
          Left = 39
          Top = 12
          Width = 65
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 5
          Text = '2007'
          Items.Strings = (
            '2007'
            '2008'
            '2009'
            '2010'
            '2011'
            '2012'
            '2013'
            '2014'
            '2015'
            '2016'
            '2017'
            '2018'
            '2019'
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2025'
            '2026'
            '2027'
            '2028'
            '2029'
            '2030')
        end
        object CBX2: TComboBox
          Left = 196
          Top = 12
          Width = 67
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 6
          Text = '01'
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
        end
        object CheckBox1: TCheckBox
          Left = 520
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 7
        end
        object Button2: TButton
          Left = 877
          Top = 6
          Width = 89
          Height = 33
          Caption = 'Excel_KK'
          TabOrder = 8
          OnClick = Button2Click
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 1291
        Height = 405
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU'
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Width = 300
          end>
      end
    end
  end
  object EXEQry: TQuery
    DatabaseName = 'DB'
    Left = 408
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from ShoeTestMonth_Tech'
      'where 1=2')
    UpdateObject = UpdateSQL1
    Left = 496
    Top = 192
    object Query2KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.ShoeTestMonth_Tech.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query2KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.ShoeTestMonth_Tech.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.ShoeTestMonth_Tech.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2YPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.ShoeTestMonth_Tech.YPDH'
      FixedChar = True
      Size = 15
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      Origin = 'DB.ShoeTestMonth_Tech.Article'
      FixedChar = True
    end
    object Query2CTS: TStringField
      FieldName = 'CTS'
      Origin = 'DB.ShoeTestMonth_Tech.CTS'
      FixedChar = True
      Size = 10
    end
    object Query2Qty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.ShoeTestMonth_Tech.Qty'
    end
    object Query2Memo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.ShoeTestMonth_Tech.Memo'
      FixedChar = True
      Size = 150
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.ShoeTestMonth_Tech.UserID'
      FixedChar = True
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.ShoeTestMonth_Tech.UserDate'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.ShoeTestMonth_Tech.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 496
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 548
    Top = 195
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object DeleteAll1: TMenuItem
      Caption = 'Delete All'
      OnClick = DeleteAll1Click
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
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE ShoeTestMonth_Tech'
      'SET'
      '      Article = :Article,'
      '      Qty = :Qty,'
      '      Memo = :Memo,'
      '      UserID = :UserID,'
      '      UserDate = :UserDate'
      
        'WHERE KCYEAR = :OLD_KCYEAR AND KCMONTH = :OLD_KCMONTH AND YPDH =' +
        ' :OLD_YPDH AND CKBH = :OLD_CKBH  AND CTS = :OLD_CTS'
      '')
    DeleteSQL.Strings = (
      'Delete ShoeTestMonth_Tech'
      'From ShoeTestMonth_Tech'
      
        'WHERE KCYEAR = :OLD_KCYEAR AND KCMONTH = :OLD_KCMONTH AND YPDH =' +
        ' :OLD_YPDH AND CKBH = :OLD_CKBH  AND CTS = :OLD_CTS')
    Left = 496
    Top = 225
  end
end
