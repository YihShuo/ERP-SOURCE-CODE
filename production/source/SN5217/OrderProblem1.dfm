object OrderProblem: TOrderProblem
  Left = 298
  Top = 148
  Width = 1544
  Height = 675
  Caption = 'Order Problem'
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
    Width = 1528
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
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
    object Label2: TLabel
      Left = 208
      Top = 13
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Xieming:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 568
      Top = 22
      Width = 53
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 376
      Top = 16
      Width = 40
      Height = 16
      Caption = 'Atricle:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 98
      Top = 13
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 280
      Top = 13
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 731
      Top = 11
      Width = 73
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object DTP: TDateTimePicker
      Left = 632
      Top = 17
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 424
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1528
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
        FieldName = 'CreateDate'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
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
        FieldName = 'ARTICLE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Chua_nhap_kho'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Nhap_kho'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Tai_che'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Kiem_hang'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Xuat_hang'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Tong_vao_khoTP'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clYellow
        EditButtons = <>
        FieldName = 'Reason'
        Footers = <>
        Width = 200
        OnEditButtonClick = DBGridEh1Columns11EditButtonClick
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'Userdate'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select a.*, c.XieMing,c.ARTICLE from YWCP_Problem A'
      
        'left join ddzl B on  a.ddbh=b.DDBH and CONVERT(date,a.userdate,1' +
        '11)= CONVERT(date,GETDATE(),111)'
      'left join xxzl C on C.XieXing = b.XieXing and C.SheHao=b.SheHao')
    Left = 256
    Top = 224
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1Chua_nhap_kho: TIntegerField
      FieldName = 'Chua_nhap_kho'
    end
    object Query1Nhap_kho: TIntegerField
      FieldName = 'Nhap_kho'
    end
    object Query1Tai_che: TIntegerField
      FieldName = 'Tai_che'
    end
    object Query1Xuat_hang: TIntegerField
      FieldName = 'Xuat_hang'
    end
    object Query1Kiem_hang: TIntegerField
      FieldName = 'Kiem_hang'
    end
    object Query1Tong_vao_khoTP: TIntegerField
      FieldName = 'Tong_vao_khoTP'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1Reason: TStringField
      FieldName = 'Reason'
      FixedChar = True
      Size = 255
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 255
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 50
    end
    object Query1Userdate: TDateTimeField
      FieldName = 'Userdate'
    end
    object Query1ID: TAutoIncField
      FieldName = 'ID'
    end
    object Query1CreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 240
  end
  object temp: TQuery
    Left = 488
    Top = 208
  end
end
