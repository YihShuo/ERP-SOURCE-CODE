object OrderList: TOrderList
  Left = 347
  Top = 169
  Width = 1386
  Height = 500
  Caption = 'OrderList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 915
    Top = 6
    Width = 177
    Height = 16
    AutoSize = False
    Caption = 'Da xuat hang'#24050#20986#36008
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 914
    Top = 39
    Width = 194
    Height = 16
    AutoSize = False
    Caption = '7 Ngay Xuat Hang'#19971#22825#20839#35201#20986#36008
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 1015
    Top = 2
    Width = 107
    Height = 16
    AutoSize = False
    Caption = 'Da Xuat Hang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 1016
    Top = 15
    Width = 107
    Height = 16
    AutoSize = False
    Caption = #24050#20986#36008
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 1014
    Top = 2
    Width = 107
    Height = 16
    AutoSize = False
    Caption = 'Da Xuat Hang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 1015
    Top = 15
    Width = 107
    Height = 16
    AutoSize = False
    Caption = #24050#20986#36008
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 97
    Width = 1235
    Height = 364
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16761281
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <
          item
            FieldName = 'SCBH'
            ValueType = fvtCount
          end>
        Title.Alignment = taCenter
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Alignment = taCenter
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Color'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Alignment = taCenter
        Width = 134
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Article Name'
        Width = 184
      end
      item
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Alignment = taCenter
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'XX'
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Title.Caption = 'DD'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Country'
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'XTMH'
        Footers = <>
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'Dest'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Width = 42
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'InDate'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Status'
        Footers = <>
        Width = 54
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'UserDate_Status'
        Footers = <>
        Width = 105
      end>
  end
  object DBGrid2: TDBGridEh
    Left = 1235
    Top = 97
    Width = 135
    Height = 364
    Align = alRight
    DataSource = DS2
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16755884
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Caption = 'CC'
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 54
      end>
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 97
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = -12
      Top = 28
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 153
      Top = 28
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 1
      Top = 68
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 592
      Top = 68
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 295
      Top = 28
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 156
      Top = 68
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DAOMH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 295
      Top = 68
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XTMH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 814
      Top = 31
      Width = 109
      Height = 15
      AutoSize = False
      Caption = 'Dang Nhap Kho'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 816
      Top = 2
      Width = 83
      Height = 16
      AutoSize = False
      Caption = 'Nhap Kho OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 957
      Top = 2
      Width = 107
      Height = 16
      AutoSize = False
      Caption = 'Da Xuat Hang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 957
      Top = 32
      Width = 132
      Height = 16
      AutoSize = False
      Caption = 'RY 7 Ngay Xuat Hang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 816
      Top = 16
      Width = 48
      Height = 16
      AutoSize = False
      Caption = #20837#24235'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 813
      Top = 45
      Width = 109
      Height = 16
      AutoSize = False
      Caption = #20837#24235#20013
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 958
      Top = 15
      Width = 48
      Height = 16
      AutoSize = False
      Caption = #24050#20986#36008
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 957
      Top = 46
      Width = 92
      Height = 16
      AutoSize = False
      Caption = #19971#22825#20839#35201#20986#36008
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 1134
      Top = 2
      Width = 178
      Height = 16
      AutoSize = False
      Caption = 'Qua han CRD chua xuat hang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 1134
      Top = 16
      Width = 107
      Height = 16
      AutoSize = False
      Caption = #36229#36942#20132#26399#26410#20986#36008
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 1134
      Top = 31
      Width = 240
      Height = 16
      AutoSize = False
      Caption = 'Qua han CRD nha may chua hoan thanh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 1134
      Top = 45
      Width = 107
      Height = 16
      AutoSize = False
      Caption = #36229#36942#20132#26399#26410#23436#25104
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 812
      Top = 61
      Width = 89
      Height = 16
      AutoSize = False
      Caption = 'Kiem Hang OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 813
      Top = 75
      Width = 52
      Height = 16
      AutoSize = False
      Caption = #39511#36008'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 957
      Top = 60
      Width = 87
      Height = 16
      AutoSize = False
      Caption = 'Kiem Hang NG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 958
      Top = 74
      Width = 63
      Height = 16
      AutoSize = False
      Caption = #39511#36008#30064#24120
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 96
      Width = 320
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 62
      Top = 24
      Width = 89
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 210
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object CBX2: TComboBox
      Left = 515
      Top = 64
      Width = 73
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        '2006'
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
    object CBX3: TComboBox
      Left = 633
      Top = 64
      Width = 57
      Height = 24
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
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
    object Button1: TButton
      Left = 690
      Top = 62
      Width = 70
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 336
      Top = 24
      Width = 90
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
      OnKeyPress = Edit3KeyPress
    end
    object Button2: TButton
      Left = 690
      Top = 20
      Width = 70
      Height = 33
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
    object Edit4: TEdit
      Left = 63
      Top = 64
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit5: TEdit
      Left = 210
      Top = 64
      Width = 82
      Height = 24
      TabOrder = 9
    end
    object RadioButton1: TRadioButton
      Left = 431
      Top = 28
      Width = 63
      Height = 17
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object BuyNoEdit: TEdit
      Left = 500
      Top = 24
      Width = 63
      Height = 24
      TabOrder = 11
    end
    object RB1: TRadioButton
      Left = 431
      Top = 68
      Width = 82
      Height = 17
      Caption = 'ETD Year:'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      TabStop = True
    end
    object Edit6: TEdit
      Left = 337
      Top = 64
      Width = 91
      Height = 24
      TabOrder = 13
    end
    object RadioButton2: TRadioButton
      Left = 565
      Top = 28
      Width = 109
      Height = 17
      Caption = 'Check image'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
  end
  object QueryExcel: TQuery
    DatabaseName = 'DB'
    Left = 760
    Top = 248
  end
  object DS1: TDataSource
    DataSet = OrdMas
    Left = 168
    Top = 344
  end
  object OrdMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao,KF' +
        'ZL.KFJC,'
      
        'LBZLS.YWSM,DDZL.CCGB as DDCC ,DDZL.DDZT,SCZL.Qty as Qty,DDZL.Art' +
        'icle,'
      
        'DDZL.ShipDate,XXZL.CCGB as XXCC,XXZL.XieMing,XXZL.DAOMH,XXZL.XTM' +
        'H,DDZL.BUYNO,DDZL.KHPO,DDZL.Dest,CASE WHEN COUNT(YWCP.SB) < COUN' +
        'T(*) THEN NULL ELSE MAX(YWCP.SB) END AS SB,CASE WHEN COUNT(YWCP.' +
        'INDATE) < COUNT(*) THEN NULL ELSE MAX(YWCP.INDATE) END AS InDate' +
        ','
      
        'CASE WHEN COUNT(CASE WHEN YWCP.SB IS NULL THEN 1 END) > 0 AND CO' +
        'UNT(CASE WHEN YWCP.SB IS NOT NULL THEN 1 END) > 0 THEN '#39'YELLOW'#39' ' +
        'END AS SB_STATUS,'
      
        'DDZL_PASS.Fails as Status, MAX(DDZL_PASS.USERDATE) as UserDate_S' +
        'tatus'
      'from SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH '
      'left join DDZL  on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.Dest'
      'left join KFZL on KFZl.KFDH=DDZl.KHBH'
      'left join YWCP  on SCZL.SCBH = YWCP.DDBH'
      'left join DDZL_PASS on ddzl.DDBH=DDZL_PASS.DDBH'
      'group by '
      '    SCZL.SCBH, SCZL.ZLBH, DDZL.DDZT, LBZLS.YWSM,'
      '    DDZL.XieXing, DDZL.SheHao, DDZL.CCGB, KFZL.KFJC,'
      '    SCZL.Qty, DDZL.Article, DDZL.ShipDate,'
      '    XXZL.CCGB, XXZL.XieMing, XXZL.DAOMH, XXZL.XTMH,'
      
        '    DDZL.BUYNO, DDZL.KHPO, DDZL.Dest,DDZL_PASS.Fails,DDZL_PASS.U' +
        'SERDATE'
      'order by SCZL.SCBH')
    Left = 168
    Top = 312
    object OrdMasSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object OrdMasZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object OrdMasKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object OrdMasXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object OrdMasSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object OrdMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object OrdMasXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object OrdMasQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object OrdMasDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object OrdMasXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 1
    end
    object OrdMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object OrdMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object OrdMasYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object OrdMasDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object OrdMasXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object OrdMasBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object OrdMasKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object OrdMasDest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 4
    end
    object OrdMasSB: TStringField
      FieldName = 'SB'
    end
    object OrdMasInDate: TDateTimeField
      FieldName = 'InDate'
    end
    object OrdMasStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 5
    end
    object OrdMasUserDate_Status: TDateTimeField
      FieldName = 'UserDate_Status'
    end
    object OrdMasSB_STATUS: TStringField
      FieldName = 'SB_STATUS'
      FixedChar = True
      Size = 6
    end
  end
  object DS2: TDataSource
    DataSet = OrdDet
    Left = 728
    Top = 200
  end
  object OrdDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select DDZLs.DDBH,XXZLS3.US_Size as DDCC,XXZLS3.US_Size as XXCC,'
      '         DDZLs.Quantity  as Qty'
      'from DDZLs '
      
        'left join XXZLS3  on  XXZLS3.XieXing='#39'103720(VN)'#39' and DDZLS.CC=X' +
        'XZLS3.US_Size'
      'where DDZLs.DDBH='#39'VN-292A'#39
      'and DDZLs.Quantity<>0  ')
    Left = 760
    Top = 200
    object OrdDetDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.DDZLs.DDBH'
      FixedChar = True
      Size = 15
    end
    object OrdDetDDCC: TStringField
      FieldName = 'DDCC'
      Origin = 'DB.XXZLS3.US_Size'
      FixedChar = True
      Size = 6
    end
    object OrdDetXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.XXZLS3.US_Size'
      FixedChar = True
      Size = 6
    end
    object OrdDetQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.DDZLs.Quantity'
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 200
    Top = 232
    object N1: TMenuItem
      Caption = 'N1 Preview Spec'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'N2 Preview Packing List'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'N3 Excel'
      OnClick = N3Click
    end
  end
  object YWDDTP: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select  * '
      'from YWDDTP '
      'where DDBH=:SCBH'
      'order by XH')
    Left = 267
    Top = 231
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCBH'
        ParamType = ptUnknown
      end>
  end
  object SpecMas: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select YWDD.DDBH, YWDD.YSBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMi' +
        'ng,DDZL.DDZT,DDZL.KHPO,LBZLS.YWSM as Country,  YWDD.KHDDBH1,'
      
        '       YWDD.Qty,DDZL.Article,YWDD.ETD,XXZL.CCGB as XXCC,DDZL.CCG' +
        'B as DDCC,KFZL.KFJC,XXZL.IMGName,'
      
        '       (select Top 1 DDBH from YWBZPOS where YWBZPOS.DDBH=YWDD.D' +
        'DBH ) as Packing,'
      
        '       (select top 1 DDBH from YWDDMT where YWDDMT.DDBH=YWDD.DDB' +
        'H )  as DDMT,'
      
        '       (select top 1 DDBH from YWDDBZ where YWDDBZ.DDBH=YWDD.DDB' +
        'H )  as DDBZ, xxzl.YSSM'
      'from YWDD'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH '
      'left join ZLZL  on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      'where DDZL.DDBH=:SCBH')
    Left = 232
    Top = 232
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object SpecMasDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SpecMasSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object SpecMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SpecMasXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SpecMasQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object SpecMasETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SpecMasXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 1
    end
    object SpecMasDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object SpecMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object SpecMasKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object SpecMasPacking: TStringField
      FieldName = 'Packing'
      FixedChar = True
      Size = 15
    end
    object SpecMasDDMT: TStringField
      FieldName = 'DDMT'
      FixedChar = True
      Size = 15
    end
    object SpecMasDDBZ: TStringField
      FieldName = 'DDBZ'
      FixedChar = True
      Size = 15
    end
    object SpecMasKHDDBH1: TStringField
      FieldName = 'KHDDBH1'
      FixedChar = True
      Size = 30
    end
    object SpecMasKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object SpecMasCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object SpecMasYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 728
    Top = 248
  end
end
