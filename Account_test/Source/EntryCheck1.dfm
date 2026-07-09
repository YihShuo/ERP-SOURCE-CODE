object EntryCheck: TEntryCheck
  Left = 204
  Top = 274
  Width = 1721
  Height = 697
  Caption = 'EntryCheck'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
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
    Width = 1705
    Height = 193
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 497
      Height = 24
      AutoSize = False
      Caption = 'Month Material Entry:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 52
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 200
      Top = 52
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label4: TLabel
      Left = 46
      Top = 88
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 151
      Top = 88
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label2: TLabel
      Left = 178
      Top = 126
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
    end
    object Label7: TLabel
      Left = 469
      Top = 88
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZSYWJC:'
    end
    object Label8: TLabel
      Left = 460
      Top = 52
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CWBH:'
    end
    object Label9: TLabel
      Left = 576
      Top = 52
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CostID:'
    end
    object Label10: TLabel
      Left = 24
      Top = 126
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label11: TLabel
      Left = 262
      Top = 88
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label12: TLabel
      Left = 247
      Top = 92
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label13: TLabel
      Left = 371
      Top = 88
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label14: TLabel
      Left = 368
      Top = 126
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Invoice:'
    end
    object Label15: TLabel
      Left = 599
      Top = 126
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TOKHAI:'
    end
    object Label16: TLabel
      Left = 497
      Top = 161
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHO:'
    end
    object Label17: TLabel
      Left = 379
      Top = 163
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Export:'
    end
    object Label18: TLabel
      Left = 720
      Top = 52
      Width = 22
      Height = 16
      Alignment = taRightJustify
      Caption = 'YN:'
    end
    object Label19: TLabel
      Left = 4
      Top = 162
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'FKBH:'
    end
    object Label20: TLabel
      Left = 210
      Top = 163
      Width = 47
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGBH:'
    end
    object Edit2: TEdit
      Left = 264
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 80
      Top = 48
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 838
      Top = 40
      Width = 97
      Height = 33
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 368
      Top = 48
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 838
      Top = 76
      Width = 97
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 80
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 5
      Text = '2020'
      OnChange = CBX1Change
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX2: TComboBox
      Left = 192
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 6
      Text = '01'
      OnChange = CBX2Change
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button3: TButton
      Left = 838
      Top = 3
      Width = 97
      Height = 33
      Caption = 'PRINT'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 259
      Top = 122
      Width = 104
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 532
      Top = 84
      Width = 181
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit4: TEdit
      Left = 532
      Top = 48
      Width = 41
      Height = 24
      TabOrder = 10
    end
    object Edit7: TEdit
      Left = 648
      Top = 48
      Width = 65
      Height = 24
      TabOrder = 11
    end
    object CBX3: TComboBox
      Left = 80
      Top = 122
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 12
    end
    object CBX4: TComboBox
      Left = 296
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 13
      Text = '2020'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX5: TComboBox
      Left = 412
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 14
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object cbInvoice: TComboBox
      Left = 447
      Top = 122
      Width = 143
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 15
    end
    object Edit8: TEdit
      Left = 653
      Top = 122
      Width = 129
      Height = 24
      TabOrder = 16
    end
    object CBX6: TComboBox
      Left = 530
      Top = 158
      Width = 301
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 17
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'NK'
        'TC'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'H11'
        'NQ'
        'NKNQ'
        'NK+TC+HD+KD'
        'NK1+TC1+KD1+NQ+NKNQ'
        'NK1+TC1+HD1+KD1+NQ+NKNQ'
        'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ')
    end
    object Edit9: TEdit
      Left = 422
      Top = 158
      Width = 66
      Height = 24
      TabOrder = 18
    end
    object cbYN: TComboBox
      Left = 746
      Top = 47
      Width = 49
      Height = 24
      ItemHeight = 16
      TabOrder = 19
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        '1'
        '5')
    end
    object Button4: TButton
      Left = 838
      Top = 113
      Width = 97
      Height = 33
      Caption = 'EXCEL_Tot'
      TabOrder = 20
      OnClick = Button4Click
    end
    object edtFKBH: TEdit
      Left = 81
      Top = 158
      Width = 104
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 21
    end
    object edtCGBH: TEdit
      Left = 260
      Top = 157
      Width = 104
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 22
    end
    object Button5: TButton
      Left = 838
      Top = 151
      Width = 97
      Height = 33
      Caption = 'Transfer WF'
      TabOrder = 23
      OnClick = Button5Click
    end
    object btn1: TButton
      Left = 942
      Top = 3
      Width = 115
      Height = 33
      Caption = 'PRINT FORMAT'
      TabOrder = 24
      OnClick = btn1Click
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 193
    Width = 1705
    Height = 465
    ActivePage = TS2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'ALL'
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1697
        Height = 434
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
            Title.Caption = #20837#24235#32232#34399'|RKNO'
            Title.TitleButton = True
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = #24288#21830'|ZSYWJC'
            Title.TitleButton = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'ZSNO'
            Footers = <>
            Title.Caption = #25505#36092#21934#34399'|PO NO'
            Title.TitleButton = True
            Width = 121
          end
          item
            DisplayFormat = 'YYYY/MM/DD'
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Title.Caption = #20837#24235#26085'|NGAY CT'
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #25505#36092#30906#35469'|CFMDATE'
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.TitleButton = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 313
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                Alignment = taRightJustify
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                FieldName = 'CWBH'
                ValueType = fvtCount
              end>
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
            Title.TitleButton = True
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <
              item
                FieldName = 'USPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #32654#37329#21934#20729'|USPrice'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <
              item
                FieldName = 'USACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32654#37329#37329#38989'|USACC'
            Title.TitleButton = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #36234#30462#21934#20729'|VNPrice'
            Title.TitleButton = True
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #36234#30462#37329#38989'|VNACC'
            Title.TitleButton = True
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'CWHL'
            Footers = <
              item
                FieldName = 'CWHL'
                ValueType = fvtAvg
              end>
            Title.Caption = #21295#29575'|CWHL'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'ExchACC'
            Footers = <
              item
                FieldName = 'ExchACC'
                ValueType = fvtSum
              end>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'CGBH'
            Footers = <>
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'RKSB'
            Footers = <>
            Title.TitleButton = True
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235'|CKBH'
            Title.TitleButton = True
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'DOCNO'
            Footers = <>
            Title.Caption = #30332#31080'|INVOICE'
            Width = 136
          end
          item
            EditButtons = <>
            FieldName = 'invno'
            Footers = <>
            Title.Caption = #30332#31080'|invno'
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Caption = #28023#38364'|HaiQuan'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'UnitC'
            Footers = <>
            Title.Caption = #21934#20301'|UnitC'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RateC'
            Footers = <>
            Title.Caption = #20812#25563#27604#29575'|RateC'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'HQName'
            Footers = <>
            Title.Caption = #28023#38364#21517#31281'|HQName'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Declaretion'
            Footers = <>
            Title.Caption = #22577#38364#21934'|TOKHAI'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'PaQty'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Title.Caption = #39006#21029'|HGLB'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Export'
            Footers = <>
            Title.Caption = #39006#21029' |Export'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'RKMEMO'
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DOCDATE'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'CNO1'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'tybh'
            Footers = <>
            Title.Caption = 'Tax Code'
          end
          item
            EditButtons = <>
            FieldName = 'InputDate'
            Footers = <>
            Title.Caption = 'Actual Date In WH'
          end
          item
            EditButtons = <>
            FieldName = 'SOTT'
            Footers = <>
            Title.Caption = 'STT Hang'
          end
          item
            EditButtons = <>
            FieldName = 'DONGIA'
            Footers = <>
            Title.Caption = 'Don Gia TK'
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Report'
      ImageIndex = 1
      object DBGridEh_Report: TDBGridEh
        Left = 0
        Top = 41
        Width = 1697
        Height = 393
        Align = alClient
        DataSource = DSReport
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 7
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'NgayCT'
            Footers = <>
            Title.Caption = 'Ngay CT'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'NgayHD'
            Footers = <>
            Title.Caption = 'Ngay Hoa Don'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'Ma NCC'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TienTe'
            Footer.FieldName = 'TienTe'
            Footers = <>
            Title.Caption = 'Tien Te'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'TyGia'
            Footers = <>
            Title.Caption = 'Ty Gia'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'MaThueSuat'
            Footers = <>
            Title.Caption = 'Ma Thue Suat'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'MaHD'
            Footers = <>
            Title.Caption = 'Ma Hoa Don'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'GhichuDauDon'
            Footers = <>
            Title.Caption = 'Ghi Chu Dau Don'
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'TienNguyenTe'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Tien Nguyen Te'
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'TienNguyenTeChuaThue'
            Footers = <>
            Title.Caption = 'Tien Nguyen Te Chua Thue'
            Width = 84
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'TienNoiTe'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Tien Noi Te'
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <>
            Title.Caption = 'TK Doi Ung'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'BoPhan'
            Footers = <>
            Title.Caption = 'Bo Phan'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <
              item
                FieldName = 'RKNO'
                ValueType = fvtCount
              end>
            Title.Caption = 'Ghi Chu Than Don'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'MaDonHang'
            Footers = <>
            Title.Caption = 'Ma Don Hang'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'LoaiCT'
            Footers = <>
            Title.Caption = 'Loai Chung Tu'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'So Luong'
            Width = 90
          end>
      end
      object pnlInf: TPanel
        Left = 544
        Top = 133
        Width = 361
        Height = 191
        Caption = 'pnlInf'
        TabOrder = 1
        Visible = False
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 359
          Height = 30
          Align = alTop
          Caption = 'Information'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Panel4: TPanel
            Left = 330
            Top = 1
            Width = 28
            Height = 28
            Align = alRight
            Caption = 'X'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Panel4Click
          end
        end
        object mmoInf: TMemo
          Left = 1
          Top = 31
          Width = 359
          Height = 127
          Align = alClient
          TabOrder = 1
        end
        object Panel2: TPanel
          Left = 1
          Top = 158
          Width = 359
          Height = 32
          Align = alBottom
          TabOrder = 2
          object btn_Yes: TButton
            Left = 105
            Top = 3
            Width = 75
            Height = 25
            Caption = 'Yes'
            TabOrder = 0
            OnClick = btn_YesClick
          end
          object btn_No: TButton
            Left = 186
            Top = 3
            Width = 75
            Height = 25
            Caption = 'No'
            TabOrder = 1
            OnClick = btn_NoClick
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1697
        Height = 41
        Align = alTop
        TabOrder = 2
        object LabelRKDate: TLabel
          Left = 16
          Top = 13
          Width = 47
          Height = 16
          Caption = 'RKDate'
        end
        object Label22: TLabel
          Left = 170
          Top = 17
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Label23: TLabel
          Left = 316
          Top = 15
          Width = 50
          Height = 16
          Caption = 'Loai CT:'
        end
        object Label21: TLabel
          Left = 578
          Top = 13
          Width = 93
          Height = 16
          Caption = 'Transfer Status:'
        end
        object DTP1: TDateTimePicker
          Left = 72
          Top = 9
          Width = 89
          Height = 24
          Date = 45433.639962893520000000
          Format = 'yyyy/MM/dd'
          Time = 45433.639962893520000000
          TabOrder = 0
        end
        object DTP2: TDateTimePicker
          Left = 190
          Top = 9
          Width = 91
          Height = 24
          Date = 45433.640307604170000000
          Format = 'yyyy/MM/dd'
          Time = 45433.640307604170000000
          TabOrder = 1
        end
        object cbCT: TComboBox
          Left = 370
          Top = 9
          Width = 167
          Height = 24
          ItemHeight = 16
          TabOrder = 2
          Items.Strings = (
            ''
            '713'
            '7131'
            '716'
            '7161'
            '717'
            '7171'
            '741'
            '742'
            '743'
            '7431'
            '722'
            '7221'
            '723'
            '7231'
            '724'
            '7241')
        end
        object cbtransfer: TComboBox
          Left = 676
          Top = 9
          Width = 95
          Height = 24
          ItemHeight = 16
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'Transfer'
            'No Transfer')
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 324
    Top = 400
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 284
    Top = 368
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 100 KCRK.*,KCRKS.*,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,KC' +
        'ZLS.CWBH,'
      
        '       CLHG.UnitC,CLHG.RateC,CLHG.HGPM as HQName,KCPK.Declaretio' +
        'n,KCPK.Export,CWFK.FKBH'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'left join CLHG on CLHG.CLBH=KCRKS.CLBH and CLHG.HGBH=KCRKS.CNO'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH'
      'left join KCPK on KCPK.PKNO=KCRK.RKNO'
      
        'left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH ' +
        'AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB'
      'left join CWFK ON CWFK.FKBH=CWYF.FKBH'
      'where KCRK.RKNO=KCRKS.RKNO'
      '')
    Left = 324
    Top = 368
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1ZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query1CWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object Query1ExchACC: TFloatField
      FieldName = 'ExchACC'
      DisplayFormat = '##,#0'
    end
    object Query1CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query1RKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 15
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
    object Query1invno: TStringField
      FieldName = 'invno'
      FixedChar = True
    end
    object Query1CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object Query1UnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 40
    end
    object Query1RateC: TFloatField
      FieldName = 'RateC'
      DisplayFormat = '#,##0.0000'
    end
    object Query1HQName: TStringField
      FieldName = 'HQName'
      FixedChar = True
      Size = 200
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
    end
    object Query1PaQty: TFloatField
      FieldName = 'PaQty'
    end
    object Query1HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query1Export: TStringField
      FieldName = 'Export'
      FixedChar = True
      Size = 5
    end
    object Query1RKMEMO: TStringField
      FieldName = 'RKMEMO'
      FixedChar = True
      Size = 200
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object Query1DOCDATE: TDateTimeField
      FieldName = 'DOCDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CNO1: TStringField
      FieldName = 'CNO1'
    end
    object Query1tybh: TStringField
      FieldName = 'tybh'
      Size = 15
    end
    object Query1InputDate: TDateTimeField
      FieldName = 'InputDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1SOTT: TIntegerField
      FieldName = 'SOTT'
    end
    object Query1DONGIA: TFloatField
      FieldName = 'DONGIA'
    end
  end
  object qry_report: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'IF OBJECT_ID('#39'tempdb..#TempLoaiCT'#39') IS NOT NULL'
      '  begin drop table #TempLoaiCT end'
      '  SELECT DISTINCT kcrk.RKNO,  '
      
        '  CASE WHEN (CKBH='#39'VA12'#39' )  AND ISNULL(kcrks.USPrice,0)=0  THEN ' +
        #39'721'#39'    '
      
        '    '#9#9'WHEN (CKBH='#39'VA12'#39' ) AND ISNULL(kcrks.USPrice,0)<>0   THEN ' +
        #39'7211'#39'    '
      
        '    '#9#9'WHEN (CKBH='#39'VTXW'#39' ) AND  ISNULL(kcrks.USACC,0)=0 THEN '#39'719' +
        #39'    '
      
        '    '#9#9'WHEN (CKBH='#39'VTXW'#39' ) AND  ISNULL(kcrks.USACC,0)<>0 THEN '#39'71' +
        '91'#39'    '
      
        '    '#9#9'WHEN (CKBH='#39'VTXX'#39'  OR CKBH='#39'VTXY'#39' OR CKBH='#39'VTXZ'#39' ) AND ISN' +
        'ULL(kcrks.USPrice,0)=0    THEN '#39'714'#39'    '
      
        '    '#9#9'WHEN (CKBH='#39'VTXX'#39'  OR CKBH='#39'VTXY'#39' OR CKBH='#39'VTXZ'#39' )AND ISNU' +
        'LL(kcrks.USPrice,0)<>0   THEN '#39'7141'#39'    '
      '    '#9#9'ELSE '#39'742'#39'    '
      '    '#9#9'END LoaiCT     '
      '  INTO #TempLoaiCT        '
      '  FROM  kcrks   '
      '  LEFT JOIN clzl ON cldh=CLBH  '
      '  LEFT JOIN kcrk ON KCRK.RKNO = KCRKS.RKNO  '
      '  WHERE  ISNULL(KCRK.DOCNO,'#39#39')<>'#39#39'  '
      
        '  '#9'AND CONVERT(SMALLDATETIME,CONVERT(VARCHAR,KCRK.USERDate,111))' +
        ' BETWEEN  '#39'2024/06/01'#39' and '#39'2024/06/30'#39' '
      #9'AND KCRK.GSBH='#39'VA12'#39
      #9'AND KCRK.CKBH='#39'VA12'#39
      ''
      '  IF OBJECT_ID('#39'tempdb..#TempTransfer'#39') IS NOT NULL    '
      '  begin drop table #TempTransfer end   '
      '  SELECT KCRK.CKBH ,KCRK.RKNO, SUM(kcrks.Qty)Qty  '
      '  '#9'  ,CASE WHEN CWBH='#39'152'#39' THEN '#39'1521'#39'    '
      '    '#9'         WHEN CWBH='#39'153'#39' THEN '#39'1531'#39' END CWBH  '
      '  '#9'  ,KCRK.ZSBH'
      '  '#9'  ,SUM(KCRKS.VNACC) AS TienNguyenTe  '
      '  '#9'  ,SUM(KCRKS.VNACC) AS TienNguyenTeChuaThue  '
      '  '#9'  ,'#39'1'#39' TyGia  '
      '  '#9'  ,SUM(KCRKS.VNACC) AS TienNoiTe   '
      '  '#9'  ,CT.LoaiCT  '
      
        '  '#9'  ,KCRK.ZSBH+'#39'-'#39'+ KCRK.DOCNO AS MaDonHang,KCRK.DOCDATE AS Nga' +
        'yCT  '
      '  '#9'  ,'#39'VND'#39' TienTe  '
      
        '     ,CASE WHEN  KCRK.CKBH='#39'VA12'#39' THEN KCRK.ZSBH+'#39'-'#39'+ KCRK.DOCNO' +
        '+  '#39'-Nhap kho nguyen lieu vat lieu Kho VA12'#39'  '
      
        '  '#9#9'    WHEN KCRK.CKBH IN ('#39'VTXX'#39','#39'VTXY'#39','#39'VTXZ'#39') THEN KCRK.ZSBH+' +
        #39'-'#39'+ KCRK.DOCNO +'#39'-Nhap cong cu dung cu Khu A'#39'  '
      
        '              WHEN KCRK.CKBH ='#39'VTXW'#39' THEN KCRK.ZSBH+'#39'-'#39'+ KCRK.DO' +
        'CNO + '#39'-Nhap kho nguyen lieu vat lieu HCA'#39'  '
      '  '#9#9'ELSE '#39#39'  '
      '  '#9#9'END  GhichuDauDon  '
      '  '#9'  ,'#39'A-TX'#39' BoPhan  '
      '  INTO #TempTransfer  '
      '  from  KCRKS'
      '  left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      '  left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      '  left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      
        '  left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.C' +
        'KBH '
      '  left join KCCK on KCCK.CKBH=KCRK.CKBH '
      '  left join KCPK on KCPK.PKNO=KCRK.RKNO '
      
        '  left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLB' +
        'H AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB '
      '  left join CWFK ON CWFK.FKBH=CWYF.FKBH  '
      
        '  left join CGZL_VATNO on CGZL_VATNO.VATNO=KCRK.DOCNO and CGZL_V' +
        'ATNO.VATDate=KCRK.DOCDATE'
      '                          AND CGZL_VATNO.ZSBH_MST=zszl.tybh '
      '  LEFT JOIN #TempLoaiCT CT ON  CT.RKNO = KCRK.RKNO  '
      '  WHERE 1=1  '
      
        '  AND CONVERT(SMALLDATETIME,CONVERT(VARCHAR,KCRK.USERDate,111)) ' +
        'BETWEEN  '#39'2024/06/01'#39' and '#39'2024/06/30'#39'  '
      '  and ISNULL(KCPK.Declaretion,'#39#39')='#39#39
      '  AND ISNULL(KCRK.DOCNO,'#39#39')<>'#39#39'  '
      '  AND CWBH IN('#39'152'#39','#39'153'#39')  '
      '  and CWBH ='#39'152'#39
      '  and KCCK.CKBH ='#39'VA12'#39
      '  and KCRKS.CLBH like '#39'%'#39
      '  and CLZL.YWPM like '#39'%'#39
      '  and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39'  '
      '  and KCRKS.CostID like '#39'%'#39
      '   and KCCK.GSBH='#39'VA12'#39
      
        '  GROUP BY  KCRK.CKBH ,KCRK.RKNO,KCZLS.CWBH,KCRK.ZSBH,CT.LoaiCT,' +
        'KCRK.DOCNO,KCRK.DOCDATE'
      '  UNION ALL'
      '  SELECT '#39#39' CKBH,'#39'002'#39' RKNO, 0 Qty '
      '  '#9'  ,'#39'1331'#39' CWBH  '
      '  '#9'  ,KCRK.ZSBH  '
      '  '#9'  ,TONGTIEN_THUE AS TienNguyenTe  '
      '  '#9'  ,TONGTIEN_THUE AS TienNguyenTeChuaThue  '
      '  '#9'  ,'#39'1'#39' TyGia  '
      '  '#9'  ,TONGTIEN_THUE AS TienNoiTe   '
      '  '#9'  ,CT.LoaiCT  '
      '  '#9'  ,KCRK.ZSBH+'#39'-'#39'+ KCRK.DOCNO AS MaDonHang,KCRK.DOCDATE  '
      '  '#9'  ,'#39'VND'#39' TienTe  '
      '  '#9'  ,'#39#39'  GhichuDauDon     '
      '  '#9'  ,'#39'A-TX'#39' BoPhan  '
      '  from  KCRKS'
      '  left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      '  left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      '  left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      
        '  left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.C' +
        'KBH '
      '  left join KCCK on KCCK.CKBH=KCRK.CKBH '
      '  left join KCPK on KCPK.PKNO=KCRK.RKNO '
      
        '  left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLB' +
        'H AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB '
      '  left join CWFK ON CWFK.FKBH=CWYF.FKBH  '
      
        '  left join CGZL_VATNO on CGZL_VATNO.VATNO=KCRK.DOCNO and CGZL_V' +
        'ATNO.VATDate=KCRK.DOCDATE'
      '                          AND CGZL_VATNO.ZSBH_MST=zszl.tybh '
      '  LEFT JOIN #TempLoaiCT CT ON  CT.RKNO = KCRK.RKNO  '
      '  WHERE 1=1  '
      
        '  AND CONVERT(SMALLDATETIME,CONVERT(VARCHAR,KCRK.USERDate,111)) ' +
        'BETWEEN  '#39'2024/06/01'#39' and '#39'2024/06/30'#39'  '
      '  and ISNULL(KCPK.Declaretion,'#39#39')='#39#39
      '  AND ISNULL(KCRK.DOCNO,'#39#39')<>'#39#39'  '
      '  AND CWBH IN ('#39'152'#39','#39'153'#39')  '
      '  and CWBH ='#39'152'#39
      '  and KCCK.CKBH ='#39'VA12'#39
      '  and KCRKS.CLBH like '#39'%'#39
      '  and CLZL.YWPM like '#39'%'#39
      '  and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39'  '
      '  and KCRKS.CostID like '#39'%'#39
      '   and KCCK.GSBH='#39'VA12'#39
      
        '  GROUP BY  KCRK.ZSBH,CT.LoaiCT,KCRK.DOCNO,KCRK.DOCDATE,TONGTIEN' +
        '_THUE'
      '   UNION ALL  '
      '  Select  KCRK.CKBH , KCRK.RKNO, SUM(KCRKS.Qty) Qty  '
      '  '#9'  ,CASE WHEN CWBH='#39'152'#39' THEN '#39'1521'#39'    '
      '    '#9'         WHEN CWBH='#39'153'#39' THEN '#39'1531'#39' END CWBH  '
      '  '#9'  ,KCRK.ZSBH  '
      '  '#9'  ,SUM(KCRKS.USACC) AS TienNguyenTe  '
      '  '#9'  ,SUM(KCRKS.USACC) AS TienNguyenTeChuaThue  '
      '  '#9'  ,KCRKS.CWHL AS  TyGia  '
      '  '#9'  ,SUM(KCRKS.VNACC) AS TienNoiTe   '
      '  '#9'  ,CT.LoaiCT  '
      '  '#9'  ,KCPK.Declaretion,KCRK.DOCDATE  '
      '  '#9'  ,'#39'USD'#39' TienTe  '
      
        #9'  ,'#9'CASE WHEN  KCRK.CKBH='#39'VA12'#39' THEN KCPK.Declaretion  +  '#39'-Nha' +
        'p kho nguyen lieu vat lieu Kho VA12'#39'  '
      
        '  '#9#9#9'  WHEN KCRK.CKBH IN ('#39'VTXX'#39','#39'VTXY'#39','#39'VTXZ'#39') THEN KCPK.Declar' +
        'etion  +'#39'-Nhap cong cu dung cu Khu A'#39'  '
      
        '              WHEN KCRK.CKBH ='#39'VTXW'#39' THEN KCPK.Declaretion + '#39'-N' +
        'hap nguyen vat lieu HCA'#39'  '
      '  '#9#9'ELSE '#39#39'  '
      '  '#9#9'END  GhichuDauDon  '
      '  '#9'  ,'#39'A-TX'#39' BoPhan  '
      '  from  KCRKS'
      '  left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      '  left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      '  left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      
        '  left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.C' +
        'KBH '
      '  left join KCCK on KCCK.CKBH=KCRK.CKBH '
      '  left join KCPK on KCPK.PKNO=KCRK.RKNO '
      
        '  left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLB' +
        'H AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB '
      '  left join CWFK ON CWFK.FKBH=CWYF.FKBH  '
      
        '  left join CGZL_Declaration on CGZL_Declaration.DECLARATION = K' +
        'CPK.Declaretion AND NGAYTHONGQUAN=kcrk.DOCDATE  '
      '  LEFT JOIN #TempLoaiCT CT ON  CT.RKNO = KCRK.RKNO  '
      '  WHERE 1=1  '
      
        '  AND CONVERT(SMALLDATETIME,CONVERT(VARCHAR,KCRK.USERDate,111)) ' +
        'BETWEEN  '#39'2024/06/01'#39' and '#39'2024/06/30'#39'  '
      '  and ISNULL(KCPK.Declaretion,'#39#39')<>'#39#39
      '  AND ISNULL(KCRK.DOCNO,'#39#39')<>'#39#39'  '
      '  AND CWBH IN ('#39'152'#39','#39'153'#39')  '
      '  and CWBH ='#39'152'#39
      '  and KCCK.CKBH ='#39'VA12'#39
      '  and KCRKS.CLBH like '#39'%'#39
      '  and CLZL.YWPM like '#39'%'#39
      '  and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39'  '
      '  and KCRKS.CostID like '#39'%'#39
      '   and KCCK.GSBH='#39'VA12'#39
      
        '   GROUP BY  KCRK.CKBH ,KCRK.RKNO,KCZLS.CWBH,KCRK.ZSBH,KCRKS.CWH' +
        'L,CT.LoaiCT,KCPK.Declaretion,KCRK.DOCDATE'
      ''
      ''
      '  SELECT *'
      '  FROM  #TempTransfer'
      '  Where 1=2'
      '  ORDER BY MaDonHang,CWBH DESC'
      ''
      ''
      '')
    Left = 403
    Top = 368
    object qry_reportCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object qry_reportNgayCT: TDateTimeField
      FieldName = 'NgayCT'
    end
    object qry_reportNgayHD: TDateTimeField
      FieldName = 'NgayHD'
    end
    object qry_reportZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object qry_reportTienTe: TStringField
      FieldName = 'TienTe'
      FixedChar = True
      Size = 3
    end
    object qry_reportTyGia: TCurrencyField
      FieldName = 'TyGia'
    end
    object qry_reportMaThueSuat: TStringField
      FieldName = 'MaThueSuat'
      Size = 50
    end
    object qry_reportMaHD: TStringField
      FieldName = 'MaHD'
    end
    object qry_reportGhichuDauDon: TStringField
      FieldName = 'GhichuDauDon'
      FixedChar = True
      Size = 89
    end
    object qry_reportTienNguyenTe: TFloatField
      FieldName = 'TienNguyenTe'
      DisplayFormat = '##,#0.00'
    end
    object qry_reportTienNguyenTeChuaThue: TFloatField
      FieldName = 'TienNguyenTeChuaThue'
      DisplayFormat = '##,#0.00'
    end
    object qry_reportTienNoiTe: TCurrencyField
      FieldName = 'TienNoiTe'
      DisplayFormat = '##,#0.00'
    end
    object qry_reportCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 4
    end
    object qry_reportBoPhan: TStringField
      FieldName = 'BoPhan'
      FixedChar = True
    end
    object qry_reportRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object qry_reportMaDonHang: TStringField
      FieldName = 'MaDonHang'
      FixedChar = True
      Size = 50
    end
    object qry_reportLoaiCT: TStringField
      FieldName = 'LoaiCT'
      FixedChar = True
      Size = 4
    end
    object qry_reportQty: TCurrencyField
      FieldName = 'Qty'
    end
  end
  object DSReport: TDataSource
    DataSet = qry_report
    Left = 404
    Top = 400
  end
  object Qry_temp: TQuery
    DatabaseName = 'DB'
    Left = 443
    Top = 370
  end
end
