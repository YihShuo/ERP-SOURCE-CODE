object R_hoachat: TR_hoachat
  Left = 184
  Top = 177
  Width = 1940
  Height = 896
  Caption = 'R_hoachat'
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
      Left = 456
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
      Width = 98
      Height = 25
      Caption = 'Formula 1 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 118
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
      Left = 456
      Top = 149
      Width = 92
      Height = 25
      Caption = 'TL HC3 %'
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
      Left = 872
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
      Left = 1040
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
      Left = 1080
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
      Left = 1232
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
      Top = 16
      Width = 99
      Height = 25
      Caption = 'So Lo Keo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label19: TLabel
      Left = 912
      Top = 16
      Width = 139
      Height = 25
      Caption = 'So Lo Chat DC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label21: TLabel
      Left = 8
      Top = 150
      Width = 98
      Height = 25
      Caption = 'Formula 3 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 456
      Top = 117
      Width = 92
      Height = 25
      Caption = 'TL HC1 %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnCommit: TButton
      Left = 729
      Top = 72
      Width = 89
      Height = 41
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
      Left = 1383
      Top = 138
      Width = 105
      Height = 39
      Caption = 'ALL RESET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 552
      Top = 81
      Width = 152
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
      Color = clYellow
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
      Left = 104
      Top = 113
      Width = 329
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
      Left = 1296
      Top = 140
      Width = 75
      Height = 37
      Caption = 'PRINT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 834
      Top = 72
      Width = 72
      Height = 41
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
      Left = 920
      Top = 72
      Width = 67
      Height = 41
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
      Left = 1000
      Top = 72
      Width = 65
      Height = 41
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
    object CbbGSBH: TComboBox
      Left = 88
      Top = 16
      Width = 249
      Height = 33
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 25
      ParentFont = False
      TabOrder = 9
      Text = 'Xuong_B'
      OnChange = CbbGSBHChange
      Items.Strings = (
        'Xuong_B'
        'Xuong_A')
    end
    object EditND: TEdit
      Left = 958
      Top = 139
      Width = 75
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object EditDA: TEdit
      Left = 1158
      Top = 139
      Width = 67
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EditSL: TEdit
      Left = 534
      Top = 11
      Width = 363
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      Visible = False
    end
    object EditSLDC: TEdit
      Left = 1062
      Top = 11
      Width = 363
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Visible = False
    end
    object cbb3: TComboBox
      Left = 104
      Top = 145
      Width = 329
      Height = 33
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 25
      ParentFont = False
      TabOrder = 14
      OnChange = cbb3Change
      OnEnter = cbb2Enter
    end
    object Button8: TButton
      Left = 704
      Top = 144
      Width = 75
      Height = 33
      Caption = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = Button8Click
    end
    object TL: TEdit
      Left = 552
      Top = 152
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 16
    end
    object Button9: TButton
      Left = 1175
      Top = 72
      Width = 105
      Height = 41
      Caption = 'CONG THUC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 1080
      Top = 72
      Width = 89
      Height = 41
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = Button10Click
    end
    object TL1: TEdit
      Left = 552
      Top = 120
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 19
    end
    object Button11: TButton
      Left = 1296
      Top = 72
      Width = 121
      Height = 41
      Caption = 'TON KHO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 1424
      Top = 72
      Width = 121
      Height = 41
      Caption = 'BAO PHE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      OnClick = Button12Click
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
        Width = 109
        Height = 25
        Caption = 'Chemicals1:'
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
        Left = 4
        Top = 58
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
        Top = 56
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
        Top = 56
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
      object Label20: TLabel
        Left = 4
        Top = 90
        Width = 114
        Height = 25
        Caption = 'Chemicals 3:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 1272
        Top = 88
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
      object Label23: TLabel
        Left = 1440
        Top = 88
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
        Height = 41
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
        TabOrder = 2
        Visible = False
      end
      object DBEdit3: TDBEdit
        Left = 137
        Top = 55
        Width = 249
        Height = 33
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 1344
        Top = 47
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
        TabOrder = 4
        Visible = False
      end
      object DBEdit5: TDBEdit
        Left = 137
        Top = 87
        Width = 249
        Height = 33
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 1344
        Top = 79
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
        TabOrder = 6
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 137
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
        TabOrder = 7
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
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'create_time'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'maxweight_ch'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'maxweight_ch1'
        Footers = <>
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'maxweight_sol'
        Footers = <>
        Width = 110
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'curr_weight_ch'
        Footers = <>
        Width = 110
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'curr_weight_ch1'
        Footers = <>
        Width = 120
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'curr_weight_sol'
        Footers = <>
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'event_time'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'userID'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Ten_HC01'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Ten_HC02'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Ten_HC03'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Name'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'tong'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'inv_id'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'inv_id1'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'sol_id'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'TL1'
        Footers = <>
        Title.Caption = 'TL1 %'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'TyLe'
        Footers = <>
        Title.Caption = 'TL3 %'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Visible = False
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'temperature'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'humidity'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'number_of_spins'
        Footers = <>
        Visible = False
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Batch_number'
        Footers = <>
        Visible = False
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Batch_number_sol'
        Footers = <>
        Visible = False
        Width = 100
      end>
  end
  object MSComm1: TMSComm
    Left = 1552
    Top = 256
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
    Left = 520
    Top = 256
  end
  object dsMain: TDataSource
    DataSet = QMain
    Left = 384
    Top = 192
  end
  object QMain: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT  F.*,'
      '    '#39#39' as Ten_HC01,'
      '    '#39#39' as Ten_HC02,'
      '    '#39#39' as Ten_HC03,'#39#39' as Name,'
      'CAST(0 AS FLOAT) AS tong'
      'FROM ch_Formulation_HK F'
      'WHERE create_time >= :StartDate AND create_time < :EndDate'
      
        'group by id, create_time, maxweight_ch, maxweight_ch1, maxweight' +
        '_sol, curr_weight_ch, curr_weight_ch1, curr_weight_sol, event_ti' +
        'me, userID, inv_id, inv_id1, sol_id, YN, TyLe, TL1, GSBH, temper' +
        'ature, humidity, Batch_number,Batch_number_sol, number_of_spins'
      ''
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
    object QMainid: TFloatField
      FieldName = 'id'
    end
    object QMaincreate_time: TDateTimeField
      FieldName = 'create_time'
    end
    object QMainmaxweight_ch: TFloatField
      FieldName = 'maxweight_ch'
    end
    object QMainmaxweight_ch1: TFloatField
      FieldName = 'maxweight_ch1'
    end
    object QMainmaxweight_sol: TFloatField
      FieldName = 'maxweight_sol'
    end
    object QMaincurr_weight_ch: TFloatField
      FieldName = 'curr_weight_ch'
    end
    object QMaincurr_weight_ch1: TFloatField
      FieldName = 'curr_weight_ch1'
    end
    object QMaincurr_weight_sol: TFloatField
      FieldName = 'curr_weight_sol'
    end
    object QMainevent_time: TDateTimeField
      FieldName = 'event_time'
    end
    object QMainuserID: TStringField
      FieldName = 'userID'
      FixedChar = True
      Size = 100
    end
    object QMaininv_id: TStringField
      FieldName = 'inv_id'
      FixedChar = True
      Size = 10
    end
    object QMaininv_id1: TStringField
      FieldName = 'inv_id1'
      FixedChar = True
      Size = 10
    end
    object QMainsol_id: TStringField
      FieldName = 'sol_id'
      FixedChar = True
      Size = 10
    end
    object QMainYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object QMainTyLe: TFloatField
      FieldName = 'TyLe'
    end
    object QMainGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
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
    object QMainTen_HC01: TStringField
      FieldName = 'Ten_HC01'
      FixedChar = True
      Size = 1
    end
    object QMainTen_HC02: TStringField
      FieldName = 'Ten_HC02'
      FixedChar = True
      Size = 1
    end
    object QMainTen_HC03: TStringField
      FieldName = 'Ten_HC03'
      FixedChar = True
      Size = 1
    end
    object QMaintong: TFloatField
      FieldName = 'tong'
    end
    object QMainName: TStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 1
    end
    object QMainTL1: TFloatField
      FieldName = 'TL1'
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 544
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
    ModifySQL.Strings = (
      'update ch_Formulation_HK'
      'set'
      '  --curr_weight_ch = :curr_weight_ch,'
      '  curr_weight_ch = '#39'1231'#39','
      '  curr_weight_ch1 = :curr_weight_ch1,'
      '  curr_weight_sol = :curr_weight_sol,'
      '  event_time = :event_time,'
      '  TyLe = :TyLe,'
      '  temperature = :temperature,'
      '  humidity = :humidity,'
      '  Batch_number = :Batch_number,'
      '  Batch_number_sol = :Batch_number_sol,'
      '  number_of_spins = :number_of_spins'
      'where'
      '  ID= :OLD_ID')
    InsertSQL.Strings = (
      'insert into ch_Formulation_HK'
      
        '  (id, create_time, maxweight_ch, maxweight_ch1, maxweight_sol, ' +
        'curr_weight_ch, '
      
        '   curr_weight_ch1, curr_weight_sol, event_time, userID, inv_id,' +
        ' inv_id1, '
      
        '   sol_id, YN, TyLe, GSBH, temperature, humidity, Batch_number, ' +
        'Batch_number_sol, '
      '   number_of_spins)'
      'values'
      
        '  (:id, :create_time, :maxweight_ch, :maxweight_ch1, :maxweight_' +
        'sol, :curr_weight_ch, '
      
        '   :curr_weight_ch1, :curr_weight_sol, :event_time, :userID, :in' +
        'v_id, :inv_id1, '
      
        '   :sol_id, :YN, :TyLe, :GSBH, :temperature, :humidity, :Batch_n' +
        'umber, '
      '   :Batch_number_sol, :number_of_spins)')
    DeleteSQL.Strings = (
      'delete from ch_Formulation_HK'
      'where'
      '  maxweight_sol = :OLD_maxweight_sol')
    Left = 432
    Top = 184
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 240
    Top = 384
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 560
    Top = 416
  end
  object SetInfo: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * from CH_Formula')
    Left = 384
    Top = 48
  end
end
