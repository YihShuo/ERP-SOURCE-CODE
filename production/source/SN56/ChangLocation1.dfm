object Changelocation: TChangelocation
  Left = 602
  Top = 168
  Width = 1305
  Height = 675
  Caption = 'Change Location'
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
      Left = 0
      Top = 21
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
    object Label3: TLabel
      Left = 640
      Top = 40
      Width = 277
      Height = 16
      Caption = 'Ban chi co the thay doi nhung thong tin co sb =1'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 280
      Top = 24
      Width = 29
      Height = 13
      Caption = 'KCBH'
    end
    object Label5: TLabel
      Left = 600
      Top = 24
      Width = 122
      Height = 13
      Caption = ' Change Location KCBH: '
    end
    object Edit1: TEdit
      Left = 82
      Top = 13
      Width = 183
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 507
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
    object Button2: TButton
      Left = 859
      Top = 11
      Width = 118
      Height = 30
      Caption = 'Change Location'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 312
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 728
      Top = 16
      Width = 121
      Height = 21
      Color = clYellow
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 440
      Top = 16
      Width = 57
      Height = 17
      Caption = 'SB =1'
      Checked = True
      State = cbChecked
      TabOrder = 5
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
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CARTONNO'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 100
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'KVBH'
        Footers = <>
        Width = 100
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CARTONBAR, DDBH, CARTONNO,  qty, SB,CKBH,KCBH,KVBH  from ' +
        'YWCP where DDBH='#39'JHS2510-450'#39)
    Left = 256
    Top = 224
    object Query1CARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      FixedChar = True
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1CARTONNO: TIntegerField
      FieldName = 'CARTONNO'
    end
    object Query1qty: TIntegerField
      FieldName = 'qty'
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object Query1KVBH: TStringField
      FieldName = 'KVBH'
      FixedChar = True
      Size = 5
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 240
  end
  object temp: TQuery
    DatabaseName = 'DB'
    Left = 488
    Top = 208
  end
end
