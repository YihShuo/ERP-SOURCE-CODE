object R_hoachat: TR_hoachat
  Left = 304
  Top = 192
  Width = 1554
  Height = 675
  Caption = 'R_hoachat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1538
    Height = 81
    Align = alTop
    Color = clWhite
    TabOrder = 0
    object Label2: TLabel
      Left = 40
      Top = 23
      Width = 82
      Height = 25
      Caption = 'Formula :'
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
    object MSComm1: TMSComm
      Left = 912
      Top = 16
      Width = 32
      Height = 32
      ControlData = {
        2143341208000000ED030000ED03000001568A64000006000000010000040000
        00020000802500000000080000000000000000003F00000001000000}
    end
    object Button1: TButton
      Left = 344
      Top = 22
      Width = 105
      Height = 33
      Caption = 'COMMIT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 960
      Top = 16
      Width = 105
      Height = 33
      Caption = 'ALL RESET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 127
      Top = 25
      Width = 146
      Height = 24
      Date = 45918.416732719910000000
      Format = 'yyyy/MM/dd'
      Time = 45918.416732719910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = DTP1Change
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 1538
    Height = 136
    Align = alTop
    Color = clWhite
    TabOrder = 1
    object Button2: TButton
      Left = 960
      Top = 24
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 217
    Width = 1538
    Height = 419
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
      end
      item
        EditButtons = <>
        FieldName = 'create_time'
        Footers = <>
        Width = 168
      end
      item
        EditButtons = <>
        FieldName = 'name_vi'
        Footers = <>
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'name_tw'
        Footers = <>
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'maxweight_ch'
        Footers = <>
        Width = 106
      end
      item
        Color = 10223615
        EditButtons = <>
        FieldName = 'curr_weight_ch'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'name_vi_1'
        Footers = <>
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'name_tw_1'
        Footers = <>
        Width = 142
      end
      item
        EditButtons = <>
        FieldName = 'maxweight_sol'
        Footers = <>
        Width = 110
      end
      item
        Color = 10223615
        EditButtons = <>
        FieldName = 'curr_weight_sol'
        Footers = <>
        Width = 149
      end
      item
        EditButtons = <>
        FieldName = 'event_time'
        Footers = <>
      end>
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
    Left = 280
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = Query2
    Left = 480
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT a.id,create_time,b.name_vi,b.name_tw,a.maxweight_ch,c.nam' +
        'e_vi,c.name_tw,a.maxweight_sol,b.notes,curr_weight_ch,curr_weigh' +
        't_sol,event_time,userID'
      
        'FROM ch_Formulation a INNER JOIN'#9' dbo.Ch_Inventory b ON a.inv_id' +
        '=b.id'
      'INNER JOIN dbo.Ch_Solvents c ON a.sol_id=c.id')
    Left = 224
    Top = 352
    object Query2id: TStringField
      FieldName = 'id'
      FixedChar = True
      Size = 10
    end
    object Query2create_time: TDateTimeField
      FieldName = 'create_time'
    end
    object Query2name_vi: TStringField
      FieldName = 'name_vi'
      FixedChar = True
      Size = 200
    end
    object Query2name_tw: TStringField
      FieldName = 'name_tw'
      FixedChar = True
      Size = 200
    end
    object Query2maxweight_ch: TFloatField
      FieldName = 'maxweight_ch'
    end
    object Query2name_vi_1: TStringField
      FieldName = 'name_vi_1'
      FixedChar = True
      Size = 200
    end
    object Query2name_tw_1: TStringField
      FieldName = 'name_tw_1'
      FixedChar = True
      Size = 200
    end
    object Query2maxweight_sol: TFloatField
      FieldName = 'maxweight_sol'
    end
    object Query2notes: TStringField
      FieldName = 'notes'
      FixedChar = True
      Size = 100
    end
    object Query2curr_weight_ch: TFloatField
      FieldName = 'curr_weight_ch'
    end
    object Query2curr_weight_sol: TFloatField
      FieldName = 'curr_weight_sol'
    end
    object Query2event_time: TDateTimeField
      FieldName = 'event_time'
    end
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 432
    Top = 264
  end
  object Timer1: TTimer
    Interval = 500
    Left = 104
    Top = 200
  end
end
