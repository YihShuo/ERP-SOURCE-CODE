object CheckLean1: TCheckLean1
  Left = 316
  Top = 303
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'idDetail'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -16
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'lean_name'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -16
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'curr_weight'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -16
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'shift'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -16
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'name_vi'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -16
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -16
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 229
      end
      item
        EditButtons = <>
        FieldName = 'curr_weight_residual'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 196
      end
      item
        EditButtons = <>
        FieldName = 'residual_time'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      #9'idDetail,'
      '    lean_name,'
      '    F_id,'
      '    curr_weight,'
      '    shift,'
      '    USERDATE,'
      '    YN,'
      '    name_vi,'
      '    curr_weight_residual,'
      '    residual_time,'
      
        #9'(case when check_time = 0 and check_weight_residual = 0 then 1 ' +
        'else 0 end) as Not_valid'
      'from'
      '('
      'SELECT '
      '    idDetail,'
      '    lean_name,'
      '    a.F_id,'
      '    curr_weight,'
      '    shift,'
      '    USERDATE,'
      '    a.YN,'
      '    name_vi,'
      '    a.curr_weight_residual,'
      '    a.residual_time,'
      ''
      '    CASE '
      '        WHEN  CHARINDEX('#39'-'#39', shift) > 0 THEN'
      #9#9#9
      '            CASE '
      '                WHEN (CONVERT(time, a.residual_time )'
      '                     BETWEEN '
      
        '                         CAST(LEFT(shift, CHARINDEX('#39'-'#39', shift) ' +
        '- 1) AS time)'
      '                         AND '
      
        '                         CAST(SUBSTRING(shift, CHARINDEX('#39'-'#39', sh' +
        'ift) + 1, 5) AS time)) '
      '               '
      #9#9'THEN 1 ELSE 0 END'
      #9
      '    ELSE 0 END AS check_time,'
      
        '    (case when isnull(a.curr_weight_residual, 0) = 0  then 1 els' +
        'e 0 end) as check_weight_residual'
      'FROM Ch_Formulation_Details A '
      'INNER JOIN Ch_Departments B ON A.id_dept = B.id_dept '
      'INNER JOIN Ch_Formulation d ON d.id = a.F_id'
      'LEFT JOIN Ch_Inventory c ON d.inv_id = c.id'
      ') D'
      'where 1=0'
      'order by userdate desc')
    Left = 272
    Top = 256
    object Query1idDetail: TFloatField
      FieldName = 'idDetail'
    end
    object Query1lean_name: TStringField
      FieldName = 'lean_name'
      FixedChar = True
      Size = 200
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
    object Query1name_vi: TStringField
      FieldName = 'name_vi'
      FixedChar = True
      Size = 200
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1curr_weight_residual: TFloatField
      FieldName = 'curr_weight_residual'
    end
    object Query1residual_time: TDateTimeField
      FieldName = 'residual_time'
    end
    object Query1Not_valid: TIntegerField
      FieldName = 'Not_valid'
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
