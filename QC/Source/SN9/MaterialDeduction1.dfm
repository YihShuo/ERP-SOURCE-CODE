object MaterialDeduction: TMaterialDeduction
  Left = 243
  Top = 131
  Width = 1305
  Height = 784
  Caption = 'MaterialDeduction'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 1289
    Height = 42
    Align = alTop
    TabOrder = 0
    object Label11: TLabel
      Left = 376
      Top = 13
      Width = 116
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Defect Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btninsert: TBitBtn
      Left = 0
      Top = 0
      Width = 50
      Height = 41
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btninsertClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnmodify: TBitBtn
      Left = 49
      Top = 0
      Width = 50
      Height = 41
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnmodifyClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btndelete: TBitBtn
      Left = 98
      Top = 0
      Width = 50
      Height = 41
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btndeleteClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnsave: TBitBtn
      Left = 147
      Top = 0
      Width = 50
      Height = 41
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnsaveClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btncancel: TBitBtn
      Left = 196
      Top = 0
      Width = 50
      Height = 41
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btncancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnexcel: TBitBtn
      Left = 245
      Top = 0
      Width = 50
      Height = 41
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object DBMemo1: TDBMemo
      Left = 496
      Top = 5
      Width = 215
      Height = 33
      DataField = 'DefectName'
      DataSource = DS_Qc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label15: TLabel
      Left = 169
      Top = 10
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 288
      Top = 6
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PO#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 269
      Top = 30
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 36
      Top = 30
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 432
      Top = 5
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Database'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 557
      Top = 10
      Width = 9
      Height = 13
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 288
      Top = 54
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 441
      Top = 30
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cust PO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 441
      Top = 54
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = 54
      Width = 118
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Lab Test Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 633
      Top = 5
      Width = 48
      Height = 16
      AutoSize = False
      Caption = 'RKNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 296
      Top = 75
      Width = 46
      Height = 16
      Caption = 'Defects'
    end
    object edt2: TEdit
      Left = 345
      Top = 26
      Width = 84
      Height = 24
      CharCase = ecUpperCase
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edt1: TEdit
      Left = 345
      Top = 2
      Width = 84
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 75
      Top = 2
      Width = 91
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 181
      Top = 2
      Width = 89
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button1: TButton
      Left = 803
      Top = 9
      Width = 59
      Height = 24
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object edt3: TEdit
      Left = 128
      Top = 26
      Width = 141
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object chk1: TCheckBox
      Left = 14
      Top = 7
      Width = 59
      Height = 14
      Caption = 'Date'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
    object edt6: TEdit
      Left = 506
      Top = 2
      Width = 50
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edt7: TEdit
      Left = 567
      Top = 2
      Width = 50
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edtRy: TEdit
      Left = 345
      Top = 50
      Width = 84
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edtCustPo: TEdit
      Left = 506
      Top = 26
      Width = 111
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object edtArticle: TEdit
      Left = 506
      Top = 50
      Width = 111
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object GroupBox1: TGroupBox
      Left = 644
      Top = 33
      Width = 302
      Height = 34
      TabOrder = 12
      object chkInspection: TCheckBox
        Left = 96
        Top = 13
        Width = 81
        Height = 15
        Caption = 'Inspection'
        Color = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object chkNotesting: TCheckBox
        Left = 7
        Top = 13
        Width = 90
        Height = 15
        Caption = 'No Testing'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object chkpass: TCheckBox
        Left = 184
        Top = 13
        Width = 50
        Height = 15
        Caption = 'Pass'
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object chkFail: TCheckBox
        Left = 243
        Top = 13
        Width = 52
        Height = 15
        Caption = 'Fail'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
    end
    object cboLab_Final: TComboBox
      Left = 128
      Top = 50
      Width = 141
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 13
      Items.Strings = (
        ''
        'Go to Production'
        'Return'
        'Waiting for Purchasing')
    end
    object edtRKNO: TEdit
      Left = 682
      Top = 2
      Width = 111
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object edtDefects: TEdit
      Left = 345
      Top = 72
      Width = 84
      Height = 24
      TabOrder = 15
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 147
    Width = 1289
    Height = 598
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'All'
      object Splitter3: TSplitter
        Left = 0
        Top = 345
        Width = 1281
        Height = 2
        Cursor = crVSplit
        Align = alTop
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridDetail: TDBGridEh
        Left = 0
        Top = 0
        Width = 1281
        Height = 345
        Align = alTop
        DataSource = DS_Qc
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 5
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_All
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ReportID'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'DateInput'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SupplierName'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'MatName'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Unit'
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'NGQty'
            Footers = <>
            Title.Caption = 'QC Inspection|NGQty'
          end
          item
            EditButtons = <>
            FieldName = 'Defects'
            Footers = <>
            Title.Caption = 'QC Inspection|Defects'
            Width = 100
            OnEditButtonClick = DBGridDetailColumns9EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'QC_FinishDate'
            Footers = <>
            Title.Caption = 'QC Inspection|FinishDate'
          end
          item
            EditButtons = <>
            FieldName = 'QC_Result'
            Footers = <>
            PickList.Strings = (
              'Pass'
              'Fail')
            Title.Caption = 'QC Inspection|Result'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'QC_UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'QC Inspection|UserID'
          end
          item
            EditButtons = <>
            FieldName = 'QC_Date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'QC Inspection|UserDate'
          end
          item
            EditButtons = <>
            FieldName = 'SendDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Lab_ID'
            Footers = <>
            Title.Caption = 'Lab Test|LabID'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Lab_Result'
            Footers = <>
            PickList.Strings = (
              'Pass'
              'Fail')
            Title.Caption = 'Lab Test|Result'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Lab_Reject'
            Footers = <>
            Title.Caption = 'Lab Test|Reject'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Lab_UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Lab Test|UserID'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Lab_Date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Lab Test|UserDate'
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'USERDate'
            Footers = <>
            Width = 100
          end>
      end
      object PageControl3: TPageControl
        Left = 0
        Top = 347
        Width = 1281
        Height = 220
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 1
        object TabSheet7: TTabSheet
          Caption = 'Actual'
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1273
            Height = 42
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object btninsert1: TBitBtn
              Left = 0
              Top = 0
              Width = 50
              Height = 41
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = btninsert1Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333FF33333333FF333993333333300033377F3333333777333993333333
                300033F77FFF3333377739999993333333333777777F3333333F399999933333
                33003777777333333377333993333333330033377F3333333377333993333333
                3333333773333333333F333333333333330033333333F33333773333333C3333
                330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                333333333337733333FF3333333C333330003333333733333777333333333333
                3000333333333333377733333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object btnmodify1: TBitBtn
              Left = 49
              Top = 0
              Width = 50
              Height = 41
              Hint = 'Modify Current'
              Caption = 'Modify'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btnmodify1Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                555557777F777555F55500000000555055557777777755F75555005500055055
                555577F5777F57555555005550055555555577FF577F5FF55555500550050055
                5555577FF77577FF555555005050110555555577F757777FF555555505099910
                555555FF75777777FF555005550999910555577F5F77777775F5500505509990
                3055577F75F77777575F55005055090B030555775755777575755555555550B0
                B03055555F555757575755550555550B0B335555755555757555555555555550
                BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
                50BB555555555555575F555555555555550B5555555555555575}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object btndelete1: TBitBtn
              Left = 98
              Top = 0
              Width = 50
              Height = 41
              Hint = 'Delete one Record'
              Caption = 'Delete'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = btndelete1Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object btnsave1: TBitBtn
              Left = 147
              Top = 0
              Width = 50
              Height = 41
              Hint = 'Save Current'
              Caption = 'Save'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = btnsave1Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                555555555555555555555555555555555555555555FF55555555555559055555
                55555555577FF5555555555599905555555555557777F5555555555599905555
                555555557777FF5555555559999905555555555777777F555555559999990555
                5555557777777FF5555557990599905555555777757777F55555790555599055
                55557775555777FF5555555555599905555555555557777F5555555555559905
                555555555555777FF5555555555559905555555555555777FF55555555555579
                05555555555555777FF5555555555557905555555555555777FF555555555555
                5990555555555555577755555555555555555555555555555555}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object btncancel1: TBitBtn
              Left = 196
              Top = 0
              Width = 50
              Height = 41
              Hint = 'Cancel'
              Caption = 'Cancel'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = btncancel1Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333333333333333333333333FFF33FF333FFF339993370733
                999333777FF37FF377733339993000399933333777F777F77733333399970799
                93333333777F7377733333333999399933333333377737773333333333990993
                3333333333737F73333333333331013333333333333777FF3333333333910193
                333333333337773FF3333333399000993333333337377737FF33333399900099
                93333333773777377FF333399930003999333337773777F777FF339993370733
                9993337773337333777333333333333333333333333333333333333333333333
                3333333333333333333333333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
          end
          object DBGrid_RY: TDBGridEh
            Left = 0
            Top = 42
            Width = 1273
            Height = 147
            Align = alClient
            DataSource = DS_RY
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'BUYNO'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'RY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'XieMing'
                Footers = <>
                ReadOnly = True
                Width = 200
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                ReadOnly = True
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'COUNTRY'
                Footers = <>
                ReadOnly = True
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                ReadOnly = True
              end>
          end
        end
      end
    end
  end
  object DS_Qc: TDataSource
    DataSet = qry_Qc
    Left = 168
    Top = 344
  end
  object Upd_QC: TUpdateSQL
    ModifySQL.Strings = (
      'update QC_MaterialDeduction'
      'set'
      '  ReportID = :ReportID,'
      '  DateInput = :DateInput,'
      '  CLBH = :CLBH,'
      '  ZSBH = :ZSBH,'
      '  Qty = :Qty,'
      '  NGQty = :NGQty,'
      '  Defects = :Defects,'
      '  DefectName = :DefectName,'
      '  QC_FinishDate = :QC_FinishDate,'
      '  QC_Result = :QC_Result,'
      '  QC_UserID = :QC_UserID,'
      '  QC_Date = :QC_Date,'
      '  SendDate = :SendDate,'
      '  Lab_ID = :Lab_ID,'
      '  Lab_Result = :Lab_Result,'
      '  Lab_Reject = :Lab_Reject,'
      '  Lab_UserID = :Lab_UserID,'
      '  Lab_Date = :Lab_Date,'
      '  YN = :YN'
      'where'
      '  ReportID = :OLD_ReportID')
    InsertSQL.Strings = (
      'insert into QC_MaterialDeduction'
      
        '  (ReportID, DateInput, CLBH, ZSBH, Qty, NGQty, Defects, DefectN' +
        'ame, QC_FinishDate, '
      
        '   QC_Result, QC_UserID, QC_Date, SendDate, Lab_ID, Lab_Result, ' +
        'Lab_Reject, '
      '   Lab_UserID, Lab_Date, USERID, YN)'
      'values'
      
        '  (:ReportID, :DateInput, :CLBH, :ZSBH, :Qty, :NGQty, :Defects, ' +
        ':DefectName, '
      
        '   :QC_FinishDate, :QC_Result, :QC_UserID, :QC_Date, :SendDate, ' +
        ':Lab_ID, '
      '   :Lab_Result, :Lab_Reject, :Lab_UserID, :Lab_Date, :USERID, 1)')
    DeleteSQL.Strings = (
      'delete from QC_MaterialDeduction'
      'where'
      '  ReportID = :OLD_ReportID')
    Left = 168
    Top = 392
  end
  object Pop_All: TPopupMenu
    AutoHotkeys = maManual
    Left = 568
    Top = 288
    object mnu2: TMenuItem
      Caption = 'Download Reprot/GL'
      Enabled = False
    end
    object mnu4: TMenuItem
      Caption = 'Download Lab GL'
      Enabled = False
    end
    object mnu5: TMenuItem
      Caption = 'Download PDM Report'
      Enabled = False
    end
    object OpenLabGL1: TMenuItem
      Caption = 'Open Lab GL'
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 628
    Top = 298
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.*'
    Left = 700
    Top = 298
  end
  object qry_Qc: TQuery
    AfterOpen = qry_QcAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select QC_MaterialDeduction.*, ywpm, zsywjc, dwbh from QC_Materi' +
        'alDeduction'
      'inner join clzl on clzl.cldh = QC_MaterialDeduction.CLBH'
      'inner join zszl on zszl.zsdh = QC_MaterialDeduction.ZSBH'
      'where 1=1')
    UpdateObject = Upd_QC
    Left = 168
    Top = 296
    object qry_QcReportID: TIntegerField
      FieldName = 'ReportID'
    end
    object qry_QcDateInput: TDateTimeField
      FieldName = 'DateInput'
    end
    object qry_QcCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object qry_QcZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object qry_QcQty: TCurrencyField
      FieldName = 'Qty'
    end
    object qry_QcNGQty: TCurrencyField
      FieldName = 'NGQty'
    end
    object qry_QcDefects: TStringField
      FieldName = 'Defects'
      FixedChar = True
      Size = 100
    end
    object qry_QcDefectName: TStringField
      FieldName = 'DefectName'
      FixedChar = True
      Size = 200
    end
    object qry_QcQC_FinishDate: TDateTimeField
      FieldName = 'QC_FinishDate'
    end
    object qry_QcQC_Result: TStringField
      FieldName = 'QC_Result'
      FixedChar = True
      Size = 50
    end
    object qry_QcQC_UserID: TStringField
      FieldName = 'QC_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_QcQC_Date: TDateTimeField
      FieldName = 'QC_Date'
    end
    object qry_QcSendDate: TDateTimeField
      FieldName = 'SendDate'
    end
    object qry_QcLab_ID: TStringField
      FieldName = 'Lab_ID'
      FixedChar = True
      Size = 50
    end
    object qry_QcLab_Result: TStringField
      FieldName = 'Lab_Result'
      FixedChar = True
      Size = 50
    end
    object qry_QcLab_Reject: TDateTimeField
      FieldName = 'Lab_Reject'
    end
    object qry_QcLab_UserID: TStringField
      FieldName = 'Lab_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_QcLab_Date: TDateTimeField
      FieldName = 'Lab_Date'
    end
    object qry_Qcywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object qry_Qczsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 40
    end
    object qry_Qcdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object qry_QcYN: TIntegerField
      FieldName = 'YN'
    end
    object qry_QcUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object qry_QcUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 219
    Top = 352
  end
  object qry_RY: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Qc
    SQL.Strings = (
      'SELECT QC_MaterialDeduction_RY.*,'
      '       lbzls.ywsm AS COUNTRY,'
      '       BUYNO, DDZL.ARTICLE, xxzl.XieMing'
      'FROM   QC_MaterialDeduction_RY'
      '       LEFT JOIN DDZL ON QC_MaterialDeduction_RY.RY = DDZL.DDBH'
      
        '       LEFT JOIN lbzls ON DDZL.DDGB = lbzls.lbdh AND lbzls.lb = ' +
        #39'13'#39
      
        '       LEFT JOIN xxzl on xxzl.SheHao = DDZL.SheHao and xxzl.XieX' +
        'ing = DDZL.XieXing'
      'WHERE  ReportID = :ReportID;')
    UpdateObject = Upd_RY
    Left = 284
    Top = 527
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ReportID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qry_RYReportID: TIntegerField
      FieldName = 'ReportID'
    end
    object qry_RYRY: TStringField
      FieldName = 'RY'
      FixedChar = True
      Size = 15
    end
    object qry_RYYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 10
    end
    object qry_RYUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object qry_RYUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object qry_RYCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      FixedChar = True
      Size = 50
    end
    object qry_RYBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object qry_RYARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object qry_RYXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
  end
  object DS_RY: TDataSource
    DataSet = qry_RY
    Left = 324
    Top = 535
  end
  object Upd_RY: TUpdateSQL
    ModifySQL.Strings = (
      'update QC_MaterialDeduction_RY'
      'set'
      '  ReportID = :ReportID,'
      '  RY = :RY,'
      '  YN = :YN,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'where'
      '  ReportID = :OLD_ReportID')
    InsertSQL.Strings = (
      'insert into QC_MaterialDeduction_RY'
      '  (ReportID, RY, YN, UserID, UserDate)'
      'values'
      '  (:ReportID, :RY, :YN, :UserID, :UserDate)')
    DeleteSQL.Strings = (
      'delete from QC_MaterialDeduction_RY'
      'where'
      '  ReportID = :OLD_ReportID'
      '  AND RY = :OLD_RY')
    Left = 364
    Top = 527
  end
  object QGetID: TQuery
    DatabaseName = 'DB'
    Left = 316
    Top = 302
  end
  object QSig: TQuery
    DatabaseName = 'DB'
    Left = 324
    Top = 350
  end
end
