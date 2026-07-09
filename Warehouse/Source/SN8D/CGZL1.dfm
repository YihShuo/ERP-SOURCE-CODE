object CGZL: TCGZL
  Left = 491
  Top = 242
  Width = 875
  Height = 446
  Caption = 'CGZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 859
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 17
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 248
      Top = 16
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 520
      Top = 16
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 70
      Top = 13
      Width = 187
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 769
      Top = 7
      Width = 73
      Height = 33
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
      Left = 336
      Top = 11
      Width = 169
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 592
      Top = 11
      Width = 169
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 49
    Width = 859
    Height = 358
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
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh2DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'No_ID'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 150
      end
      item
        DisplayFormat = '#0.00'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 100
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MaterialQCcheck where 1=2')
    Left = 192
    Top = 160
    object Query1No_ID: TIntegerField
      FieldName = 'No_ID'
      Origin = 'DB.MaterialQCcheck.No_ID'
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.MaterialQCcheck.GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.MaterialQCcheck.CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      Origin = 'DB.MaterialQCcheck.CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.MaterialQCcheck.RKNO'
      FixedChar = True
      Size = 255
    end
    object Query1DateInput: TDateTimeField
      FieldName = 'DateInput'
      Origin = 'DB.MaterialQCcheck.DateInput'
    end
    object Query1Hours: TStringField
      FieldName = 'Hours'
      Origin = 'DB.MaterialQCcheck.Hours'
      FixedChar = True
      Size = 8
    end
    object Query1LB: TIntegerField
      FieldName = 'LB'
      Origin = 'DB.MaterialQCcheck.LB'
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.MaterialQCcheck.ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1RY: TStringField
      FieldName = 'RY'
      Origin = 'DB.MaterialQCcheck.RY'
      FixedChar = True
      Size = 255
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      Origin = 'DB.MaterialQCcheck.Article'
      FixedChar = True
      Size = 255
    end
    object Query1CustPO: TStringField
      FieldName = 'CustPO'
      Origin = 'DB.MaterialQCcheck.CustPO'
      FixedChar = True
      Size = 255
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.MaterialQCcheck.Qty'
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.MaterialQCcheck.Remark'
      FixedChar = True
      Size = 100
    end
    object Query1Tracking: TStringField
      FieldName = 'Tracking'
      Origin = 'DB.MaterialQCcheck.Tracking'
      FixedChar = True
      Size = 10
    end
    object Query1SampleSent: TBooleanField
      FieldName = 'SampleSent'
      Origin = 'DB.MaterialQCcheck.SampleSent'
    end
    object Query1QC_Check: TStringField
      FieldName = 'QC_Check'
      Origin = 'DB.MaterialQCcheck.QC_Check'
      FixedChar = True
      Size = 10
    end
    object Query1RandomQty: TCurrencyField
      FieldName = 'RandomQty'
      Origin = 'DB.MaterialQCcheck.RandomQty'
    end
    object Query1DefectQty: TCurrencyField
      FieldName = 'DefectQty'
      Origin = 'DB.MaterialQCcheck.DefectQty'
    end
    object Query1Per_Defect: TBooleanField
      FieldName = 'Per_Defect'
      Origin = 'DB.MaterialQCcheck.Per_Defect'
    end
    object Query1QC_Reason: TStringField
      FieldName = 'QC_Reason'
      Origin = 'DB.MaterialQCcheck.QC_Reason'
      FixedChar = True
      Size = 50
    end
    object Query1Settlement: TStringField
      FieldName = 'Settlement'
      Origin = 'DB.MaterialQCcheck.Settlement'
      FixedChar = True
      Size = 50
    end
    object Query1DefectName: TStringField
      FieldName = 'DefectName'
      Origin = 'DB.MaterialQCcheck.DefectName'
      FixedChar = True
      Size = 200
    end
    object Query1QC_FinishDate: TDateTimeField
      FieldName = 'QC_FinishDate'
      Origin = 'DB.MaterialQCcheck.QC_FinishDate'
    end
    object Query1QC_UserID: TStringField
      FieldName = 'QC_UserID'
      Origin = 'DB.MaterialQCcheck.QC_UserID'
      FixedChar = True
      Size = 10
    end
    object Query1QC_Date: TDateTimeField
      FieldName = 'QC_Date'
      Origin = 'DB.MaterialQCcheck.QC_Date'
    end
    object Query1File_Name: TStringField
      FieldName = 'File_Name'
      Origin = 'DB.MaterialQCcheck.File_Name'
      FixedChar = True
      Size = 100
    end
    object Query1Lab_Check: TStringField
      FieldName = 'Lab_Check'
      Origin = 'DB.MaterialQCcheck.Lab_Check'
      FixedChar = True
      Size = 50
    end
    object Query1Lab_Reason: TStringField
      FieldName = 'Lab_Reason'
      Origin = 'DB.MaterialQCcheck.Lab_Reason'
      FixedChar = True
      Size = 50
    end
    object Query1Lab_Result: TStringField
      FieldName = 'Lab_Result'
      Origin = 'DB.MaterialQCcheck.Lab_Result'
      FixedChar = True
      Size = 50
    end
    object Query1Lab_Date: TDateTimeField
      FieldName = 'Lab_Date'
      Origin = 'DB.MaterialQCcheck.Lab_Date'
    end
    object Query1Lab_UserID: TStringField
      FieldName = 'Lab_UserID'
      Origin = 'DB.MaterialQCcheck.Lab_UserID'
      FixedChar = True
      Size = 10
    end
    object Query1Lab_Num: TStringField
      FieldName = 'Lab_Num'
      Origin = 'DB.MaterialQCcheck.Lab_Num'
      FixedChar = True
      Size = 50
    end
    object Query1T2Test_Result: TStringField
      FieldName = 'T2Test_Result'
      Origin = 'DB.MaterialQCcheck.T2Test_Result'
      FixedChar = True
    end
    object Query1Comparision: TStringField
      FieldName = 'Comparision'
      Origin = 'DB.MaterialQCcheck.Comparision'
      FixedChar = True
    end
    object Query1Lab_FinishDate: TDateTimeField
      FieldName = 'Lab_FinishDate'
      Origin = 'DB.MaterialQCcheck.Lab_FinishDate'
    end
    object Query1File_Name_Lab: TStringField
      FieldName = 'File_Name_Lab'
      Origin = 'DB.MaterialQCcheck.File_Name_Lab'
      FixedChar = True
      Size = 100
    end
    object Query1Lab_PDM_ID: TStringField
      FieldName = 'Lab_PDM_ID'
      Origin = 'DB.MaterialQCcheck.Lab_PDM_ID'
      FixedChar = True
    end
    object Query1Lab_PDM_IDT2: TStringField
      FieldName = 'Lab_PDM_IDT2'
      Origin = 'DB.MaterialQCcheck.Lab_PDM_IDT2'
      FixedChar = True
      Size = 50
    end
    object Query1PDM_File_Name: TStringField
      FieldName = 'PDM_File_Name'
      Origin = 'DB.MaterialQCcheck.PDM_File_Name'
      FixedChar = True
      Size = 50
    end
    object Query1Receducing_TLSP: TStringField
      FieldName = 'Receducing_TLSP'
      Origin = 'DB.MaterialQCcheck.Receducing_TLSP'
      FixedChar = True
      Size = 50
    end
    object Query1Lab_ConfirmDate: TDateTimeField
      FieldName = 'Lab_ConfirmDate'
      Origin = 'DB.MaterialQCcheck.Lab_ConfirmDate'
    end
    object Query1Lab_DateRemark: TDateTimeField
      FieldName = 'Lab_DateRemark'
      Origin = 'DB.MaterialQCcheck.Lab_DateRemark'
    end
    object Query1Final_Status: TStringField
      FieldName = 'Final_Status'
      Origin = 'DB.MaterialQCcheck.Final_Status'
      FixedChar = True
      Size = 10
    end
    object Query1Final_Remark: TStringField
      FieldName = 'Final_Remark'
      Origin = 'DB.MaterialQCcheck.Final_Remark'
      FixedChar = True
      Size = 50
    end
    object Query1ManagerCheck: TBooleanField
      FieldName = 'ManagerCheck'
      Origin = 'DB.MaterialQCcheck.ManagerCheck'
    end
    object Query1ManagerID: TStringField
      FieldName = 'ManagerID'
      Origin = 'DB.MaterialQCcheck.ManagerID'
      FixedChar = True
      Size = 10
    end
    object Query1ManagerCFMDate: TDateTimeField
      FieldName = 'ManagerCFMDate'
      Origin = 'DB.MaterialQCcheck.ManagerCFMDate'
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.MaterialQCcheck.UserDate'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.MaterialQCcheck.UserID'
      FixedChar = True
      Size = 10
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.MaterialQCcheck.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 128
  end
end
