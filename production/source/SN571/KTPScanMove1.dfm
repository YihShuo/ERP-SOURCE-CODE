object KTPScanMove: TKTPScanMove
  Left = 568
  Top = 223
  Width = 1305
  Height = 675
  Caption = 'KTP Scan Move'
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
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 632
      Top = 29
      Width = 65
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
    object KL: TLabel
      Left = 456
      Top = 16
      Width = 25
      Height = 25
      Caption = 'KL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 384
      Top = 16
      Width = 66
      Height = 25
      Caption = 'So Kg :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 698
      Top = 21
      Width = 183
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 891
      Top = 19
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
    object Edit2: TEdit
      Left = 8
      Top = 8
      Width = 377
      Height = 45
      AutoSize = False
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object MSComm1: TMSComm
      Left = 968
      Top = 17
      Width = 32
      Height = 32
      ControlData = {
        2143341208000000ED030000ED03000001568A64000006000000010000040000
        00020000802500000000080000000000000000003F00000005000000}
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1289
    Height = 579
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
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 150
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
        Width = 150
      end>
  end
  object temp: TQuery
    DatabaseName = 'DB'
    Left = 488
    Top = 208
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
  object DS1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 240
  end
end
