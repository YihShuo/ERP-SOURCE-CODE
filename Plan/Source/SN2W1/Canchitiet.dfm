object Chitiet: TChitiet
  Left = 355
  Top = 186
  Width = 1364
  Height = 763
  Caption = 'Chitiet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1348
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 21
      Height = 20
      Caption = 'ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 936
      Top = 5
      Width = 11
      Height = 25
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 936
      Top = 32
      Width = 11
      Height = 25
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 936
      Top = 56
      Width = 11
      Height = 25
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 856
      Top = 8
      Width = 57
      Height = 25
      Caption = 'Tong :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 856
      Top = 32
      Width = 79
      Height = 25
      Caption = 'Da  phat:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 856
      Top = 56
      Width = 67
      Height = 25
      Caption = 'Con lai:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 52
      Top = 20
      Width = 169
      Height = 28
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 248
      Top = 19
      Width = 80
      Height = 29
      Caption = 'Start'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object btnrefresh: TButton
      Left = 424
      Top = 18
      Width = 82
      Height = 29
      Caption = 'Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnrefreshClick
    end
    object btncommit: TButton
      Left = 336
      Top = 19
      Width = 80
      Height = 29
      Caption = 'Commit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btncommitClick
    end
    object Button2: TButton
      Left = 576
      Top = 20
      Width = 83
      Height = 28
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 673
      Top = 28
      Width = 144
      Height = 28
      Caption = 'Scan Check Lean'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 576
      Top = 56
      Width = 81
      Height = 25
      Caption = 'Print All'
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 488
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Print 1 Nhan'
      TabOrder = 7
      OnClick = Button5Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1348
    Height = 635
    Align = alClient
    DataSource = dsChitiet
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
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
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
      end
      item
        EditButtons = <>
        FieldName = 'F_id'
        Footers = <>
      end
      item
        Color = clYellow
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
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'residual_time'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 30
      end>
  end
  object MSComm1: TMSComm
    Left = 512
    Top = 16
    Width = 32
    Height = 32
    OnComm = MSComm1Comm
    ControlData = {
      2143341208000000ED030000ED03000001568A64000006000000030000040000
      00020000802500000000080000000000000000003F00000001000000}
  end
  object Memo1: TMemo
    Left = 496
    Top = 456
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT COUNT(1) as RecCount FROM Ch_Formulation_Details_HK')
    Left = 104
    Top = 144
    object Query1RecCount: TIntegerField
      FieldName = 'RecCount'
    end
  end
  object dsChitiet: TDataSource
    DataSet = QChitiet
    Left = 304
    Top = 144
  end
  object cdsChitiet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspChitiet'
    Left = 264
    Top = 144
    object cdsChitietidDetail: TFloatField
      FieldName = 'idDetail'
    end
    object cdsChitietlean_name: TStringField
      FieldName = 'lean_name'
      FixedChar = True
      Size = 200
    end
    object cdsChitietF_id: TFloatField
      FieldName = 'F_id'
    end
    object cdsChitietcurr_weight: TFloatField
      FieldName = 'curr_weight'
      OnChange = cdsChitietcurr_weightChange
      OnValidate = cdsChitietcurr_weightValidate
    end
    object cdsChitietshift: TStringField
      FieldName = 'shift'
      FixedChar = True
      Size = 50
    end
    object cdsChitietUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object cdsChitietname_vi: TStringField
      FieldName = 'name_vi'
      FixedChar = True
      Size = 200
    end
    object cdsChitietcurr_weight_residual: TFloatField
      FieldName = 'curr_weight_residual'
    end
    object cdsChitietresidual_time: TDateTimeField
      FieldName = 'residual_time'
    end
    object cdsChitietYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object cdsChitietNot_valid: TIntegerField
      FieldName = 'Not_valid'
    end
    object cdsChitietid_dept: TStringField
      FieldName = 'id_dept'
      FixedChar = True
      Size = 10
    end
    object cdsChitietname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 250
    end
    object cdsChitietAggSumCurrWeight: TAggregateField
      FieldName = 'AggSumCurrWeight'
      Active = True
      Expression = 'sum(curr_weight)'
    end
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 64
    Top = 144
  end
  object UpdateSQLChitiet: TUpdateSQL
    Left = 360
    Top = 144
  end
  object QChitiet: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select A.*, C.name,CAST(0 AS FLOAT) AS tong, CAST(0 AS FLOAT) AS' +
        ' curr,CAST(0 AS FLOAT) AS thieu from Ch_Formulation_Details_HK A'
      'left join Ch_Formulation_HK B on A.F_id=b.id'
      
        'left join Ch_Formula C on B.inv_id=C.hc1 and B.inv_id1= C.hc2 an' +
        'd B.sol_id=C.hc3'
      ' where F_id='#39'20'#39)
    UpdateObject = UpdateSQLChitiet
    Left = 168
    Top = 144
    object QChitietidDetail: TFloatField
      FieldName = 'idDetail'
    end
    object QChitietid_dept: TStringField
      FieldName = 'id_dept'
      FixedChar = True
      Size = 10
    end
    object QChitietF_id: TFloatField
      FieldName = 'F_id'
    end
    object QChitietcurr_weight: TFloatField
      FieldName = 'curr_weight'
    end
    object QChitietshift: TStringField
      FieldName = 'shift'
      FixedChar = True
      Size = 50
    end
    object QChitietUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object QChitietYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 2
    end
    object QChitietcurr_weight_residual: TFloatField
      FieldName = 'curr_weight_residual'
    end
    object QChitietresidual_time: TDateTimeField
      FieldName = 'residual_time'
    end
    object QChitietname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 250
    end
    object QChitiettong: TFloatField
      FieldName = 'tong'
    end
    object QChitietcurr: TFloatField
      FieldName = 'curr'
    end
    object QChitietthieu: TFloatField
      FieldName = 'thieu'
    end
  end
  object dspChitiet: TDataSetProvider
    DataSet = QChitiet
    Left = 216
    Top = 144
  end
  object temp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT COUNT(1) as RecCount FROM Ch_Formulation_Details_HK')
    Left = 136
    Top = 216
    object IntegerField1: TIntegerField
      FieldName = 'RecCount'
    end
  end
end
