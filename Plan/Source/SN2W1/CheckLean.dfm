object CheckLean1: TCheckLean1
  Left = 483
  Top = 336
  Width = 1323
  Height = 694
  Caption = 'CheckLean1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 400
    Top = 24
    Width = 34
    Height = 16
    Caption = 'From:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1307
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 63
      Height = 25
      Caption = 'SCAN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 408
      Top = 24
      Width = 34
      Height = 16
      Caption = 'From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 752
      Top = 24
      Width = 20
      Height = 16
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 96
      Top = 12
      Width = 257
      Height = 45
      AutoSize = False
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Nina'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 1096
      Top = 16
      Width = 82
      Height = 26
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 448
      Top = 19
      Width = 153
      Height = 24
      Date = 45937.678759282400000000
      Format = 'yyyy/MM/dd'
      Time = 45937.678759282400000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP3: TDateTimePicker
      Left = 607
      Top = 18
      Width = 136
      Height = 24
      Date = 45937.717499282410000000
      Format = 'HH:mm:ss'
      Time = 45937.717499282410000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 779
      Top = 18
      Width = 156
      Height = 24
      Date = 45937.679460127310000000
      Format = 'yyyy/MM/dd'
      Time = 45937.679460127310000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP4: TDateTimePicker
      Left = 936
      Top = 18
      Width = 147
      Height = 24
      Date = 45937.718436793980000000
      Format = 'HH:mm:ss'
      Time = 45937.718436793980000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 5
    end
    object Button2: TButton
      Left = 1192
      Top = 16
      Width = 75
      Height = 25
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1307
    Height = 566
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'idDetail'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'name'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'id_dept'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'F_id'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'curr_weight'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'shift'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'curr_weight_residual'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'residual_time'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT  A.*, F1.name  '
      'FROM Ch_Formulation_Details_HK A'
      'left join Ch_Formulation_HK F on A.F_id=F.id  '
      
        'left join Ch_Formula F1  on F.inv_id=F1.hc1 AND ISNULL(F.inv_id1' +
        ', '#39#39') = ISNULL(F1.hc2, '#39#39') and f.sol_id=F1.hc3 and F.TyLe=F1.tl3' +
        ' and F.TL1=F1.tl1   '
      
        'WHERE Curr_weight>0  and USERDATE between   '#39'2026/03/24 00:00:00' +
        #39' '
      ' and '#39'2026/03/24 23:59:59'#39'    '
      'order by userdate desc '
      '')
    Left = 272
    Top = 256
    object Query1idDetail: TFloatField
      FieldName = 'idDetail'
    end
    object Query1id_dept: TStringField
      FieldName = 'id_dept'
      FixedChar = True
    end
    object Query1F_id: TFloatField
      FieldName = 'F_id'
    end
    object Query1curr_weight: TFloatField
      FieldName = 'curr_weight'
    end
    object Query1shift: TStringField
      FieldName = 'shift'
      FixedChar = True
      Size = 50
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object Query1curr_weight_residual: TFloatField
      FieldName = 'curr_weight_residual'
    end
    object Query1residual_time: TDateTimeField
      FieldName = 'residual_time'
    end
    object Query1name: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 250
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 272
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 416
    Top = 336
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 472
    Top = 184
  end
end
