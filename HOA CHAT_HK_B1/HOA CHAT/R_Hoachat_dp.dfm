object R_hoachat: TR_hoachat
  Left = 265
  Top = 277
  Width = 1940
  Height = 896
  Caption = 'R_hoachat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1924
    Height = 185
    Align = alTop
    Color = clWhite
    TabOrder = 0
    object Label2: TLabel
      Left = 800
      Top = 84
      Width = 88
      Height = 25
      Caption = 'Datetime :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 0
      Width = 97
      Height = 25
      AutoSize = False
    end
    object Label1: TLabel
      Left = 7
      Top = 86
      Width = 93
      Height = 25
      Caption = 'Formula 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 440
      Top = 86
      Width = 98
      Height = 25
      Caption = 'Formula 2 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 696
      Top = 85
      Width = 18
      Height = 25
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 16
      Top = 24
      Width = 62
      Height = 25
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 144
      Width = 81
      Height = 25
      Caption = 'Nhiet Do:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 184
      Top = 144
      Width = 15
      Height = 25
      Caption = 'C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 224
      Top = 144
      Width = 66
      Height = 25
      Caption = 'Do Am:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 376
      Top = 144
      Width = 18
      Height = 25
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 424
      Top = 144
      Width = 99
      Height = 25
      Caption = 'So Lo Keo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 912
      Top = 144
      Width = 139
      Height = 25
      Caption = 'So Lo Chat DC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnCommit: TButton
      Left = 1073
      Top = 76
      Width = 89
      Height = 33
      Caption = 'COMMIT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnCommitClick
    end
    object Button3: TButton
      Left = 1471
      Top = 74
      Width = 105
      Height = 32
      Caption = 'ALL RESET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 893
      Top = 81
      Width = 155
      Height = 28
      Date = 45918.416732719910000000
      Format = 'yyyy/MM/dd'
      Time = 45918.416732719910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = DTP1Change
    end
    object cbb1: TComboBox
      Left = 104
      Top = 81
      Width = 329
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 25
      ParentFont = False
      TabOrder = 3
      OnChange = cbb1Change
      OnEnter = cbb1Enter
    end
    object cbb2: TComboBox
      Left = 544
      Top = 81
      Width = 145
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 25
      ParentFont = False
      TabOrder = 4
      OnChange = cbb2Change
      OnEnter = cbb2Enter
    end
    object Button4: TButton
      Left = 1168
      Top = 76
      Width = 75
      Height = 33
      Caption = 'PRINT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 1250
      Top = 76
      Width = 72
      Height = 32
      Caption = 'SCAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 1328
      Top = 77
      Width = 67
      Height = 32
      Caption = 'CAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 1400
      Top = 76
      Width = 64
      Height = 31
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button7Click
    end
    object cbbpt: TComboBox
      Left = 726
      Top = 81
      Width = 73
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 25
      ParentFont = False
      TabOrder = 9
      OnChange = cbbptChange
      Items.Strings = (
        ''
        '1.2%'
        '2%'
        '3%'
        '4%'
        '5%'
        '6%'
        '7%'
        '8%'
        '30%')
    end
    object CbbGSBH: TComboBox
      Left = 88
      Top = 16
      Width = 73
      Height = 33
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 25
      ParentFont = False
      TabOrder = 10
      Text = 'B1'
      Items.Strings = (
        '')
    end
    object EditND: TEdit
      Left = 102
      Top = 139
      Width = 75
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object EditDA: TEdit
      Left = 302
      Top = 139
      Width = 67
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object EditSL: TEdit
      Left = 534
      Top = 139
      Width = 363
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object EditSLDC: TEdit
      Left = 1062
      Top = 139
      Width = 363
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 185
    Width = 1924
    Height = 136
    Align = alTop
    Color = clWhite
    TabOrder = 1
    object Button2: TButton
      Left = 960
      Top = 0
      Width = 105
      Height = 33
      Caption = 'disconnect'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1922
      Height = 136
      Align = alTop
      Color = clWhite
      TabOrder = 1
      object Label8: TLabel
        Left = 8
        Top = 24
        Width = 119
        Height = 25
        Caption = 'Chemicals 1 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 1272
        Top = 24
        Width = 73
        Height = 25
        Caption = 'Weight :'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label10: TLabel
        Left = 812
        Top = 26
        Width = 55
        Height = 25
        Caption = 'Time :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 1440
        Top = 24
        Width = 11
        Height = 25
        Caption = 'g'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label5: TLabel
        Left = 404
        Top = 26
        Width = 114
        Height = 25
        Caption = 'Chemicals 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 1272
        Top = 72
        Width = 73
        Height = 25
        Caption = 'Weight :'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label7: TLabel
        Left = 1440
        Top = 64
        Width = 11
        Height = 25
        Caption = 'g'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Edit3: TEdit
        Left = 873
        Top = 20
        Width = 201
        Height = 33
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Button1: TButton
        Left = 1096
        Top = 16
        Width = 105
        Height = 33
        Caption = 'disconnect'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 135
        Top = 20
        Width = 249
        Height = 33
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 1344
        Top = 15
        Width = 97
        Height = 33
        Color = clScrollBar
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
      object DBEdit3: TDBEdit
        Left = 529
        Top = 23
        Width = 249
        Height = 33
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 1344
        Top = 63
        Width = 97
        Height = 33
        Color = clScrollBar
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Visible = False
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 321
    Width = 1924
    Height = 536
    Align = alClient
    AutoFitColWidths = True
    DataSource = dsMain
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'create_time'
        Footers = <>
        Width = 182
      end
      item
        EditButtons = <>
        FieldName = 'temperature'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'humidity'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'inv_name_vi'
        Footers = <>
        Width = 186
      end
      item
        EditButtons = <>
        FieldName = 'inv_name_tw'
        Footers = <>
        Width = 160
      end
      item
        EditButtons = <>
        FieldName = 'Batch_number'
        Footers = <>
        Width = 118
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'curr_weight_ch'
        Footers = <>
        Width = 187
      end
      item
        EditButtons = <>
        FieldName = 'sol_name_vi'
        Footers = <>
        Width = 185
      end
      item
        EditButtons = <>
        FieldName = 'sol_name_tw'
        Footers = <>
        Width = 151
      end
      item
        EditButtons = <>
        FieldName = 'Batch_number_sol'
        Footers = <>
        Width = 155
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'curr_weight_sol'
        Footers = <>
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'Tong'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'number_of_spins'
        Footers = <>
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'inv_notes'
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'event_time'
        Footers = <>
        Width = 147
      end
      item
        EditButtons = <>
        FieldName = 'TyLe'
        Footers = <>
      end>
  end
  object MSComm1: TMSComm
    Left = 1592
    Top = 72
    Width = 32
    Height = 32
    OnComm = MSComm1Comm
    ControlData = {
      2143341208000000ED030000ED03000001568A64000006000000010000040000
      00020000802500000000080000000000000000003F00000001000000}
  end
  object Memo1: TMemo
    Left = 704
    Top = 504
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
    Visible = False
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT a.id,create_time,b.name_vi,b.name_tw,a.maxweight_ch,c.nam' +
        'e_vi,c.name_tw,a.maxweight_sol,b.notes,curr_weight_ch,curr_weigh' +
        't_sol,event_time,userID'
      
        'FROM ch_Formulation a INNER JOIN'#9' dbo.Ch_Inventory b ON a.inv_id' +
        '=b.id'
      'INNER JOIN dbo.Ch_Solvents c ON a.sol_id=c.id')
    Left = 56
    Top = 200
  end
  object dsMain: TDataSource
    DataSet = cdsMain
    Left = 384
    Top = 192
  end
  object QMain: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  CONVERT(varchar(20), a.id) AS id,'
      '  a.create_time, '
      ' a.temperature,'
      '  a.humidity,'
      '  a.Batch_number,'
      '  a.Batch_number_sol,'
      '  b.name_vi  AS inv_name_vi,'
      '  b.name_tw  AS inv_name_tw,'
      '  a.maxweight_ch,'
      '  c.name_vi  AS sol_name_vi,'
      '  c.name_tw  AS sol_name_tw,'
      '  a.maxweight_sol,'
      '  b.notes     AS inv_notes,'
      '  a.curr_weight_ch,'
      '  ROUND(a.curr_weight_sol, 3) AS curr_weight_sol,'
      '  a.event_time,'
      '  a.userID,'
      '  a.YN,'
      '  a.TyLe,'
      ' a.number_of_spins,'
      'ROUND(a.curr_weight_ch + a.curr_weight_sol, 3) AS Tong'
      'FROM '
      'ch_Formulation_HK a '
      'INNER JOIN dbo.Ch_Inventory_HK b ON a.inv_id=b.id'
      'INNER JOIN dbo.Ch_Solvents_HK c ON a.sol_id=c.id'
      'WHERE create_time >= :StartDate AND create_time < :EndDate'
      'and GSBH='#39'B1'#39
      'order by create_time desc')
    UpdateObject = UpdateSQL1
    Left = 208
    Top = 184
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'StartDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'EndDate'
        ParamType = ptUnknown
      end>
    object QMainid: TStringField
      FieldName = 'id'
      FixedChar = True
    end
    object QMaincreate_time: TDateTimeField
      FieldName = 'create_time'
    end
    object QMaininv_name_vi: TStringField
      FieldName = 'inv_name_vi'
      FixedChar = True
      Size = 200
    end
    object QMaininv_name_tw: TStringField
      FieldName = 'inv_name_tw'
      FixedChar = True
      Size = 200
    end
    object QMainmaxweight_ch: TFloatField
      FieldName = 'maxweight_ch'
    end
    object QMainsol_name_vi: TStringField
      FieldName = 'sol_name_vi'
      FixedChar = True
      Size = 200
    end
    object QMainsol_name_tw: TStringField
      FieldName = 'sol_name_tw'
      FixedChar = True
      Size = 200
    end
    object QMainmaxweight_sol: TFloatField
      FieldName = 'maxweight_sol'
    end
    object QMaininv_notes: TStringField
      FieldName = 'inv_notes'
      FixedChar = True
      Size = 100
    end
    object QMaincurr_weight_ch: TFloatField
      FieldName = 'curr_weight_ch'
    end
    object QMaincurr_weight_sol: TFloatField
      FieldName = 'curr_weight_sol'
      DisplayFormat = '#0.000'
    end
    object QMainevent_time: TDateTimeField
      FieldName = 'event_time'
    end
    object QMainuserID: TStringField
      FieldName = 'userID'
      FixedChar = True
      Size = 100
    end
    object QMainYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object QMainTyLe: TFloatField
      FieldName = 'TyLe'
    end
    object QMaintemperature: TStringField
      FieldName = 'temperature'
      FixedChar = True
    end
    object QMainhumidity: TStringField
      FieldName = 'humidity'
      FixedChar = True
    end
    object QMainBatch_number: TStringField
      FieldName = 'Batch_number'
      FixedChar = True
      Size = 200
    end
    object QMainBatch_number_sol: TStringField
      FieldName = 'Batch_number_sol'
      FixedChar = True
      Size = 200
    end
    object QMainnumber_of_spins: TStringField
      FieldName = 'number_of_spins'
      FixedChar = True
      Size = 50
    end
    object QMainTong: TFloatField
      FieldName = 'Tong'
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 104
    Top = 200
  end
  object cdsMain: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMain'
    BeforeEdit = cdsMainBeforeEdit
    BeforePost = cdsMainBeforePost
    Left = 336
    Top = 185
    object cdsMainid: TStringField
      FieldName = 'id'
      FixedChar = True
    end
    object cdsMaincreate_time: TDateTimeField
      FieldName = 'create_time'
    end
    object cdsMaintemperature: TStringField
      FieldName = 'temperature'
      FixedChar = True
    end
    object cdsMainhumidity: TStringField
      FieldName = 'humidity'
      FixedChar = True
    end
    object cdsMaininv_name_vi: TStringField
      FieldName = 'inv_name_vi'
      FixedChar = True
      Size = 200
    end
    object cdsMaininv_name_tw: TStringField
      FieldName = 'inv_name_tw'
      FixedChar = True
      Size = 200
    end
    object cdsMainBatch_number: TStringField
      FieldName = 'Batch_number'
      FixedChar = True
      Size = 200
    end
    object cdsMainmaxweight_ch: TFloatField
      FieldName = 'maxweight_ch'
    end
    object cdsMainsol_name_vi: TStringField
      FieldName = 'sol_name_vi'
      FixedChar = True
      Size = 200
    end
    object cdsMainsol_name_tw: TStringField
      FieldName = 'sol_name_tw'
      FixedChar = True
      Size = 200
    end
    object cdsMainmaxweight_sol: TFloatField
      FieldName = 'maxweight_sol'
    end
    object cdsMainBatch_number_sol: TStringField
      FieldName = 'Batch_number_sol'
      FixedChar = True
      Size = 200
    end
    object cdsMaininv_notes: TStringField
      FieldName = 'inv_notes'
      FixedChar = True
      Size = 100
    end
    object cdsMaincurr_weight_ch: TFloatField
      FieldName = 'curr_weight_ch'
      OnValidate = cdsMaincurr_weight_chValidate
    end
    object cdsMaincurr_weight_sol: TFloatField
      FieldName = 'curr_weight_sol'
      OnValidate = cdsMaincurr_weight_solValidate
      DisplayFormat = '0.000'
    end
    object cdsMainevent_time: TDateTimeField
      FieldName = 'event_time'
    end
    object cdsMainuserID: TStringField
      FieldName = 'userID'
      FixedChar = True
      Size = 100
    end
    object cdsMainYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object cdsMainTyLe: TFloatField
      FieldName = 'TyLe'
      DisplayFormat = '0.0000'
    end
    object cdsMainnumber_of_spins: TStringField
      FieldName = 'number_of_spins'
      FixedChar = True
      Size = 50
    end
    object cdsMainTong: TFloatField
      FieldName = 'Tong'
    end
  end
  object dspMain: TDataSetProvider
    DataSet = QMain
    Left = 272
    Top = 177
  end
  object UpdateSQL1: TUpdateSQL
    Left = 432
    Top = 184
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 240
    Top = 384
  end
end
