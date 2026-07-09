object ScanoutO: TScanoutO
  Left = 261
  Top = 343
  Width = 1671
  Height = 675
  Caption = 'Scan Out De'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1655
    Height = 72
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1232
      Top = 29
      Width = 105
      Height = 29
      AutoSize = False
      Caption = 'Scan Out'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 888
      Top = 32
      Width = 70
      Height = 18
      Caption = 'Don Hang'
    end
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 116
      Height = 24
      Caption = 'Quet ma QR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 395
      Top = 11
      Width = 91
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ten Ke:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 395
      Top = 35
      Width = 91
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ma ke:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 136
      Top = 8
      Width = 241
      Height = 57
      Caption = 'Panel1'
      TabOrder = 0
      object Edit1: TEdit
        Left = 8
        Top = 8
        Width = 225
        Height = 45
        AutoSize = False
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
    end
    object Button2: TButton
      Left = 1144
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 968
      Top = 24
      Width = 169
      Height = 26
      TabOrder = 2
    end
    object Button4: TButton
      Left = 722
      Top = 23
      Width = 135
      Height = 32
      Caption = 'Chon Ke'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button4Click
    end
    object Edit2: TEdit
      Left = 504
      Top = 8
      Width = 209
      Height = 26
      ReadOnly = True
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 504
      Top = 40
      Width = 209
      Height = 26
      ReadOnly = True
      TabOrder = 5
    end
    object Button1: TButton
      Left = 1344
      Top = 32
      Width = 97
      Height = 25
      Caption = 'Reset ma ke'
      TabOrder = 6
      OnClick = Button1Click
    end
    object CB1: TCheckBox
      Left = 1224
      Top = 8
      Width = 153
      Height = 17
      Caption = 'Kiem tra ton kho'
      TabOrder = 7
    end
    object Button3: TButton
      Left = 1360
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 8
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 72
    Width = 1655
    Height = 564
    Align = alClient
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
    FooterRowCount = 1
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
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
        FieldName = 'DepID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ScanInQty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ScanOutQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 84
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 72
    Width = 1655
    Height = 564
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
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Codebar'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Ma_Ke'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'QtyIn'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'QtyOut'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TonKho'
        Footers = <>
      end>
  end
  object DepNo: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select make,name'
      'from MAKE')
    Left = 696
    Top = 8
  end
  object DS1: TDataSource
    DataSet = ScanData
    Left = 304
    Top = 160
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 336
    Top = 160
  end
  object ScanData: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT c.DDBH, d.XieMing, c.XXCC, a.Codebar, a.Ma_Ke, SUM(CASE W' +
        'HEN a.Status = '#39'IN'#39' THEN a.Qty ELSE 0 END) AS QtyIn, SUM(CASE WH' +
        'EN a.Status = '#39'OUT'#39' THEN a.Qty ELSE 0 END) AS QtyOut, SUM(CASE W' +
        'HEN a.Status = '#39'IN'#39' THEN a.Qty ELSE -a.Qty END) AS TonKho FROM S' +
        'MZL_MAKE A WITH (NOLOCK) LEFT JOIN smddss C WITH (NOLOCK) ON a.C' +
        'ODEBAR = c.CODEBAR LEFT JOIN smdd D WITH (NOLOCK) ON c.DDBH = d.' +
        'DDBH AND c.GXLB = d.GXLB WHERE c.okCTS > 0 AND c.GXLB = '#39'O'#39' '
      'AND c.DDBH LIKE '#39'%HK2501-079%'#39' '
      'GROUP BY c.DDBH, d.XieMing, c.XXCC, a.Codebar, a.Ma_Ke '
      'ORDER BY c.DDBH, c.XXCC, a.Ma_Ke'
      '')
    UpdateObject = UpScan
    Left = 272
    Top = 160
    object ScanDataDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object ScanDataXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object ScanDataXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object ScanDataCodebar: TStringField
      FieldName = 'Codebar'
      FixedChar = True
    end
    object ScanDataMa_Ke: TStringField
      FieldName = 'Ma_Ke'
      FixedChar = True
      Size = 10
    end
    object ScanDataQtyIn: TIntegerField
      FieldName = 'QtyIn'
    end
    object ScanDataQtyOut: TIntegerField
      FieldName = 'QtyOut'
    end
    object ScanDataTonKho: TIntegerField
      FieldName = 'TonKho'
    end
  end
  object Qtemp1: TQuery
    DatabaseName = 'DB'
    Left = 848
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 296
    object Modify: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = ModifyClick
    end
    object Save: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = SaveClick
    end
    object Cancel: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = CancelClick
    end
  end
  object UpScan: TUpdateSQL
    ModifySQL.Strings = (
      'update SMZL_MAKE'
      'set'
      '  MA_KE = :MA_KE'
      'where'
      'ID = :ID')
    Left = 292
    Top = 296
  end
end
