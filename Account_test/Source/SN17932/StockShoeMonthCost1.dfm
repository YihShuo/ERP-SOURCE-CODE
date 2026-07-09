object StockShoeMonthCost: TStockShoeMonthCost
  Left = 446
  Top = 140
  Width = 1555
  Height = 675
  Caption = 'StockShoeMonthCost'
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
    Width = 1539
    Height = 636
    ActivePage = TS_OrderACC
    Align = alClient
    TabOrder = 0
    object TS_OrderACC: TTabSheet
      Caption = 'Shoe Month Stock Cost'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1531
        Height = 42
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 5
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 245
          Top = 13
          Width = 22
          Height = 16
          Caption = 'RY:'
        end
        object Label14: TLabel
          Left = 11
          Top = 11
          Width = 32
          Height = 16
          Caption = 'Year:'
        end
        object Label15: TLabel
          Left = 126
          Top = 11
          Width = 39
          Height = 16
          Caption = 'Month:'
        end
        object Label5: TLabel
          Left = 625
          Top = 12
          Width = 94
          Height = 16
          Caption = 'DA CONFIRM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object edt_RYACC: TEdit
          Left = 270
          Top = 10
          Width = 141
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 0
        end
        object btn_QueryACC: TButton
          Left = 430
          Top = 3
          Width = 89
          Height = 30
          Caption = 'Query'
          TabOrder = 1
          OnClick = btn_QueryACCClick
        end
        object cbx_YearACC: TComboBox
          Left = 47
          Top = 9
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 2
          Text = '2017'
        end
        object cbx_MonthACC: TComboBox
          Left = 167
          Top = 9
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 3
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
        object btn_MonthlyACC: TButton
          Left = 737
          Top = 3
          Width = 89
          Height = 30
          Caption = 'Monthly'
          TabOrder = 4
          OnClick = btn_MonthlyACCClick
        end
        object btn_ExcelACC: TButton
          Left = 526
          Top = 3
          Width = 87
          Height = 30
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btn_ExcelACCClick
        end
        object btn_PrintACC: TButton
          Left = 832
          Top = 3
          Width = 87
          Height = 30
          Caption = 'Print'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnClick = btn_PrintACCClick
        end
        object Button1: TButton
          Left = 929
          Top = 3
          Width = 89
          Height = 30
          Caption = 'Confirm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnClick = Button1Click
        end
        object Button4: TButton
          Left = 1030
          Top = 3
          Width = 89
          Height = 30
          Caption = 'UnConfirm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Visible = False
          OnClick = Button4Click
        end
      end
      object DBG_StockACC: TDBGridEh
        Left = 0
        Top = 42
        Width = 1531
        Height = 563
        Align = alClient
        DataSource = DS_ACC_Stock
        Flat = False
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'CHI LENH DUNG|RY '#27491#30906
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'LastQty'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON DAU '#21021#26399#24235#23384'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'LastACC'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON DAU '#21021#26399#24235#23384'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Last_MatCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON DAU '#21021#26399#24235#23384'|VAT TU '#29289#36039
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Last_LaborCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON DAU '#21021#26399#24235#23384'|PHI 622 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Last_FacCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON DAU '#21021#26399#24235#23384'|PHI 627 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'NHAP '#20837'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RKACC'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'NHAP '#20837'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RK_MatCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'NHAP '#20837'|VAT TU '#29289#36039
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RK_LaborCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'NHAP '#20837'|PHI 622 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RK_FacCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'NHAP '#20837'|PHI 627 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CKQty'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'XUAT '#20986'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'CKACC'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'XUAT '#20986'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CK_MatCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'XUAT '#20986'|VAT TU '#29289#36039
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CK_LaborCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'XUAT '#20986'|PHI 622 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CK_FacCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'XUAT '#20986'|PHI 627 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CUOI '#26399#26411#24235#23384'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CUOI '#26399#26411#24235#23384'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Rem_MatCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CUOI '#26399#26411#24235#23384'|VAT TU '#29289#36039
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Rem_LaborCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CUOI '#26399#26411#24235#23384'|PHI 622 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Rem_FacCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CUOI '#26399#26411#24235#23384'|PHI 627 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Xuong'
            Footers = <>
            Title.Caption = 'XUONG'
            Width = 90
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Monthly Stock Cost'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1531
        Height = 42
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 241
          Top = 14
          Width = 22
          Height = 16
          Caption = 'RY:'
        end
        object Label12: TLabel
          Left = 7
          Top = 12
          Width = 32
          Height = 16
          Caption = 'Year:'
        end
        object Label13: TLabel
          Left = 122
          Top = 12
          Width = 39
          Height = 16
          Caption = 'Month:'
        end
        object Edt_RY1: TEdit
          Left = 266
          Top = 11
          Width = 140
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 0
        end
        object btn_Query: TButton
          Left = 453
          Top = 5
          Width = 89
          Height = 30
          Caption = 'Query'
          TabOrder = 1
          OnClick = btn_QueryClick
        end
        object cbx_Year: TComboBox
          Left = 43
          Top = 10
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 0
          TabOrder = 2
          Text = '2017'
        end
        object cbx_Month: TComboBox
          Left = 163
          Top = 10
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 3
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
        object btn_Monthly: TButton
          Left = 776
          Top = 5
          Width = 89
          Height = 30
          Caption = 'Monthly'
          TabOrder = 4
          OnClick = btn_MonthlyClick
        end
        object Button3: TButton
          Left = 549
          Top = 5
          Width = 87
          Height = 30
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button3Click
        end
      end
      object DBG_MonthStock: TDBGridEh
        Left = 0
        Top = 42
        Width = 1531
        Height = 563
        Align = alClient
        DataSource = DS_MonthStock
        Flat = False
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'CHI LENH DUNG|RY '#35330#21934
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CK '#26399#26411#24235#23384'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CK '#26399#26411#24235#23384'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Rem_MatCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CK '#26399#26411#24235#23384'|VAT TU '#29289#36039
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Rem_LaborCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CK '#26399#26411#24235#23384'|PHI 622 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Rem_FacCost'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TON CK '#26399#26411#24235#23384'|PHI 627 '#36027#29992
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Xuong'
            Footers = <>
            Title.Caption = 'XUONG|'#24288#21029
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01T'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '30 '#22825#20197#20839'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC01T'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '30 '#22825#20197#20839'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02T'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '31~60 '#22825'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC02T'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '31~60 '#22825'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03T'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '61~90 '#22825'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC03T'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '61~90 '#22825'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04T'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '91~120 '#22825'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC04T'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '91~120 '#22825'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05T'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '121~150 '#22825'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC05T'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '121~150 '#22825'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06T'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '151~180 '#22825'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC06T'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '151~180 '#22825'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemQty07T'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '181~360 '#22825'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC07T'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '181~360 '#22825'|T.TIEN '#37329#38989
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemQty08T'
            Footer.DisplayFormat = '#,##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '361 '#22825#20197#19978'|SL '#25976#37327
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RemACC08T'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '361 '#22825#20197#19978'|T.TIEN '#37329#38989
            Width = 100
          end>
      end
    end
  end
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 54
    Top = 177
  end
  object Qry_MonthStock: TQuery
    AfterOpen = Qry_MonthStockAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CM.KCYEAR,CM.KCMONTH,CM.DDBH,CM.RemQty,CM.RemACC,CWDDZL.R' +
        'em_MatCost,CWDDZL.Rem_LaborCost,CWDDZL.Rem_FacCost,FACDFL.DFL as' +
        ' Xuong'
      
        '       ,RemQty01T,RemACC01T,RemQty02T,RemACC02T,RemQty03T,RemACC' +
        '03T,RemQty04T,RemACC04T,RemQty05T,RemACC05T'
      
        #9'     ,RemQty06T,RemACC06T,RemQty07T,RemACC07T,RemQty08T,RemACC0' +
        '8T'
      'FROM CWDDZL_Mon CM'
      
        'LEFT JOIN CWDDZL ON CWDDZL.KCYEAR=CM.KCYEAR AND CWDDZL.KCMONTH=C' +
        'M.KCMONTH AND CWDDZL.DDBH=CM.DDBH'
      'LEFT JOIN FACDFL on CM.CKBH= FACDFL.CKBH'
      'WHERE CM.KCYEAR='#39'2024'#39' AND CM.KCMONTH='#39'01'#39)
    Left = 237
    Top = 175
    object Qry_MonthStockKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Qry_MonthStockKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Qry_MonthStockDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 50
    end
    object Qry_MonthStockRemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '#,##0.00'
    end
    object Qry_MonthStockRemACC: TCurrencyField
      FieldName = 'RemACC'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRem_MatCost: TCurrencyField
      FieldName = 'Rem_MatCost'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRem_LaborCost: TCurrencyField
      FieldName = 'Rem_LaborCost'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRem_FacCost: TCurrencyField
      FieldName = 'Rem_FacCost'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockXuong: TStringField
      FieldName = 'Xuong'
      FixedChar = True
      Size = 50
    end
    object Qry_MonthStockRemQty01T: TCurrencyField
      FieldName = 'RemQty01T'
      DisplayFormat = '#,##0.00'
    end
    object Qry_MonthStockRemACC01T: TCurrencyField
      FieldName = 'RemACC01T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemQty02T: TCurrencyField
      FieldName = 'RemQty02T'
      DisplayFormat = '#,##0.00'
    end
    object Qry_MonthStockRemACC02T: TCurrencyField
      FieldName = 'RemACC02T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemQty03T: TCurrencyField
      FieldName = 'RemQty03T'
      DisplayFormat = '#,##0.00'
    end
    object Qry_MonthStockRemACC03T: TCurrencyField
      FieldName = 'RemACC03T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemQty04T: TCurrencyField
      FieldName = 'RemQty04T'
      DisplayFormat = '#,##0.00'
    end
    object Qry_MonthStockRemACC04T: TCurrencyField
      FieldName = 'RemACC04T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemQty05T: TCurrencyField
      FieldName = 'RemQty05T'
      DisplayFormat = '#,##0.00'
    end
    object Qry_MonthStockRemACC05T: TCurrencyField
      FieldName = 'RemACC05T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemQty06T: TCurrencyField
      FieldName = 'RemQty06T'
      DisplayFormat = '#,##0.00'
    end
    object Qry_MonthStockRemACC06T: TCurrencyField
      FieldName = 'RemACC06T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemQty07T: TCurrencyField
      FieldName = 'RemQty07T'
      DisplayFormat = '#,##0.00'
    end
    object Qry_MonthStockRemACC07T: TCurrencyField
      FieldName = 'RemACC07T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemQty08T: TCurrencyField
      FieldName = 'RemQty08T'
      DisplayFormat = '#,##0.00'
    end
    object Qry_MonthStockRemACC08T: TCurrencyField
      FieldName = 'RemACC08T'
      DisplayFormat = '#,##0'
    end
  end
  object DS_MonthStock: TDataSource
    DataSet = Qry_MonthStock
    Left = 237
    Top = 208
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.*'
    Left = 18
    Top = 176
  end
  object Qry_StockACC: TQuery
    AfterOpen = Qry_StockACCAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT KCYEAR,KCMONTH,CWDDZL.DDBH,Depot,Pairs'
      
        '       ,LastQty,(Last_MatCost+Last_LaborCost+Last_FacCost) LastA' +
        'CC,Last_MatCost,Last_LaborCost,Last_FacCost'
      
        '       ,RKQty,(RK_MatCost+RK_LaborCost+RK_FacCost) RKACC,RK_MatC' +
        'ost,RK_LaborCost,RK_FacCost'
      
        #9'     ,CKQty,(CK_MatCost+CK_LaborCost+CK_FacCost) CKACC,CK_MatCo' +
        'st,CK_LaborCost,CK_FacCost'
      
        #9'     ,RemQty,(Rem_MatCost+Rem_LaborCost+Rem_FacCost) RemACC,Rem' +
        '_MatCost,Rem_LaborCost,Rem_FacCost'
      #9'     ,Article,AnS.REMARK,DDZLWH.REMARK DDBHEX'
      'FROM CWDDZL'
      'LEFT JOIN DDZL ON DDZL.DDBH=CWDDZL.DDBH'
      
        'LEFT JOIN (select DDZLWH.DDBH,MAX(DDZLWH.REMARK)REMARK,MAX(DDZLW' +
        'H.IODate)IODate from DDZLWH_Adjust DDZLWH'
      
        '           where convert(smalldatetime,convert(varchar,DDZLWH.IO' +
        'Date,111))>= '#39'2024/01/01'#39
      
        '               and convert(smalldatetime,convert(varchar,DDZLWH.' +
        'IODate,111))<= '#39'2024/01/31'#39
      '               and DDZLWH.TP='#39'EX'#39
      
        '           GROUP BY DDZLWH.DDBH ) DDZLWH on DDZLWH.DDBH=CWDDZL.D' +
        'DBH'
      
        'LEFT JOIN (SELECT DISTINCT RY,CAST((SELECT REMARK+'#39' // '#39' FROM An' +
        'nouncementS WHERE RY=ANS.RY FOR XML PATH('#39#39'))as varchar(500)) RE' +
        'MARK  '
      '           FROM AnnouncementS ANS)AnS ON AnS.RY=CWDDZL.DDBH '
      'WHERE KCYEAR='#39'2024'#39' AND KCMONTH='#39'01'#39)
    Left = 156
    Top = 176
    object Qry_StockACCKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Qry_StockACCKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Qry_StockACCDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 50
    end
    object Qry_StockACCLastQty: TCurrencyField
      FieldName = 'LastQty'
      DisplayFormat = '#,##0.00'
    end
    object Qry_StockACCLastACC: TFloatField
      FieldName = 'LastACC'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCLast_MatCost: TFloatField
      FieldName = 'Last_MatCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCLast_LaborCost: TFloatField
      FieldName = 'Last_LaborCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCLast_FacCost: TFloatField
      FieldName = 'Last_FacCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCRKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#,##0.00'
    end
    object Qry_StockACCRKACC: TFloatField
      FieldName = 'RKACC'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCRK_MatCost: TFloatField
      FieldName = 'RK_MatCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCRK_LaborCost: TFloatField
      FieldName = 'RK_LaborCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCRK_FacCost: TFloatField
      FieldName = 'RK_FacCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCCKQty: TCurrencyField
      FieldName = 'CKQty'
      DisplayFormat = '#,##0.00'
    end
    object Qry_StockACCCKACC: TFloatField
      FieldName = 'CKACC'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCCK_MatCost: TFloatField
      FieldName = 'CK_MatCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCCK_LaborCost: TFloatField
      FieldName = 'CK_LaborCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCCK_FacCost: TFloatField
      FieldName = 'CK_FacCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCRemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '#,##0.00'
    end
    object Qry_StockACCRemACC: TFloatField
      FieldName = 'RemACC'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCRem_MatCost: TFloatField
      FieldName = 'Rem_MatCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCRem_LaborCost: TFloatField
      FieldName = 'Rem_LaborCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCRem_FacCost: TFloatField
      FieldName = 'Rem_FacCost'
      DisplayFormat = '#,##0'
    end
    object Qry_StockACCXuong: TStringField
      FieldName = 'Xuong'
    end
  end
  object DS_ACC_Stock: TDataSource
    DataSet = Qry_StockACC
    Left = 156
    Top = 208
  end
end
