object ScanInvoice: TScanInvoice
  Left = 522
  Top = 189
  Width = 1305
  Height = 675
  Caption = 'ScanInvoice'
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
  object Label4: TLabel
    Left = 395
    Top = 11
    Width = 91
    Height = 24
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'DepName:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 72
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 164
      Height = 24
      Caption = 'Quet ma Barcode'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 608
      Top = 40
      Width = 76
      Height = 18
      Caption = 'Invoice No:'
      Visible = False
    end
    object Panel1: TPanel
      Left = 192
      Top = 8
      Width = 385
      Height = 57
      Caption = 'Panel1'
      TabOrder = 0
      object Edit1: TEdit
        Left = 8
        Top = 8
        Width = 369
        Height = 45
        AutoSize = False
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
    end
    object Button2: TButton
      Left = 864
      Top = 24
      Width = 75
      Height = 41
      Caption = 'Query'
      TabOrder = 1
      Visible = False
    end
    object Edit2: TEdit
      Left = 688
      Top = 32
      Width = 153
      Height = 26
      TabOrder = 2
      Visible = False
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 72
    Width = 1289
    Height = 564
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'INV_NO'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'RYNO'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'STYLE_NAME'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'PO'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Width = 150
      end>
  end
  object ScanData: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        ' select a.INV_NO,b.UserDate, b.RYNO, b.STYLE_NAME,b.PO,b.ARTICLE' +
        ' from INVOICE_M A'
      ' left join INVOICE_D B on a.INV_NO=b.INV_NO'
      '  where 1=2')
    Left = 168
    Top = 152
    object ScanDataINV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'DB.INVOICE_M.INV_NO'
      FixedChar = True
      Size = 15
    end
    object ScanDataUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.INVOICE_D.UserDate'
    end
    object ScanDataRYNO: TStringField
      FieldName = 'RYNO'
      Origin = 'DB.INVOICE_D.RYNO'
      FixedChar = True
      Size = 50
    end
    object ScanDataSTYLE_NAME: TStringField
      FieldName = 'STYLE_NAME'
      Origin = 'DB.INVOICE_D.STYLE_NAME'
      FixedChar = True
      Size = 50
    end
    object ScanDataPO: TStringField
      FieldName = 'PO'
      Origin = 'DB.INVOICE_D.PO'
      FixedChar = True
      Size = 50
    end
    object ScanDataARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.INVOICE_D.ARTICLE'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = ScanData
    Left = 200
    Top = 152
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 336
    Top = 152
  end
end
