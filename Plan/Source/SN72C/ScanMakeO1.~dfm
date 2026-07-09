object ScanMakeO: TScanMakeO
  Left = 402
  Top = 333
  Width = 1490
  Height = 675
  Caption = 'Scan Ma Ke Kho De Sinh Quan'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1474
    Height = 547
    Align = alClient
    DataSource = DS1
    EvenRowColor = clYellow
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CODEBAR'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MA_KE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'xxcc'
        Footers = <>
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Status'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DEPNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 150
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1474
    Height = 89
    Align = alTop
    Color = 16768991
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 392
      Top = 56
      Width = 56
      Height = 24
      Caption = 'Ma ke:'
    end
    object Label5: TLabel
      Left = 384
      Top = 16
      Width = 67
      Height = 24
      Caption = 'Ten Ke:'
    end
    object Label1: TLabel
      Left = 720
      Top = 16
      Width = 96
      Height = 24
      Caption = 'Don Hang: '
    end
    object Edit3: TEdit
      Left = 8
      Top = 15
      Width = 349
      Height = 66
      CharCase = ecUpperCase
      Color = 10223615
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -48
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 456
      Top = 48
      Width = 121
      Height = 32
      ReadOnly = True
      TabOrder = 1
    end
    object Button1: TButton
      Left = 584
      Top = 48
      Width = 65
      Height = 33
      Caption = 'Ma Ke'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 456
      Top = 8
      Width = 225
      Height = 32
      ReadOnly = True
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 816
      Top = 8
      Width = 209
      Height = 32
      TabOrder = 4
    end
    object Button2: TButton
      Left = 1032
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 1120
      Top = 16
      Width = 129
      Height = 25
      Caption = 'Reset ma ke'
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object Qtemp3: TQuery
    DatabaseName = 'DB'
    Left = 712
    Top = 48
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MAKE')
    Left = 672
    Top = 48
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 336
    Top = 160
  end
  object ScanData: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select a.*, smdd.YSBH, smdd.XieMing,B.xxcc,B.DDBH'
      'from SMZL_MAKE A '
      'left join SMDDSS B on A.CODEBAR = b.CODEBAR '
      'left join smdd on smdd.DDBH = b.DDBH and smdd.GXLB = b.GXLB '
      'left join MAKE on MAKE.make = a.MA_KE and make.DONVI = '#39'SQ'#39' '
      'where 1=1 '
      '  and a.MA_KE = '#39'A0101'#39
      '  and smdd.YSBH = '#39'HK2501-079'#39
      'order by a.CODEBAR desc'
      '')
    Left = 272
    Top = 160
    object ScanDataID: TFloatField
      FieldName = 'ID'
    end
    object ScanDataCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object ScanDataMA_KE: TStringField
      FieldName = 'MA_KE'
      FixedChar = True
      Size = 10
    end
    object ScanDataQty: TIntegerField
      FieldName = 'Qty'
    end
    object ScanDataStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 10
    end
    object ScanDataUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object ScanDataUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object ScanDataDEPNO: TStringField
      FieldName = 'DEPNO'
      FixedChar = True
      Size = 10
    end
    object ScanDataYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object ScanDataXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object ScanDataxxcc: TStringField
      FieldName = 'xxcc'
      FixedChar = True
      Size = 6
    end
    object ScanDataDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = ScanData
    Left = 304
    Top = 160
  end
  object Qlimit: TQuery
    DatabaseName = 'DB'
    Left = 904
    Top = 168
  end
end
