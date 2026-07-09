object ExportExcel: TExportExcel
  Left = 715
  Top = 237
  Width = 1305
  Height = 675
  Caption = 'ExportExcel'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 81
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrderNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 90
      Top = 13
      Width = 183
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 283
      Top = 11
      Width = 73
      Height = 30
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 392
      Top = 8
      Width = 177
      Height = 65
      Caption = 'Excel'
      TabOrder = 2
      object rbtIn: TRadioButton
        Left = 8
        Top = 16
        Width = 113
        Height = 17
        Caption = 'ScanIn'
        TabOrder = 0
      end
      object rbtOut: TRadioButton
        Left = 8
        Top = 40
        Width = 113
        Height = 17
        Caption = 'ScanOut'
        TabOrder = 1
      end
      object btExcel: TButton
        Left = 80
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Excel'
        TabOrder = 2
        OnClick = btExcelClick
      end
    end
    object ckUSERDATEIN: TCheckBox
      Left = 32
      Top = 48
      Width = 97
      Height = 17
      Caption = 'USERDATEIN'
      TabOrder = 3
    end
    object dtpUSERDATEIN: TDateTimePicker
      Left = 128
      Top = 48
      Width = 89
      Height = 21
      Date = 46087.477508553240000000
      Time = 46087.477508553240000000
      TabOrder = 4
    end
    object ckUSERDATEOUT: TCheckBox
      Left = 32
      Top = 80
      Width = 113
      Height = 17
      Caption = 'USERDATEOUT'
      TabOrder = 5
    end
    object dtpUSERDATEOUT: TDateTimePicker
      Left = 136
      Top = 80
      Width = 89
      Height = 21
      Date = 46087.483713344910000000
      Time = 46087.483713344910000000
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 743
    Height = 531
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = '????'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ScanIn'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'WeightIN'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERIDIN'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERDATEIN'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ScanOut'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'WeightOut'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERIDOUT'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERDATEOUT'
        Footers = <>
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 743
    Top = 105
    Width = 546
    Height = 531
    Align = alRight
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = '????'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh2GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERDATEIN'
        Footers = <>
      end>
  end
  object temp: TQuery
    DatabaseName = 'DB'
    Left = 488
    Top = 208
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 240
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM YWCP_Move WHERE DDBH = '#39'JHS2603-001'#39)
    Left = 256
    Top = 224
    object Query1CARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      Origin = 'DB.YWCP_Move.CARTONBAR'
      FixedChar = True
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCP_Move.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1ScanIn: TIntegerField
      FieldName = 'ScanIn'
      Origin = 'DB.YWCP_Move.ScanIn'
    end
    object Query1USERIDIN: TStringField
      FieldName = 'USERIDIN'
      Origin = 'DB.YWCP_Move.USERIDIN'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATEIN: TDateTimeField
      FieldName = 'USERDATEIN'
      Origin = 'DB.YWCP_Move.USERDATEIN'
    end
    object Query1ScanOut: TIntegerField
      FieldName = 'ScanOut'
      Origin = 'DB.YWCP_Move.ScanOut'
    end
    object Query1USERIDOUT: TStringField
      FieldName = 'USERIDOUT'
      Origin = 'DB.YWCP_Move.USERIDOUT'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATEOUT: TDateTimeField
      FieldName = 'USERDATEOUT'
      Origin = 'DB.YWCP_Move.USERDATEOUT'
    end
    object Query1WeightIN: TFloatField
      FieldName = 'WeightIN'
      Origin = 'DB.YWCP_Move.WeightIN'
    end
    object Query1WeightOut: TFloatField
      FieldName = 'WeightOut'
      Origin = 'DB.YWCP_Move.WeightOut'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 976
    Top = 248
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ('
      'SELECT distinct DDBH,min(USERDATEIN) as USERDATEIN'
      'FROM YWCP_Move'
      'where USERDATEOUT is null'
      '  group by DDBH'
      ') YWCP'
      'where USERDATEIN < GETDATE()-25'
      'order by USERDATEIN')
    Left = 936
    Top = 248
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query2USERDATEIN: TDateTimeField
      FieldName = 'USERDATEIN'
    end
  end
end
