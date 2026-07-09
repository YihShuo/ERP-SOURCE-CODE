object CostingCBD: TCostingCBD
  Left = 334
  Top = 171
  Width = 1453
  Height = 691
  Caption = 'Costing CBD'
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
  object Label2: TLabel
    Left = 0
    Top = 80
    Width = 90
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'FlexMTLCode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 200
    Top = 64
    Width = 42
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Color'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1437
    Height = 652
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Upload Excel'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1429
        Height = 89
        Align = alTop
        TabOrder = 0
        object Label22: TLabel
          Left = 200
          Top = 33
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 56
          Top = 32
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 200
          Top = 8
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 312
          Top = 8
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Round:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 336
          Top = 32
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PMRNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 496
          Top = 33
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'EffectBuy:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 56
          Top = 9
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TLabel
          Left = 368
          Top = 64
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MinWage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object imgshoe: TImage
          Left = 920
          Top = 0
          Width = 105
          Height = 81
          Stretch = True
        end
        object BB3: TBitBtn
          Left = 808
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BB3Click
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
        object BB2: TBitBtn
          Left = 760
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BB2Click
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
        object BB1: TButton
          Left = 16
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Import'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BB1Click
        end
        object BitBtn3: TBitBtn
          Left = 856
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn3Click
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
        object CheckBox1: TCheckBox
          Left = 1344
          Top = 25
          Width = 113
          Height = 17
          Caption = 'Upload&AutoDel'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 4
          Visible = False
        end
        object ComboBox1: TComboBox
          Left = 262
          Top = 28
          Width = 75
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object BitBtn8: TBitBtn
          Left = 712
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BitBtn8Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333FF3FF3333333333CC30003333333333773777333333333C33
            3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
            33003377333337F33377333333333C333300333F333337F33377339333333C33
            3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
            330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
            330077F377F337F33377993399333C33330077FF773337F33377399993333C33
            33333777733337F333FF333333333C33300033333333373FF7773333333333CC
            3000333333333377377733333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object Edit8: TEdit
          Left = 99
          Top = 24
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit9: TEdit
          Left = 261
          Top = 1
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Text = '25F'
        end
        object Edit10: TEdit
          Left = 355
          Top = 1
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Text = 'FNL'
        end
        object CheckBox6: TCheckBox
          Left = 1344
          Top = 1
          Width = 137
          Height = 17
          Caption = 'Save&FillUsage'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 10
          Visible = False
        end
        object BView1: TBitBtn
          Left = 16
          Top = 56
          Width = 75
          Height = 25
          Caption = 'ViewAll'
          TabOrder = 11
          OnClick = BView1Click
        end
        object BView2: TBitBtn
          Left = 104
          Top = 56
          Width = 75
          Height = 25
          Caption = 'ViewPrice'
          TabOrder = 12
          OnClick = BView2Click
        end
        object BView3: TBitBtn
          Left = 192
          Top = 56
          Width = 75
          Height = 25
          Caption = 'View2nd LO'
          TabOrder = 13
          OnClick = BView3Click
        end
        object ED_PMR: TEdit
          Left = 389
          Top = 24
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object ED_PMRBuy: TEdit
          Left = 563
          Top = 25
          Width = 118
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object BBPMRDay: TBitBtn
          Left = 472
          Top = 0
          Width = 57
          Height = 25
          Caption = 'PMREBuy'
          TabOrder = 16
        end
        object Edit11: TEdit
          Left = 99
          Top = 1
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object BBToday: TBitBtn
          Left = 528
          Top = 0
          Width = 33
          Height = 25
          Caption = 'Now'
          TabOrder = 18
          OnClick = BBTodayClick
        end
        object CheckBox9: TCheckBox
          Left = 568
          Top = 8
          Width = 57
          Height = 17
          Caption = 'Mine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object BBadmin_runall: TBitBtn
          Left = 1328
          Top = 0
          Width = 57
          Height = 49
          Hint = 'Save Current'
          Caption = 'SaveALL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          OnClick = BBadmin_runallClick
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
        object CheckBox13: TCheckBox
          Left = 768
          Top = 65
          Width = 121
          Height = 17
          Caption = 'OnlyShow2ndLO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
        end
        object Edit24: TEdit
          Left = 1467
          Top = 1
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
          Visible = False
        end
        object BitBtn12: TBitBtn
          Left = 280
          Top = 56
          Width = 75
          Height = 25
          Caption = 'ViewProjects'
          TabOrder = 23
          OnClick = BitBtn12Click
        end
        object Completed: TCheckBox
          Left = 616
          Top = 8
          Width = 89
          Height = 17
          Caption = 'Incomplete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 24
        end
        object complete: TBitBtn
          Left = 600
          Top = 56
          Width = 75
          Height = 25
          Caption = 'Complete'
          Enabled = False
          TabOrder = 25
          OnClick = completeClick
        end
        object ED_MinWage: TEdit
          Left = 435
          Top = 57
          Width = 62
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
        end
        object BBReady: TBitBtn
          Left = 520
          Top = 56
          Width = 75
          Height = 25
          Caption = 'Ready'
          Enabled = False
          TabOrder = 27
          OnClick = BBReadyClick
        end
        object chk_AutoCheckP: TCheckBox
          Left = 688
          Top = 65
          Width = 89
          Height = 17
          Caption = 'CheckP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 193
        Width = 1429
        Height = 431
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 10
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridEh6DblClick
        OnGetCellParams = DBGridEh6GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'No'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'MTL_No'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Color_No'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Process_No'
            Footers = <>
            Title.Caption = 'Process_NO'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'PartName'
            Footers = <>
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'Component'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Percentage'
            Footers = <>
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'Material'
            Footers = <>
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'MaterialComments'
            Footers = <>
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'FlexMaterialCode'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Supplier'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'SupplierCode'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Color'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ColorComments'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ColorGroup'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Measure'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'MeasureOVR'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Tooling'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'TnRP'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'BaseMaterialPrice'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TRPnGRPUpcharge'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'SupplierFreightValue'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'PriceStatus'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'MaterialCost'
            Footers = <>
            Width = 60
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PriceOVR'
            Footers = <>
            Width = 60
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'NetUsage'
            Footers = <>
            Width = 60
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'CutLoss'
            Footers = <>
            Width = 30
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SizeGrading'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'DeliveryTerm'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'T1Freight'
            Footers = <>
            Width = 40
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'LandedCost'
            Footers = <>
            Width = 40
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'GrossUsage'
            Footers = <>
            Width = 40
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'UnitCost'
            Footers = <>
            Width = 40
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'SecondLabor'
            Footers = <>
            Width = 50
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'SecondOverhead'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ColorQty'
            Footers = <>
            Width = 25
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'ColorQty_Neon'
            Footers = <>
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'GUMColor'
            Footers = <>
            Width = 25
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SecondLF'
            Footers = <>
            Width = 90
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SecondOF'
            Footers = <>
            Width = 80
          end
          item
            Color = clHighlightText
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'SecondLabor_auto'
            Footers = <>
            Width = 50
          end
          item
            Color = clHighlightText
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'SecondOverhead_auto'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'moldsPperson'
            Footers = <>
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'pairPmold'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'PCsPPair'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'TurnOverRate'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            Width = 55
          end
          item
            DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
          end
          item
            EditButtons = <>
            Footers = <>
          end>
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 89
        Width = 1429
        Height = 104
        Align = alTop
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 10
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <>
            ReadOnly = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CostingSeason'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'TargetSamplePrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FOB'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TotalMaterialCost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Labor'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Overhead'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'C2BL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'C2BO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SecondLabor'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SecondLabor_IP'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SecondOverhead'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SecondOverhead_IP'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OHRed_25H'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Profit'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProfitRate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MoldCharge'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OtherAdjustment'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FlexSeason'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryPriceSubmitStatus'
            Footers = <>
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'FactoryPriceStatus'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'FTYBOMCostDataStatus'
            Footers = <>
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'FTYBOMStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DevelopmentSeason'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DevelopmentCenter'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SampleSize'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CostingSize'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SizeRange'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'GenderClass'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Cut'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TechLevel'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Last'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Segment'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProductionType'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DistributionType'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Category'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PlanningLevel2'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProductLine'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DirectToDC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UpperMaterial'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryDeveloper'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryDevManager'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryCosting'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryCostingManager'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLOCosting'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLOCostingManager'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedColorwayStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedSourceFlag'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedCLOConfirmationDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedByFTYBOMCost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedFactoryConfirmation'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedDevelopment'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedDateFTYBOMCost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedFactoryPriceSubmit'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedFactoryPriceStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'InitialBuyMonth'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ForecastLevel'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Remark_'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RefModel'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProductDescription'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ModelDescription'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ColorwayLongName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SourceFlag'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'EffectBuy'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CostMitigation'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CFM_C2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CFM_R2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'C2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'R2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TTFreight'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CBDReadyDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CBDcompleteDate'
            Footers = <>
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'MTL cost'
      ImageIndex = 1
      object Label8: TLabel
        Left = 8
        Top = 24
        Width = 42
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SKU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 121
        Width = 1429
        Height = 503
        Align = alClient
        DataSource = DataSource3
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
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridEh2CellClick
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Flag'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MTL_No'
            Footers = <>
            ReadOnly = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'Color_No'
            Footers = <>
            ReadOnly = True
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'Component'
            Footers = <>
            ReadOnly = True
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'MaterialSeason'
            Footers = <
              item
                ValueType = fvtCount
              end>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'PriceStatus'
            Footers = <>
            ReadOnly = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'FlexMaterialCode'
            Footers = <>
            ReadOnly = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'Material'
            Footers = <>
            ReadOnly = True
            Width = 141
          end
          item
            EditButtons = <>
            FieldName = 'MaterialComments'
            Footers = <>
            ReadOnly = True
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'Supplier'
            Footers = <>
            ReadOnly = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'SupplierCode'
            Footers = <>
            ReadOnly = True
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'DeliveryTerm'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'T1Freight'
            Footers = <>
            ReadOnly = True
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'TnRP'
            Footers = <>
            ReadOnly = True
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'Tooling'
            Footers = <>
            ReadOnly = True
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'Measure'
            Footers = <>
            ReadOnly = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'MeasureOVR'
            Footers = <>
            ReadOnly = True
            Width = 17
          end
          item
            EditButtons = <>
            FieldName = 'Color'
            Footers = <>
            ReadOnly = True
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'ColorComments'
            Footers = <>
            ReadOnly = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ColorGroup'
            Footers = <>
            ReadOnly = True
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LandedCost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'GrossUsage'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PriceOVR'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'MaterialCost'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'BaseMaterialPrice'
            Footers = <>
            ReadOnly = True
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'SupplierFreightValue'
            Footers = <>
            ReadOnly = True
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'TRPnGRPUpcharge'
            Footers = <>
            ReadOnly = True
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <>
            ReadOnly = True
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'CostingSeason'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'ModelDescription'
            Footers = <>
            Width = 158
          end
          item
            EditButtons = <>
            FieldName = 'GenderClass'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProductionType'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            ReadOnly = True
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Process_No'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'Material_text'
            Footers = <>
            ReadOnly = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1429
        Height = 121
        Align = alTop
        TabOrder = 1
        object Label3: TLabel
          Left = 496
          Top = 8
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 272
          Top = 8
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'FlexMTLCode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 256
          Top = 40
          Width = 106
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SupplierN:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 480
          Top = 40
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ColorComment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 480
          Top = 73
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ColorGroup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 296
          Top = 73
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Material:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 112
          Top = 48
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MTL #'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 128
          Top = 80
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color #'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 112
          Top = 16
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Compenent:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 0
          Top = 80
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PriceStatus:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 504
          Top = 97
          Width = 76
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = -24
          Top = 48
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Round:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TLabel
          Left = 213
          Top = 48
          Width = 12
          Height = 16
          Alignment = taRightJustify
          Caption = 'or'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label53: TLabel
          Left = 229
          Top = 80
          Width = 12
          Height = 16
          Alignment = taRightJustify
          Caption = 'or'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BA8: TBitBtn
          Left = 840
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BA8Click
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
        object BA6: TBitBtn
          Left = 744
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BA6Click
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
        object BA1: TBitBtn
          Left = 696
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BA1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333FF3FF3333333333CC30003333333333773777333333333C33
            3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
            33003377333337F33377333333333C333300333F333337F33377339333333C33
            3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
            330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
            330077F377F337F33377993399333C33330077FF773337F33377399993333C33
            33333777733337F333FF333333333C33300033333333373FF7773333333333CC
            3000333333333377377733333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object ED1: TEdit
          Left = 571
          Top = 0
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ED2: TEdit
          Left = 61
          Top = 9
          Width = 52
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '25F'
        end
        object ED3: TEdit
          Left = 363
          Top = 0
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object CB3: TCheckBox
          Left = 936
          Top = 88
          Width = 113
          Height = 17
          Caption = 'MaterialComments'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object CB2: TCheckBox
          Left = 936
          Top = 72
          Width = 113
          Height = 17
          Caption = 'Supplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object CB1: TCheckBox
          Left = 936
          Top = 56
          Width = 129
          Height = 17
          Caption = 'FlexMaterialCode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object ED5: TEdit
          Left = 571
          Top = 32
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object ED6: TEdit
          Left = 571
          Top = 65
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object CB4: TCheckBox
          Left = 840
          Top = 56
          Width = 81
          Height = 17
          Caption = 'Tooling'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object CB6: TCheckBox
          Left = 936
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Color'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object CB7: TCheckBox
          Left = 936
          Top = 24
          Width = 113
          Height = 17
          Caption = 'ColorComments'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object CB5: TCheckBox
          Left = 840
          Top = 72
          Width = 81
          Height = 17
          Caption = 'TnRP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object CB8: TCheckBox
          Left = 936
          Top = 40
          Width = 113
          Height = 17
          Caption = 'ColorGroup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object ED4: TEdit
          Left = 363
          Top = 32
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object ED7: TEdit
          Left = 363
          Top = 65
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object ED8: TEdit
          Left = 155
          Top = 40
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object ED9: TEdit
          Left = 171
          Top = 72
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object CheckBox2: TCheckBox
          Left = 696
          Top = 56
          Width = 145
          Height = 17
          Caption = 'MTL cost issue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
        end
        object CheckBox5: TCheckBox
          Left = 696
          Top = 72
          Width = 145
          Height = 17
          Caption = 'Materail code issue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
        end
        object ED10: TEdit
          Left = 187
          Top = 8
          Width = 78
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
        end
        object ED11: TEdit
          Left = 75
          Top = 72
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
        end
        object ComboBox3: TComboBox
          Left = 582
          Top = 92
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 24
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object BA7: TBitBtn
          Left = 792
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          OnClick = BA7Click
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
        object CheckBox11: TCheckBox
          Left = 696
          Top = 88
          Width = 145
          Height = 17
          Caption = 'MTL cost>0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
        end
        object Edit23: TEdit
          Left = 51
          Top = 40
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
        end
        object CheckBox15: TCheckBox
          Left = 696
          Top = 104
          Width = 145
          Height = 17
          Caption = 'PriceOVR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
        end
        object ED8or: TEdit
          Left = 227
          Top = 41
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 29
        end
        object ED9or: TEdit
          Left = 243
          Top = 73
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 30
        end
        object CheckBox16: TCheckBox
          Left = 440
          Top = 96
          Width = 65
          Height = 17
          Caption = 'Using'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 31
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Process'
      ImageIndex = 2
      object pgc1: TPageControl
        Left = 0
        Top = 0
        Width = 1429
        Height = 624
        ActivePage = ts1
        Align = alClient
        TabOrder = 0
        object ts2: TTabSheet
          Caption = 'Total'
          ImageIndex = 1
          object pnl1: TPanel
            Left = 0
            Top = 0
            Width = 1421
            Height = 73
            Align = alTop
            TabOrder = 0
            object Label41: TLabel
              Left = 14
              Top = 17
              Width = 75
              Height = 16
              Alignment = taRightJustify
              Caption = 'Process_No'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 160
              Top = 17
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Factory:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Label81: TLabel
              Left = 48
              Top = 41
              Width = 41
              Height = 16
              Alignment = taRightJustify
              Caption = 'TypeA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit17: TEdit
              Left = 91
              Top = 9
              Width = 54
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object ComboBox5: TComboBox
              Left = 214
              Top = 12
              Width = 89
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 1
              Text = 'LYN-9Z'
              Items.Strings = (
                'LYN-9Z'
                'LYI-6L'
                ' ')
            end
            object btn2: TBitBtn
              Left = 320
              Top = 0
              Width = 49
              Height = 49
              Caption = 'Query'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = btn2Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                33003377333337F33377333333333C333300333F333337F33377339333333C33
                3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                3000333333333377377733333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object Edit36: TEdit
              Left = 91
              Top = 33
              Width = 54
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object chk2: TCheckBox
              Left = 256
              Top = 40
              Width = 57
              Height = 17
              Caption = 'Using'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 4
            end
          end
          object dbgrdh1: TDBGridEh
            Left = 0
            Top = 73
            Width = 1421
            Height = 523
            Align = alClient
            DataSource = ds1
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
        object ts1: TTabSheet
          Caption = '2nd LO'
          ImageIndex = 2
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1421
            Height = 73
            Align = alTop
            TabOrder = 0
            object Label6: TLabel
              Left = 323
              Top = 16
              Width = 47
              Height = 16
              Alignment = taRightJustify
              Caption = 'Season'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 7
              Top = 40
              Width = 27
              Height = 16
              Alignment = taRightJustify
              Caption = 'SKU'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 7
              Top = 16
              Width = 19
              Height = 16
              Alignment = taRightJustify
              Caption = 'SR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 432
              Top = 17
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Factory:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Label18: TLabel
              Left = 140
              Top = 16
              Width = 69
              Height = 16
              Alignment = taRightJustify
              Caption = 'Component'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 145
              Top = 40
              Width = 64
              Height = 16
              Alignment = taRightJustify
              Caption = '2ndLO_No'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 606
              Top = 56
              Width = 251
              Height = 16
              Alignment = taRightJustify
              Caption = '"USAGE"=GrossUsage; "COST"=UnitCost'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 436
              Top = 40
              Width = 46
              Height = 16
              Alignment = taRightJustify
              Caption = 'Tooling'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label50: TLabel
              Left = 269
              Top = 40
              Width = 12
              Height = 16
              Alignment = taRightJustify
              Caption = 'or'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object EDC2: TEdit
              Left = 40
              Top = 32
              Width = 96
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object EDC5: TEdit
              Left = 373
              Top = 9
              Width = 44
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object BC1: TBitBtn
              Left = 584
              Top = 0
              Width = 49
              Height = 49
              Caption = 'Query'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = BC1Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                33003377333337F33377333333333C333300333F333337F33377339333333C33
                3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                3000333333333377377733333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object EDC1: TEdit
              Left = 27
              Top = 9
              Width = 109
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox3: TCheckBox
              Left = 816
              Top = 0
              Width = 57
              Height = 17
              Caption = 'Mine'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object EDC3: TEdit
              Left = 211
              Top = 9
              Width = 109
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object BC2: TBitBtn
              Left = 632
              Top = 0
              Width = 49
              Height = 49
              Hint = 'Save Current'
              Caption = 'Save'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = BC2Click
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
            object EDC4: TEdit
              Left = 211
              Top = 33
              Width = 54
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object BitBtn1: TBitBtn
              Left = 728
              Top = 0
              Width = 49
              Height = 49
              Hint = 'Modify Current'
              Caption = 'Excel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = BA8Click
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
            object CheckBox4: TCheckBox
              Left = 816
              Top = 32
              Width = 81
              Height = 17
              Caption = 'UnUsing'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object CheckBox7: TCheckBox
              Left = 816
              Top = 16
              Width = 81
              Height = 17
              Caption = 'Using'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object ComboBox2: TComboBox
              Left = 486
              Top = 12
              Width = 89
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 11
              Text = 'LYN-9Z'
              Items.Strings = (
                'LYN-9Z'
                'LYI-6L'
                ' ')
            end
            object EDC6: TEdit
              Left = 485
              Top = 33
              Width = 84
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
            end
            object LO_BB_CANCEL: TBitBtn
              Left = 680
              Top = 0
              Width = 49
              Height = 49
              Hint = 'Cancel'
              Caption = 'Cancel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              OnClick = LO_BB_CANCELClick
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
            object EDC4or: TEdit
              Left = 283
              Top = 33
              Width = 54
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
            end
          end
          object DBGridEh3: TDBGridEh
            Left = 0
            Top = 73
            Width = 1421
            Height = 523
            Align = alClient
            DataSource = DataSource4
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnGetCellParams = DBGridEh3GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Component'
                Footers = <>
                ReadOnly = True
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'Process_No'
                Footers = <>
                ReadOnly = True
                Title.Caption = '2ndLO_No'
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'Tooling'
                Footers = <>
                ReadOnly = True
                Width = 65
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'MaterialComments'
                Footers = <>
                Width = 93
              end
              item
                EditButtons = <>
                FieldName = 'ColorQty'
                Footers = <>
                Width = 50
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'ColorQty_Neon'
                Footers = <>
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'GUMColor'
                Footers = <>
                Width = 50
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'moldsPperson'
                Footers = <>
                Width = 55
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'pairPmold'
                Footers = <>
                Width = 55
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'PCsPPair'
                Footers = <>
                Width = 55
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'TurnOverRate'
                Footers = <>
                Width = 74
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'SecondLF'
                Footers = <>
                Width = 139
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'SecondOF'
                Footers = <>
                Width = 144
              end
              item
                Color = cl3DLight
                DisplayFormat = '0.0000'
                EditButtons = <>
                FieldName = 'SecondLabor_auto'
                Footers = <>
                ReadOnly = True
              end
              item
                Color = cl3DLight
                DisplayFormat = '0.0000'
                EditButtons = <>
                FieldName = 'SecondOverhead_auto'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'SecondLabor'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'SecondOverhead'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'Round'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'SKU'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'CostingSeason'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'No'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'UserName'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'UserUpdateTime'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'GrossUsage'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'UnitCost'
                Footers = <>
              end>
          end
        end
        object ts3: TTabSheet
          Caption = 'Printing'
          ImageIndex = 2
          object pnl2: TPanel
            Left = 0
            Top = 0
            Width = 1421
            Height = 65
            Align = alTop
            TabOrder = 0
            object lbl1: TLabel
              Left = 1152
              Top = 17
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Factory:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object lbl2: TLabel
              Left = 127
              Top = 16
              Width = 19
              Height = 16
              Alignment = taRightJustify
              Caption = 'SR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl3: TLabel
              Left = 895
              Top = 16
              Width = 106
              Height = 16
              Alignment = taRightJustify
              Caption = 'Aluminium Frame '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl4: TLabel
              Left = 921
              Top = 40
              Width = 80
              Height = 16
              Alignment = taRightJustify
              Caption = 'Frame holder'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl5: TLabel
              Left = 715
              Top = 40
              Width = 94
              Height = 16
              Alignment = taRightJustify
              Caption = 'Screen meshes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl7: TLabel
              Left = 84
              Top = 40
              Width = 69
              Height = 16
              Alignment = taRightJustify
              Caption = 'Component'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl8: TLabel
              Left = 279
              Top = 16
              Width = 18
              Height = 16
              Alignment = taRightJustify
              Caption = 'No'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cbb1: TComboBox
              Left = 1206
              Top = 12
              Width = 89
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = 'LYN-9Z'
              Items.Strings = (
                'LYN-9Z'
                'LYI-6L'
                ' ')
            end
            object edt1: TEdit
              Left = 160
              Top = 9
              Width = 112
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object edt2: TEdit
              Left = 1003
              Top = 9
              Width = 78
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = '133740'
            end
            object edt3: TEdit
              Left = 1003
              Top = 33
              Width = 78
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = '12194'
            end
            object edt4: TEdit
              Left = 811
              Top = 33
              Width = 78
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = '92617'
            end
            object edt6: TEdit
              Left = 160
              Top = 33
              Width = 113
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object chk1: TCheckBox
              Left = 296
              Top = 40
              Width = 57
              Height = 17
              Caption = 'Using'
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
            object btn3: TBitBtn
              Left = 360
              Top = 8
              Width = 49
              Height = 49
              Caption = 'Query'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnClick = btn3Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                33003377333337F33377333333333C333300333F333337F33377339333333C33
                3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                3000333333333377377733333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object btn4: TBitBtn
              Left = 408
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Save Current'
              Caption = 'Save'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = btn4Click
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
            object btn5: TBitBtn
              Left = 456
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Modify Current'
              Caption = 'Excel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnClick = BA8Click
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
            object edt7: TEdit
              Left = 299
              Top = 9
              Width = 54
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object btn6: TButton
              Left = 16
              Top = 8
              Width = 49
              Height = 49
              Caption = 'Import'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              OnClick = btn6Click
            end
            object btn9: TBitBtn
              Left = 1088
              Top = 7
              Width = 49
              Height = 49
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnClick = btn9Click
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
            object btn7: TButton
              Left = 512
              Top = 8
              Width = 49
              Height = 49
              Caption = 'INK'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              OnClick = btn7Click
            end
          end
          object pnl3: TPanel
            Left = 0
            Top = 65
            Width = 1421
            Height = 136
            Align = alTop
            TabOrder = 1
            object Label45: TLabel
              Left = 89
              Top = 16
              Width = 48
              Height = 16
              Alignment = taRightJustify
              Caption = 'Part(A2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl10: TLabel
              Left = 51
              Top = 40
              Width = 86
              Height = 16
              Alignment = taRightJustify
              Caption = 'prs/ board(A8)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl11: TLabel
              Left = 353
              Top = 40
              Width = 96
              Height = 16
              Alignment = taRightJustify
              Caption = ' Frame fee(D11)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl111: TLabel
              Left = 679
              Top = 16
              Width = 66
              Height = 16
              Alignment = taRightJustify
              Caption = 'Labor(E18)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl1111: TLabel
              Left = 406
              Top = 16
              Width = 43
              Height = 16
              Alignment = taRightJustify
              Caption = 'SR(B2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl12: TLabel
              Left = 343
              Top = 64
              Width = 106
              Height = 16
              Alignment = taRightJustify
              Caption = 'prs per mold(E15)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl101: TLabel
              Left = 34
              Top = 88
              Width = 127
              Height = 16
              Alignment = taRightJustify
              Caption = 'TRF_PP_Name(A17)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl112: TLabel
              Left = 35
              Top = 112
              Width = 126
              Height = 16
              Alignment = taRightJustify
              Caption = 'REL_PP_Name(A18)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl1112: TLabel
              Left = 656
              Top = 64
              Width = 89
              Height = 16
              Alignment = taRightJustify
              Caption = 'CBD Cost(E20)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl13: TLabel
              Left = 21
              Top = 64
              Width = 116
              Height = 16
              Alignment = taRightJustify
              Caption = 'Printing Output(A17)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl1113: TLabel
              Left = 685
              Top = 40
              Width = 60
              Height = 16
              Alignment = taRightJustify
              Caption = 'Loss(E19)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label69: TLabel
              Left = 371
              Top = 88
              Width = 150
              Height = 16
              Alignment = taRightJustify
              Caption = 'Transfer Print Paper(E17)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label70: TLabel
              Left = 371
              Top = 112
              Width = 150
              Height = 16
              Alignment = taRightJustify
              Caption = 'Transfer Print Paper(E18)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label46: TLabel
              Left = 787
              Top = 88
              Width = 70
              Height = 16
              Alignment = taRightJustify
              Caption = 'Season(F1)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object EDEL1: TEdit
              Left = 139
              Top = 9
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = 'LOGO-QUARTER MEDIAL ('#38795#36523'?'#33136'LOGO)'
            end
            object EDEL2: TEdit
              Left = 139
              Top = 33
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '  2PIECES/ PAIR - 12PAIR/ BOARD'
            end
            object EDEL3: TEdit
              Left = 139
              Top = 57
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = 
                '5. PRINTING OUTPUT (4935PRS/ 5 PEOPLE/ 8HRS;1 PERSON/1DAY/987PRS' +
                ')'
            end
            object EDEL4: TEdit
              Left = 451
              Top = 9
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = 'S53969-CT002Y-25F01'
            end
            object EDEL5: TEdit
              Left = 451
              Top = 33
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = '=(3*133740/25025*(1+1+1))'
            end
            object EDEL6: TEdit
              Left = 451
              Top = 57
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Text = '=D14/3000'
            end
            object EDEL7: TEdit
              Left = 747
              Top = 9
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              Text = '=534/26/987'
            end
            object EDEL8: TEdit
              Left = 747
              Top = 33
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              Text = '=SUM(E15:E20)*1.03'
            end
            object EDEL9: TEdit
              Left = 747
              Top = 57
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              Text = '0.2'
            end
            object EDEL10: TEdit
              Left = 163
              Top = 81
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object EDEL11: TEdit
              Left = 163
              Top = 105
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object btn8: TBitBtn
              Left = 1032
              Top = 7
              Width = 49
              Height = 49
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              OnClick = btn8Click
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
            object Edit21: TEdit
              Left = 523
              Top = 81
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              Text = '=(127.38*0.35)/9/500'
            end
            object Edit22: TEdit
              Left = 523
              Top = 104
              Width = 200
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              Text = '=(66.35*0.35)/9/450'
            end
            object Edit20: TEdit
              Left = 859
              Top = 81
              Width = 86
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
              Text = 'SS26'
            end
          end
          object dbgrdh3: TDBGridEh
            Left = 0
            Top = 201
            Width = 1421
            Height = 395
            Align = alClient
            DataSource = ds3
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Process_No'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Factory'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Component'
                Footers = <>
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'SR'
                Footers = <>
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'ExRate'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'MinWage'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Segments'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'PiecePPair'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'PairPBoard'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Colors'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'PairsPMold'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'OutputPrs'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'OutputPpl'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Loss'
                Footers = <>
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'InkNGlue_No'
                Footers = <>
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'InkNGlueCost'
                Footers = <>
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'LaborCost'
                Footers = <>
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'MoldFee'
                Footers = <>
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'CostPPair'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'CBDCost'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TRF_PP_Name'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TRF_PP_Price'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TRF_PP_CM'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TRF_PP_PRS'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TRF_PP_M'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TRF_PP_Cost'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'REL_PP_Name'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'REL_PP_Price'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'REL_PP_CM'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'REL_PP_PRS'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'REL_PP_M'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'REL_PP_Cost'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'UserName'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'UserUpdateTime'
                Footers = <>
              end>
          end
        end
        object ts4: TTabSheet
          Caption = 'PrintingProtocol'
          ImageIndex = 3
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1421
            Height = 65
            Align = alTop
            TabOrder = 0
            object Label72: TLabel
              Left = 127
              Top = 16
              Width = 19
              Height = 16
              Alignment = taRightJustify
              Caption = 'SR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label78: TLabel
              Left = 84
              Top = 40
              Width = 69
              Height = 16
              Alignment = taRightJustify
              Caption = 'Component'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label79: TLabel
              Left = 279
              Top = 16
              Width = 18
              Height = 16
              Alignment = taRightJustify
              Caption = 'No'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl14: TLabel
              Left = 760
              Top = 17
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Factory:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object ComboBox6: TComboBox
              Left = 822
              Top = 12
              Width = 89
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = 'LYN-9Z'
              Items.Strings = (
                'LYN-9Z'
                'LYI-6L'
                ' ')
            end
            object Edit27: TEdit
              Left = 160
              Top = 9
              Width = 112
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Edit33: TEdit
              Left = 160
              Top = 33
              Width = 113
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox17: TCheckBox
              Left = 296
              Top = 40
              Width = 57
              Height = 17
              Caption = 'Using'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 3
            end
            object BitBtn2: TBitBtn
              Left = 360
              Top = 8
              Width = 49
              Height = 49
              Caption = 'Query'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = BitBtn2Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                33003377333337F33377333333333C333300333F333337F33377339333333C33
                3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                3000333333333377377733333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object BitBtn4: TBitBtn
              Left = 456
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Save Current'
              Caption = 'Save'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = BitBtn4Click
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
            object BitBtn6: TBitBtn
              Left = 504
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Modify Current'
              Caption = 'Excel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = BA8Click
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
            object Edit34: TEdit
              Left = 299
              Top = 9
              Width = 54
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object Button1: TButton
              Left = 16
              Top = 8
              Width = 49
              Height = 49
              Caption = 'Import'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = Button1Click
            end
            object BitBtn7: TBitBtn
              Left = 408
              Top = 7
              Width = 49
              Height = 49
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnClick = btn9Click
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
          end
          object dbgrdh4: TDBGridEh
            Left = 0
            Top = 65
            Width = 1421
            Height = 531
            Align = alClient
            DataSource = ds4
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Process_No'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Factory'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Component'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'SR'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Area'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'PCsPerScreen'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Colors'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'PCsPerPair'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Cost'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'UserName'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'UserUpdateTime'
                Footers = <>
              end>
          end
        end
        object ts5: TTabSheet
          Caption = 'IP'
          ImageIndex = 4
          object pnl31: TPanel
            Left = 0
            Top = 0
            Width = 1421
            Height = 89
            Align = alTop
            TabOrder = 0
            object lbl9: TLabel
              Left = 75
              Top = 24
              Width = 110
              Height = 16
              Alignment = taRightJustify
              Caption = 'CompoundsName'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl91: TLabel
              Left = 120
              Top = 48
              Width = 65
              Height = 16
              Alignment = taRightJustify
              Caption = 'ColorCode'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label48: TLabel
              Left = 359
              Top = 48
              Width = 18
              Height = 16
              Alignment = taRightJustify
              Caption = 'No'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label71: TLabel
              Left = 298
              Top = 24
              Width = 79
              Height = 16
              Alignment = taRightJustify
              Caption = 'ToolingCode'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object edt8: TEdit
              Left = 187
              Top = 17
              Width = 109
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object btn31: TBitBtn
              Left = 544
              Top = 16
              Width = 49
              Height = 49
              Caption = 'Query'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btn31Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                33003377333337F33377333333333C333300333F333337F33377339333333C33
                3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                3000333333333377377733333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object btn41: TBitBtn
              Left = 640
              Top = 16
              Width = 49
              Height = 49
              Hint = 'Save Current'
              Caption = 'Save'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = btn41Click
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
            object btn51: TBitBtn
              Left = 688
              Top = 16
              Width = 49
              Height = 49
              Hint = 'Modify Current'
              Caption = 'Excel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = btn51Click
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
            object edt81: TEdit
              Left = 187
              Top = 41
              Width = 109
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object BD2: TBitBtn
              Left = 592
              Top = 16
              Width = 49
              Height = 49
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = BD2Click
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
            object Button2: TButton
              Left = 16
              Top = 16
              Width = 49
              Height = 49
              Caption = 'Import'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = Button2Click
            end
            object cbb2: TComboBox
              Left = 742
              Top = 12
              Width = 89
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 7
              Text = 'LYN-9Z'
              Items.Strings = (
                'LYN-9Z'
                'LYI-6L'
                ' ')
            end
            object Edit19: TEdit
              Left = 379
              Top = 41
              Width = 54
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object CheckBox18: TCheckBox
              Left = 448
              Top = 48
              Width = 57
              Height = 17
              Caption = 'Using'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object Edit28: TEdit
              Left = 379
              Top = 17
              Width = 109
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
          end
          object dbgrdh2: TDBGridEh
            Left = 0
            Top = 89
            Width = 1421
            Height = 507
            Align = alClient
            DataSource = ds2
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Process_No'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'Factory'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'PriceSeason'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ToolingCode'
                Footers = <>
                Width = 102
              end
              item
                EditButtons = <>
                FieldName = 'CostingSize'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ModelName'
                Footers = <>
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'OverheadLevel'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'CompoundsName'
                Footers = <>
                Width = 105
              end
              item
                EditButtons = <>
                FieldName = 'ColorCode'
                Footers = <>
                Width = 113
              end
              item
                DisplayFormat = '0.000'
                EditButtons = <>
                FieldName = 'FinalComponentPrice'
                Footers = <>
                Title.Caption = 'FinalComponentPrice$/PR'
              end
              item
                Color = 4227072
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'ComponentMaterialPriceWDR'
                Footers = <>
                Title.Caption = 'ComponentMaterialPriceWDR$/PR'
              end
              item
                Color = clMenuHighlight
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'DirectLaborCost'
                Footers = <>
                Title.Caption = 'DirectLaborCost$/PR'
              end
              item
                Color = 4227327
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'OHCost'
                Footers = <>
                Title.Caption = 'OHCost$/PR'
              end
              item
                Color = 4227072
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'ApprovedModelDR'
                Footers = <>
                Title.Caption = 'ApprovedModelDR%'
              end
              item
                Color = 4227072
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'ComponentMaterialPrice'
                Footers = <>
                Title.Caption = 'ComponentMaterialPrice$/KG'
              end
              item
                Color = 4227072
                DisplayFormat = '0.0000'
                EditButtons = <>
                FieldName = 'Costingweight'
                Footers = <>
                Title.Caption = 'Costingweight/PR'
              end
              item
                Color = 4227072
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'FinalMaterialPrice'
                Footers = <>
                Title.Caption = 'FinalMaterialPrice$/KG'
              end
              item
                Color = 4227072
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'FormulaPrice'
                Footers = <>
                Title.Caption = 'FormulaPrice$/KG'
              end
              item
                Color = 4227072
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'FreightCost'
                Footers = <>
                Title.Caption = 'FreightCost$/KG'
              end
              item
                Color = 4227072
                EditButtons = <>
                FieldName = 'LaborCostPerLine'
                Footers = <>
              end
              item
                Color = 4227072
                EditButtons = <>
                FieldName = 'CompoundingFee'
                Footers = <>
              end
              item
                Color = 4227072
                EditButtons = <>
                FieldName = 'LaborCostPerLine_F'
                Footers = <>
              end
              item
                Color = 4227072
                EditButtons = <>
                FieldName = 'CompoundingFee_F'
                Footers = <>
                Title.Caption = 'CompoundingFee$/KG_F'
              end
              item
                Color = 12303104
                EditButtons = <>
                FieldName = 'C_WorkersPerLine'
                Footers = <>
              end
              item
                Color = 12303104
                EditButtons = <>
                FieldName = 'C_ShiftsPerDay'
                Footers = <>
              end
              item
                Color = 12303104
                EditButtons = <>
                FieldName = 'C_ToolingNumberSets'
                Footers = <>
              end
              item
                Color = 12303104
                EditButtons = <>
                FieldName = 'C_InjectionTime_sec'
                Footers = <>
              end
              item
                Color = 12303104
                EditButtons = <>
                FieldName = 'C_CuringTime_sec'
                Footers = <>
              end
              item
                Color = 12303104
                EditButtons = <>
                FieldName = 'C_MEOF_sec'
                Footers = <>
              end
              item
                Color = 12303104
                EditButtons = <>
                FieldName = 'C_MoldRelAirBlow_sec'
                Footers = <>
              end
              item
                Color = 12303104
                EditButtons = <>
                FieldName = 'C_InjectorMoveMoldOp_sec'
                Footers = <>
              end
              item
                Color = 12303104
                EditButtons = <>
                FieldName = 'C_TTCycletime_sec'
                Footers = <>
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'Shifts'
                Footers = <>
              end
              item
                Color = clMenuHighlight
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'WorkingHoursPerShift'
                Footers = <>
                Title.Caption = 'WorkingHoursPerShift/Day'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'ToolingNumberSets'
                Footers = <>
              end
              item
                Color = clMenuHighlight
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'Efficiency'
                Footers = <>
                Title.Caption = 'Efficiency%'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PPL'
                Footers = <>
                Title.Caption = 'PPL/Line'
              end
              item
                Color = clMenuHighlight
                DisplayFormat = '0'
                EditButtons = <>
                FieldName = 'PIM1_'
                Footers = <>
                Title.Caption = '1PIM_%'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PIM1_Cycletime_sec'
                Footers = <>
                Title.Caption = '1PIM_CT_sec'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PIM1_Output'
                Footers = <>
                Title.Caption = '1PIM_Output/Line/Day'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PIM1_TTLaborCost'
                Footers = <>
                Title.Caption = '1PIM_TTLaborCost$/Line/Day'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PIM1_LaborPerPR'
                Footers = <>
                Title.Caption = '1PIM_Labor$/PR'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PIM2_'
                Footers = <>
                Title.Caption = '2PIM_%'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PIM2_Cycletime_sec'
                Footers = <>
                Title.Caption = '2PIM_CT_sec'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PIM2_Output'
                Footers = <>
                Title.Caption = '2PIM_Output/Line/Day'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PIM2_TTLaborCost'
                Footers = <>
                Title.Caption = '2PIM_TTLaborCost$/Line/Day'
              end
              item
                Color = clMenuHighlight
                EditButtons = <>
                FieldName = 'PIM2_LaborPerPR'
                Footers = <>
                Title.Caption = '2PIM_Labor$/PR'
              end
              item
                Color = clMenuHighlight
                DisplayFormat = '0'
                EditButtons = <>
                FieldName = 'PIM_outputPlinePday'
                Footers = <>
                Title.Caption = 'PIM_Output/Line/Day'
                Width = 104
              end
              item
                Color = 4227327
                DisplayFormat = '0'
                EditButtons = <>
                FieldName = 'TotalOH'
                Footers = <>
                Title.Caption = 'TotalOH$/Day/Machine'
              end
              item
                EditButtons = <>
                FieldName = 'UserName'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'UserUpdateTime'
                Footers = <>
              end>
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'PriceList'
      ImageIndex = 4
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1429
        Height = 105
        Align = alTop
        TabOrder = 0
        object Label27: TLabel
          Left = 3
          Top = 64
          Width = 47
          Height = 16
          Alignment = taRightJustify
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 7
          Top = 40
          Width = 27
          Height = 16
          Alignment = taRightJustify
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 7
          Top = 8
          Width = 19
          Height = 16
          Alignment = taRightJustify
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 576
          Top = 40
          Width = 52
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label31: TLabel
          Left = 161
          Top = 8
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = 'TechLevel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 542
          Top = 16
          Width = 92
          Height = 16
          Alignment = taRightJustify
          Caption = 'Y/M(WithOrder)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 333
          Top = 16
          Width = 77
          Height = 16
          Alignment = taRightJustify
          Caption = 'Round/PMR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 161
          Top = 32
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = 'Prod.Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 40
          Top = 32
          Width = 96
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 53
          Top = 57
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object PLQuery: TBitBtn
          Left = 736
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = PLQueryClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333FF3FF3333333333CC30003333333333773777333333333C33
            3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
            33003377333337F33377333333333C333300333F333337F33377339333333C33
            3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
            330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
            330077F377F337F33377993399333C33330077FF773337F33377399993333C33
            33333777733337F333FF333333333C33300033333333373FF7773333333333CC
            3000333333333377377733333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object Edit3: TEdit
          Left = 40
          Top = 8
          Width = 96
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CheckBox8: TCheckBox
          Left = 664
          Top = 64
          Width = 57
          Height = 17
          Caption = 'Mine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object BitBtn5: TBitBtn
          Left = 832
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BA8Click
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
        object CB_PL_Factory: TComboBox
          Left = 630
          Top = 40
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 6
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object Edit13: TEdit
          Left = 232
          Top = 8
          Width = 88
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit6: TEdit
          Left = 637
          Top = 9
          Width = 76
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Edit4: TEdit
          Left = 101
          Top = 57
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object Edit5: TEdit
          Left = 416
          Top = 9
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Text = 'FNL'
        end
        object Edit7: TEdit
          Left = 232
          Top = 32
          Width = 88
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object CBGetOrderByPODate: TCheckBox
          Left = 432
          Top = 64
          Width = 225
          Height = 17
          Caption = 'GetOrderByPODate(after 2023)'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 12
        end
        object CB_FullSeason: TCheckBox
          Left = 16
          Top = 88
          Width = 97
          Height = 17
          Caption = 'Full Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object CheckBox12: TCheckBox
          Left = 432
          Top = 80
          Width = 225
          Height = 17
          Caption = 'CombineN385'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          Visible = False
        end
        object Edit25: TEdit
          Left = 149
          Top = 57
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object Edit26: TEdit
          Left = 197
          Top = 57
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object BitBtn9: TBitBtn
          Left = 784
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          OnClick = BitBtn9Click
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
        object btn1: TBitBtn
          Left = 735
          Top = 64
          Width = 162
          Height = 25
          Caption = 'Check order non-linking'
          TabOrder = 18
          OnClick = btn1Click
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 105
        Width = 1429
        Height = 519
        Align = alClient
        DataSource = DataSource5
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CostingSeason'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'EffectBuy'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UpperMaterial'
            Footers = <>
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'TargetSamplePrice'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'FOB'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'TotalMaterialCost'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Cost_House'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Cost_Others'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Labor'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Overhead'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'C2BL'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'C2BO'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'SecondLabor'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'SecondOverhead'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'CostMitigation'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'OHRed_25H'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Profit'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'ProfitRate'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'MoldCharge'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'C2BOwRed'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'SecondOwRed'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'C2B_PPH'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'R2B_PPH'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'CFM_C2B_PPH'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'CFM_R2B_PPH'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'PreviousSeasonBuy'
            Footers = <>
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'EndBuy'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'pairs'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Salary'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'GenderClass'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'cut'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TechLevel'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'last'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Segment'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ProductionType'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Category'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'PlanningLevel2'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ProductDescription'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ModelDescription'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ColorwayLongName'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'SourceFlag'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ProductLine'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DirectToDC'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'FactoryCosting'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'FactoryDeveloper'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CLOCosting'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'FTYBOMStatus'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'FactoryPriceSubmitStatus'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ForecastLevel'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'DistributionType'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'FactoryDevManager'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'FactoryCostingManager'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'CLOCostingManager'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'FTYBOMCostDataStatus'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'FactoryPriceStatus'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedFactoryPriceStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLOCOConfirmationDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedColorwayStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedSourceFlag'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedFTYBOMStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryConfirmationStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedCLODevelopment'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FTYBOMCostDataStatusDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryPriceSubmitStatusDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'InitialBuyMonth'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'InitialDevelopmentSeason'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DevelopmentCenter'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'SampleSize'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'CostingSize'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'SizeRange'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'CL98LaborPrecommit_25F'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TissueOIA_LK_25U'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ShoelaceLength_25U'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SealTapeOIA_LK_25U'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ckmesh_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MOC_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'InnerBox_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OrtholiteSockliner_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SeasonalColor_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CBYWeightedCosting_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RSHConstructionOptimizat_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemoveSocklinerCement_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RecyclingUn_Cured_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VolumeEfficiencyGainOverhead'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemovedNonBuffing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VolumeEfficiencyGain'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SupportFrictiontape'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'AutoBuffingSaving'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HanyoungNetCut'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MMAutoCutLectraSaving'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MMDeduction'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'StrobelPrintingRemoveal'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SpecialOffer'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SocklinerByPrs'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OutsoleAssembly'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FH17KeptLabor'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FY25_CostMitigation'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FY26_CostMitigation'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FamilyName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'type'
            Footers = <>
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'FTY code linking'
      ImageIndex = 5
      object DBGridEh7: TDBGridEh
        Left = 376
        Top = 137
        Width = 321
        Height = 208
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel7: TPanel
        Left = 0
        Top = 184
        Width = 865
        Height = 464
        Caption = 'Panel6'
        TabOrder = 1
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1429
        Height = 624
        ActivePage = TabSheet10
        Align = alClient
        TabOrder = 2
        object TabSheet10: TTabSheet
          Caption = 'TabSheet10'
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 1421
            Height = 105
            Align = alTop
            TabOrder = 0
            object Label38: TLabel
              Left = 8
              Top = 9
              Width = 42
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'SR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 8
              Top = 32
              Width = 42
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'SKU'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label40: TLabel
              Left = 168
              Top = 8
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'FlexMTLCode'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 152
              Top = 32
              Width = 106
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Round:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 24
              Top = 56
              Width = 50
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Season'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label49: TLabel
              Left = 384
              Top = 33
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Factory:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit12: TEdit
              Left = 51
              Top = 1
              Width = 102
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Edit16: TEdit
              Left = 51
              Top = 24
              Width = 102
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Edit18: TEdit
              Left = 259
              Top = 24
              Width = 109
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = 'FNL'
            end
            object Edit15: TEdit
              Left = 259
              Top = 0
              Width = 109
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object Edit14: TEdit
              Left = 77
              Top = 49
              Width = 52
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = '25F'
            end
            object ComboBox4: TComboBox
              Left = 462
              Top = 28
              Width = 89
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 5
              Text = 'LYN-9Z'
              Items.Strings = (
                'LYN-9Z'
                'LYI-6L'
                ' ')
            end
            object CheckBox10: TCheckBox
              Left = 576
              Top = 73
              Width = 137
              Height = 17
              Caption = 'CLBH is null'
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
            object CheckBox14: TCheckBox
              Left = 680
              Top = 72
              Width = 57
              Height = 17
              Caption = 'Mine'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 7
            end
            object BBlink2: TBitBtn
              Left = 647
              Top = 16
              Width = 57
              Height = 49
              Caption = 'Cancel'
              TabOrder = 8
              OnClick = BBlink2Click
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
            object BBlink3: TBitBtn
              Left = 704
              Top = 16
              Width = 56
              Height = 49
              Caption = 'Save'
              TabOrder = 9
              OnClick = BitBtn7Click
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
            object BitBtn17: TBitBtn
              Left = 759
              Top = 16
              Width = 57
              Height = 49
              Caption = 'EXCEL'
              TabOrder = 10
              OnClick = BA8Click
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
            object BBlink1: TBitBtn
              Left = 592
              Top = 16
              Width = 56
              Height = 49
              Caption = 'Query'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              OnClick = BBlink1Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                33003377333337F33377333333333C333300333F333337F33377339333333C33
                3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                3000333333333377377733333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
          end
          object DBGridEh5: TDBGridEh
            Left = 0
            Top = 105
            Width = 704
            Height = 491
            Align = alLeft
            DataSource = DataSource6
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
            FrozenCols = 3
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'SR'
                Footers = <
                  item
                    ValueType = fvtCount
                  end>
                Width = 116
              end
              item
                EditButtons = <>
                FieldName = 'SKU'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'CostingSeason'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Component'
                Footers = <>
                Width = 63
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'FlexMaterialCode'
                Footers = <>
                Width = 73
              end
              item
                EditButtons = <>
                FieldName = 'Color'
                Footers = <>
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'Material'
                Footers = <>
                Width = 127
              end
              item
                EditButtons = <>
                FieldName = 'Supplier'
                Footers = <>
                Title.Caption = 'Supplier_Flex'
                Width = 110
              end
              item
                EditButtons = <>
                FieldName = 'SupplierCode'
                Footers = <>
                Width = 62
              end
              item
                EditButtons = <>
                FieldName = 'CSBH'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'MaterialSeason'
                Footers = <>
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'Factory'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'MTL_No'
                Footers = <>
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Color_No'
                Footers = <>
                Width = 34
              end
              item
                EditButtons = <>
                FieldName = 'XieXing'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'SheHao'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'CostingSize'
                Footers = <>
              end>
          end
          object Panel8: TPanel
            Left = 704
            Top = 105
            Width = 56
            Height = 491
            Align = alLeft
            Caption = 'Panel6'
            TabOrder = 2
            object BitBtn10: TBitBtn
              Left = -1
              Top = 112
              Width = 57
              Height = 25
              Caption = '<<<'
              TabOrder = 0
              OnClick = BitBtn10Click
            end
            object BitBtn11: TBitBtn
              Left = -1
              Top = 296
              Width = 57
              Height = 25
              Caption = '<<<'
              TabOrder = 1
            end
          end
          object Panel6: TPanel
            Left = 760
            Top = 105
            Width = 661
            Height = 491
            Align = alClient
            Caption = 'Panel6'
            TabOrder = 3
            object Panel9: TPanel
              Left = 1
              Top = 1
              Width = 659
              Height = 240
              Align = alTop
              Caption = 'Panel6'
              TabOrder = 0
              object DBGridEh8: TDBGridEh
                Left = 1
                Top = 1
                Width = 657
                Height = 238
                Align = alClient
                DataSource = DataSource7
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                FooterRowCount = 1
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'CLBH'
                    Footers = <
                      item
                        ValueType = fvtCount
                      end>
                    Width = 84
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ywsm'
                    Footers = <>
                    Width = 108
                  end
                  item
                    EditButtons = <>
                    FieldName = 'YWPM'
                    Footers = <>
                    Width = 90
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CSBH'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ZSYWJC'
                    Footers = <>
                    Width = 78
                  end
                  item
                    EditButtons = <>
                    FieldName = 'BOMDATE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CCQQ'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CCQZ'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'YN'
                    Footers = <>
                  end>
              end
            end
            object DBG9: TDBGridEh
              Left = 1
              Top = 241
              Width = 659
              Height = 249
              Align = alClient
              DataSource = DataSource8
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'CBDLogs'
      ImageIndex = 7
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1429
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label55: TLabel
          Left = 152
          Top = 33
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label56: TLabel
          Left = 0
          Top = 32
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 152
          Top = 8
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 264
          Top = 8
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Round:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label59: TLabel
          Left = 0
          Top = 9
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 1224
          Top = 17
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label61: TLabel
          Left = 304
          Top = 32
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label62: TLabel
          Left = 424
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Owner:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BBCBDL3: TBitBtn
          Left = 672
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
        object BBCBDL2: TBitBtn
          Left = 624
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
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
        object BBCBDL4: TBitBtn
          Left = 720
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BBCBDL4Click
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
        object CB_CBDLF: TComboBox
          Left = 214
          Top = 28
          Width = 75
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object BBCBDL1: TBitBtn
          Left = 576
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BBCBDL1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333FF3FF3333333333CC30003333333333773777333333333C33
            3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
            33003377333337F33377333333333C333300333F333337F33377339333333C33
            3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
            330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
            330077F377F337F33377993399333C33330077FF773337F33377399993333C33
            33333777733337F333FF333333333C33300033333333373FF7773333333333CC
            3000333333333377377733333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object ED_CBDLSKU: TEdit
          Left = 51
          Top = 24
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ED_CBDLSS: TEdit
          Left = 213
          Top = 1
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = '25F'
        end
        object ED_CBDLRD: TEdit
          Left = 307
          Top = 1
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = 'FNL'
        end
        object ED_CBDLSR: TEdit
          Left = 51
          Top = 1
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object ED_CBDLNO: TEdit
          Left = 347
          Top = 25
          Width = 70
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object ED_CBDLON: TEdit
          Left = 483
          Top = 1
          Width = 86
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Text = '51267'
        end
      end
      object DBGLogs: TDBGridEh
        Left = 0
        Top = 368
        Width = 1429
        Height = 256
        Align = alClient
        DataSource = DS_CBDLog
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 10
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGLogsDblClick
        OnGetCellParams = DBGLogsGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CostingSeason'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Version'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'No'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Seq'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MTL_No'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Color_No'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Process_No'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MaterialCost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PriceOVR'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NetUsage'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CutLoss'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SizeGrading'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SecondLabor'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SecondOverhead'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
          end>
      end
      object DBGridEh13: TDBGridEh
        Left = 0
        Top = 49
        Width = 1429
        Height = 319
        Align = alTop
        DataSource = DS_PL
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 10
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGLogsDblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CostingSeason'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Version'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FOB'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TotalMaterialCost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Labor'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Overhead'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'C2BL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'C2BO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SecondLabor'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SecondOverhead'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OHRed_25H'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CostMitigation'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Profit'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProfitRate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MoldCharge'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UseRrady'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CBDReadyDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserComplete'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CBDcompleteDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LogCount'
            Footers = <>
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'CBD Comparing'
      ImageIndex = 8
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1429
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label63: TLabel
          Left = 152
          Top = 33
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label64: TLabel
          Left = 0
          Top = 32
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label65: TLabel
          Left = 152
          Top = 8
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label66: TLabel
          Left = 264
          Top = 8
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Round:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label67: TLabel
          Left = 0
          Top = 9
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label68: TLabel
          Left = 1224
          Top = 17
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BBCP3: TBitBtn
          Left = 536
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
        object BBCP2: TBitBtn
          Left = 488
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
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
        object BBCP4: TBitBtn
          Left = 584
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BBCP4Click
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
        object CBCP1: TComboBox
          Left = 214
          Top = 28
          Width = 75
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object BBCP1: TBitBtn
          Left = 440
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BBCP1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333FF3FF3333333333CC30003333333333773777333333333C33
            3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
            33003377333337F33377333333333C333300333F333337F33377339333333C33
            3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
            330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
            330077F377F337F33377993399333C33330077FF773337F33377399993333C33
            33333777733337F333FF333333333C33300033333333373FF7773333333333CC
            3000333333333377377733333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object EDCP2: TEdit
          Left = 51
          Top = 24
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object EDCP3: TEdit
          Left = 213
          Top = 1
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = '25F'
        end
        object EDCP4: TEdit
          Left = 307
          Top = 1
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = 'FNL'
        end
        object EDCP1: TEdit
          Left = 51
          Top = 1
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object BBCP5: TBitBtn
          Left = 655
          Top = 24
          Width = 57
          Height = 25
          Caption = 'Loading'
          TabOrder = 9
          OnClick = BBCP5Click
        end
        object BBComparing: TBitBtn
          Left = 727
          Top = 24
          Width = 57
          Height = 25
          Caption = 'Comparing'
          TabOrder = 10
          OnClick = BBComparingClick
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 49
        Width = 1429
        Height = 112
        Align = alTop
        TabOrder = 1
        object DBGridEh9: TDBGridEh
          Left = 1
          Top = 1
          Width = 1542
          Height = 110
          DataSource = DS_Qry_CBDComparing
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FrozenCols = 10
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGridEh9DblClick
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 161
        Width = 1429
        Height = 463
        Align = alClient
        TabOrder = 2
        object DBGridEh12: TDBGridEh
          Left = 841
          Top = 1
          Width = 617
          Height = 484
          Align = alLeft
          DataSource = DSCP3
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object DBGridEh11: TDBGridEh
          Left = 505
          Top = 1
          Width = 336
          Height = 484
          Align = alLeft
          DataSource = DSCP2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object DBGridEh10: TDBGridEh
          Left = 1
          Top = 1
          Width = 504
          Height = 484
          Align = alLeft
          DataSource = DSCP1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGridEh10DblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Item'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'project_A'
              Footers = <>
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'project_B'
              Footers = <>
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'Comparing'
              Footers = <>
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'PB_%'
              Footers = <>
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'PA_Budget$'
              Footers = <>
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'PA_OverBudget$'
              Footers = <>
              Width = 40
            end>
        end
      end
    end
  end
  object UploadlQuery: TQuery
    Active = True
    OnCalcFields = UploadlQueryCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From CostingPriceListNew'
      'Where 1=2'
      'and Round like '#39'FNL%'#39
      'and CostingSeason like '#39'25F%'#39
      'and CostingPriceListNew.Factory = '#39'LYN-9Z'#39)
    UpdateObject = UpdateSQL2
    Left = 56
    Top = 328
    object UploadlQueryRound: TStringField
      FieldName = 'Round'
      Origin = 'DB.CostingPriceListNew.Round'
      FixedChar = True
      Size = 25
    end
    object UploadlQuerySKU: TStringField
      FieldName = 'SKU'
      Size = 10
    end
    object UploadlQueryCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object UploadlQuerySR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object UploadlQueryFactoryPriceSubmitStatus: TStringField
      FieldName = 'FactoryPriceSubmitStatus'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryFactoryPriceStatus: TStringField
      FieldName = 'FactoryPriceStatus'
      Origin = 'DB.CostingPriceListNew.FactoryPriceStatus'
      FixedChar = True
    end
    object UploadlQueryFTYBOMCostDataStatus: TStringField
      FieldName = 'FTYBOMCostDataStatus'
      Origin = 'DB.CostingPriceListNew.FTYBOMCostDataStatus'
      FixedChar = True
    end
    object UploadlQueryFTYBOMStatus: TStringField
      FieldName = 'FTYBOMStatus'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryTargetSamplePrice: TStringField
      FieldName = 'TargetSamplePrice'
      Origin = 'DB.CostingPriceListNew.TargetSamplePrice'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryFOB: TStringField
      FieldName = 'FOB'
      Origin = 'DB.CostingPriceListNew.FOB'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryTotalMaterialCost: TStringField
      FieldName = 'TotalMaterialCost'
      Origin = 'DB.CostingPriceListNew.TotalMaterialCost'
      FixedChar = True
      Size = 9
    end
    object UploadlQueryLabor: TStringField
      FieldName = 'Labor'
      Origin = 'DB.CostingPriceListNew.Labor'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryOverhead: TStringField
      FieldName = 'Overhead'
      Origin = 'DB.CostingPriceListNew.Overhead'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryC2BL: TStringField
      FieldName = 'C2BL'
      Origin = 'DB.CostingPriceListNew.C2BL'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryC2BO: TStringField
      FieldName = 'C2BO'
      Origin = 'DB.CostingPriceListNew.C2BO'
      FixedChar = True
      Size = 6
    end
    object UploadlQuerySecondLabor: TStringField
      FieldName = 'SecondLabor'
      Origin = 'DB.CostingPriceListNew.SecondLabor'
      FixedChar = True
      Size = 9
    end
    object UploadlQuerySecondLabor_IP: TStringField
      FieldName = 'SecondLabor_IP'
      Origin = 'DB.CostingPriceListNew.SecondLabor_IP'
      FixedChar = True
      Size = 9
    end
    object UploadlQuerySecondOverhead: TStringField
      FieldName = 'SecondOverhead'
      Origin = 'DB.CostingPriceListNew.SecondOverhead'
      FixedChar = True
      Size = 9
    end
    object UploadlQuerySecondOverhead_IP: TStringField
      FieldName = 'SecondOverhead_IP'
      Origin = 'DB.CostingPriceListNew.CFM_C2B_PPH'
      FixedChar = True
      Size = 9
    end
    object UploadlQueryOHRed_25H: TStringField
      FieldName = 'OHRed_25H'
      Origin = 'DB.CostingPriceListNew.OHRed_25H'
      FixedChar = True
      Size = 9
    end
    object UploadlQueryProfit: TStringField
      FieldName = 'Profit'
      Origin = 'DB.CostingPriceListNew.Profit'
      FixedChar = True
      Size = 9
    end
    object UploadlQueryProfitRate: TFloatField
      FieldName = 'ProfitRate'
    end
    object UploadlQueryMoldCharge: TCurrencyField
      FieldName = 'MoldCharge'
      currency = False
    end
    object UploadlQueryOtherAdjustment: TCurrencyField
      FieldName = 'OtherAdjustment'
      currency = False
    end
    object UploadlQueryFlexSeason: TStringField
      FieldName = 'FlexSeason'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryDevelopmentSeason: TStringField
      FieldName = 'DevelopmentSeason'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryDevelopmentCenter: TStringField
      FieldName = 'DevelopmentCenter'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object UploadlQuerySampleSize: TFloatField
      FieldName = 'SampleSize'
    end
    object UploadlQueryCostingSize: TFloatField
      FieldName = 'CostingSize'
    end
    object UploadlQuerySizeRange: TStringField
      FieldName = 'SizeRange'
      Origin = 'DB.CostingPriceListNew.SizeRange'
      FixedChar = True
    end
    object UploadlQueryGenderClass: TStringField
      FieldName = 'GenderClass'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryCut: TStringField
      FieldName = 'Cut'
      FixedChar = True
      Size = 5
    end
    object UploadlQueryTechLevel: TStringField
      FieldName = 'TechLevel'
      FixedChar = True
      Size = 4
    end
    object UploadlQueryLast: TStringField
      FieldName = 'Last'
      FixedChar = True
      Size = 15
    end
    object UploadlQuerySegment2: TStringField
      FieldName = 'Segment'
      Origin = 'DB.CostingPriceListNew.Segment'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryProductionType: TStringField
      FieldName = 'ProductionType'
      FixedChar = True
      Size = 15
    end
    object UploadlQueryDistributionType: TStringField
      FieldName = 'DistributionType'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 15
    end
    object UploadlQueryPlanningLevel2: TStringField
      FieldName = 'PlanningLevel2'
      FixedChar = True
    end
    object UploadlQueryProductLine: TStringField
      FieldName = 'ProductLine'
      Origin = 'DB.CostingPriceListNew.ProductLine'
      FixedChar = True
      Size = 35
    end
    object UploadlQueryDirectToDC: TStringField
      FieldName = 'DirectToDC'
      FixedChar = True
      Size = 3
    end
    object UploadlQueryUpperMaterial2: TStringField
      FieldName = 'UpperMaterial'
      Origin = 'DB.CostingPriceListNew.UpperMaterial'
      FixedChar = True
      Size = 70
    end
    object UploadlQueryFactoryDeveloper: TStringField
      FieldName = 'FactoryDeveloper'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryFactoryDevManager: TStringField
      FieldName = 'FactoryDevManager'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryFactoryCosting: TStringField
      FieldName = 'FactoryCosting'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryFactoryCostingManager: TStringField
      FieldName = 'FactoryCostingManager'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryCLOCosting: TStringField
      FieldName = 'CLOCosting'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryCLOCostingManager: TStringField
      FieldName = 'CLOCostingManager'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryLastUpdatedColorwayStatus: TDateTimeField
      FieldName = 'LastUpdatedColorwayStatus'
    end
    object UploadlQueryLastUpdatedSourceFlag: TDateTimeField
      FieldName = 'LastUpdatedSourceFlag'
    end
    object UploadlQueryLastUpdatedCLOConfirmationDate: TDateTimeField
      FieldName = 'LastUpdatedCLOConfirmationDate'
    end
    object UploadlQueryLastUpdatedByFTYBOMCost: TStringField
      FieldName = 'LastUpdatedByFTYBOMCost'
      FixedChar = True
    end
    object UploadlQueryLastUpdatedFactoryConfirmation: TDateTimeField
      FieldName = 'LastUpdatedFactoryConfirmation'
    end
    object UploadlQueryLastUpdatedDevelopment: TDateTimeField
      FieldName = 'LastUpdatedDevelopment'
    end
    object UploadlQueryLastUpdatedDateFTYBOMCost: TDateTimeField
      FieldName = 'LastUpdatedDateFTYBOMCost'
    end
    object UploadlQueryLastUpdatedFactoryPriceSubmit: TDateTimeField
      FieldName = 'LastUpdatedFactoryPriceSubmit'
    end
    object UploadlQueryLastUpdatedFactoryPriceStatus: TDateTimeField
      FieldName = 'LastUpdatedFactoryPriceStatus'
    end
    object UploadlQueryInitialBuyMonth: TStringField
      FieldName = 'InitialBuyMonth'
      FixedChar = True
      Size = 15
    end
    object UploadlQueryForecastLevel: TStringField
      FieldName = 'ForecastLevel'
      Origin = 'DB.CostingPriceListNew.ForecastLevel'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryRemark2: TMemoField
      FieldName = 'Remark'
      Origin = 'DB.CostingPriceListNew.Remark'
      BlobType = ftMemo
    end
    object UploadlQueryMaterial: TStringField
      DisplayLabel = 'Remark'
      FieldKind = fkCalculated
      FieldName = 'Remark_'
      Size = 510
      Calculated = True
    end
    object UploadlQueryRefModel: TStringField
      FieldName = 'RefModel'
      Origin = 'DB.CostingPriceListNew.RefModel'
      FixedChar = True
      Size = 30
    end
    object UploadlQueryProductDescription2: TStringField
      FieldName = 'ProductDescription'
      Origin = 'DB.CostingPriceListNew.ProductDescription'
      FixedChar = True
      Size = 40
    end
    object UploadlQueryModelDescription2: TStringField
      FieldName = 'ModelDescription'
      Origin = 'DB.CostingPriceListNew.ModelDescription'
      FixedChar = True
      Size = 40
    end
    object UploadlQueryColorwayLongName: TStringField
      FieldName = 'ColorwayLongName'
      Origin = 'DB.CostingPriceListNew.ColorwayLongName'
      FixedChar = True
      Size = 50
    end
    object UploadlQuerySourceFlag: TStringField
      FieldName = 'SourceFlag'
      Origin = 'DB.CostingPriceListNew.SourceFlag'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
    end
    object UploadlQueryUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryEffectBuy: TStringField
      FieldName = 'EffectBuy'
      Origin = 'DB.CostingPriceListNew.EffectBuy'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryCostMitigation: TStringField
      FieldName = 'CostMitigation'
      Origin = 'DB.CostingPriceListNew.CostMitigation'
      FixedChar = True
      Size = 7
    end
    object UploadlQueryCFM_C2B_PPH: TStringField
      FieldName = 'CFM_C2B_PPH'
      Origin = 'DB.CostingPriceListNew.CFM_C2B_PPH'
      FixedChar = True
      Size = 8
    end
    object UploadlQueryCFM_R2B_PPH: TStringField
      FieldName = 'CFM_R2B_PPH'
      Origin = 'DB.CostingPriceListNew.CFM_R2B_PPH'
      FixedChar = True
      Size = 8
    end
    object UploadlQueryC2B_PPH: TStringField
      FieldName = 'C2B_PPH'
      Origin = 'DB.CostingPriceListNew.C2B_PPH'
      FixedChar = True
      Size = 8
    end
    object UploadlQueryR2B_PPH: TStringField
      FieldName = 'R2B_PPH'
      Origin = 'DB.CostingPriceListNew.R2B_PPH'
      FixedChar = True
      Size = 8
    end
    object UploadlQueryTTFreight: TCurrencyField
      FieldName = 'TTFreight'
      Origin = 'DB.CostingPriceListNew.TTFreight'
      currency = False
    end
    object UploadlQueryCBDReadyDate: TDateTimeField
      FieldName = 'CBDReadyDate'
      Origin = 'DB.CostingPriceListNew.CBDReadyDate'
    end
    object UploadlQueryCBDcompleteDate: TDateTimeField
      FieldName = 'CBDcompleteDate'
      Origin = 'DB.CostingPriceListNew.CBDcompleteDate'
    end
    object UploadlQueryUseRrady: TStringField
      FieldName = 'UseRrady'
      Origin = 'DB.CostingPriceListNew.UseRrady'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryUserComplete: TStringField
      FieldName = 'UserComplete'
      Origin = 'DB.CostingPriceListNew.UserComplete'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = UploadlQuery
    OnDataChange = DataSource1DataChange
    Left = 60
    Top = 376
  end
  object opendialog: TOpenDialog
    Left = 88
    Top = 536
  end
  object ExistCheck: TQuery
    DatabaseName = 'DB'
    Left = 36
    Top = 480
  end
  object DataSource2: TDataSource
    DataSet = UploadDetailQuery
    Left = 108
    Top = 376
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingXXZLS'
      'set'
      '  Round = :Round,'
      '  SKU = :SKU,'
      '  CostingSeason = :CostingSeason,'
      '  Factory = :Factory,'
      '  No = :No,'
      '  PartName = :PartName,'
      '  Component = :Component,'
      '  Percentage = :Percentage,'
      '  MTL_No = :MTL_No,'
      '  Color_No = :Color_No,'
      '  Process_No = :Process_No,'
      '  LandedCost = :LandedCost,'
      '  NetUsage = :NetUsage,'
      '  CutLoss = :CutLoss,'
      '  SizeGrading = :SizeGrading,'
      '  GrossUsage = :GrossUsage,'
      '  UnitCost = :UnitCost,'
      '  Remark = :Remark,'
      '  SecondLabor = :SecondLabor,'
      '  SecondOverhead = :SecondOverhead,'
      '  UserName = :UserName,'
      '  UserUpdateTime = GETDATE()'
      'where'
      '  Round = :Round and'
      '  SKU = :SKU and'
      '  CostingSeason = :CostingSeason and'
      '  Factory = :Factory and'
      '  No = :No')
    InsertSQL.Strings = (
      'insert into CostingXXZLS'
      
        '  (Round, SKU, CostingSeason, Factory, No, PartName, Component, ' +
        'Percentage, '
      
        '   MTL_No, Color_No, Process_No, LandedCost, NetUsage, CutLoss, ' +
        'SizeGrading, '
      
        '   GrossUsage, UnitCost, Remark, SecondLabor, SecondOverhead, Us' +
        'erName, '
      '   UserUpdateTime)'
      'values'
      
        '  (:Round, :SKU, :CostingSeason, :Factory, :No, :PartName, :Comp' +
        'onent, '
      
        '   :Percentage, :MTL_No, :Color_No, :Process_No, :LandedCost, :N' +
        'etUsage, '
      
        '   :CutLoss, :SizeGrading, :GrossUsage, :UnitCost, :Remark, :Sec' +
        'ondLabor, '
      '   :SecondOverhead, :UserName,GETDATE()')
    DeleteSQL.Strings = (
      'delete from CostingXXZLS'
      'where'
      '  Round = :OLD_Round and'
      '  SKU = :OLD_SKU and'
      '  CostingSeason = :OLD_CostingSeason and'
      '  Factory = :OLD_Factory and'
      '  No = :OLD_No')
    Left = 104
    Top = 416
  end
  object QueryMTL: TQuery
    OnCalcFields = QueryMTLCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select CONVERT(Bit,IsNull(CostingPriceLibrary.YN,0)) as Flag,Cos' +
        'tingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Component,Co' +
        'stingPriceLibrary.MaterialSeason,CostingPriceLibrary.PriceStatus' +
        ','
      
        '   CostingMatLibrary.FlexMaterialCode,CML_Material.Material,Cost' +
        'ingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,Costi' +
        'ngMatLibrary.SupplierCode,'
      '   CostingMatLibrary.DeliveryTerm,CostingMatLibrary.T1Freight,'
      
        '   CostingPriceLibrary.TnRP, CostingMatLibrary.Tooling,CostingMa' +
        'tLibrary.Measure, CostingMatLibrary.MeasureOVR,'
      
        '   CostingPriceLibrary.Color,CostingPriceLibrary.ColorComments,C' +
        'ostingPriceLibrary.ColorGroup,'
      
        '   CostingPriceLibrary.PriceOVR,CostingPriceLibrary.MaterialCost' +
        ','
      
        '   CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.Sup' +
        'plierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,'
      '   CostingXXZLS.LandedCost,CostingXXZLS.GrossUsage,'
      
        '   CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeaso' +
        'n,'
      
        '   CostingPriceListNew.ModelDescription,CostingPriceListNew.Gend' +
        'erClass,CostingPriceListNew.ProductionType,'
      '   CostingXXZLS.Remark,'
      
        '   CostingXXZLS.Process_No,CostingMatLibrary.Material_Text,Costi' +
        'ngPriceLibrary.UserName,CostingPriceLibrary.UserUpdateTime'
      'From CostingXXZLS'
      
        'left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingX' +
        'XZLS.MTL_No'
      
        'left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=Cost' +
        'ingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Co' +
        'lor_No '
      
        'left join CostingProcessCost on CostingProcessCost.Process_No=Co' +
        'stingXXZLS.Process_No'
      
        'left join CostingPriceListNew on CostingPriceListNew.Round=Costi' +
        'ngXXZLS.Round '
      '       and CostingPriceListNew.SKU=CostingXXZLS.SKU '
      
        '       and CostingPriceListNew.CostingSeason=CostingXXZLS.Costin' +
        'gSeason '
      
        'left join (select MTL_No,CAST(Material_Text AS VARCHAR(255)) AS ' +
        'Material from CostingMatLibrary) CML_Material on CML_Material.MT' +
        'L_No=CostingMatLibrary.MTL_No'
      'where 1=2'
      'and CostingPriceLibrary.CostingSeason like '#39'25F%'#39
      'and CostingPriceLibrary.YN=0'
      'and CostingPriceLibrary.MTL_No in '
      '(select CostingPriceLibrary.MTL_No from CostingPriceLibrary'
      
        'left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingP' +
        'riceLibrary.MTL_No'
      
        'where CostingPriceLibrary.Color_No in (select color_no from Cost' +
        'ingXXZLS)--'#34987#20351#29992#20013
      
        'group by CostingPriceLibrary.MTL_No,CostingPriceLibrary.color,Co' +
        'stingPriceLibrary.colorgroup'
      'having count(*)>1'#9')')
    UpdateObject = UpdateSQL3
    Left = 160
    Top = 328
    object QueryMTLComponent: TStringField
      FieldName = 'Component'
      FixedChar = True
      Size = 40
    end
    object QueryMTLMaterialSeason: TStringField
      FieldName = 'MaterialSeason'
      FixedChar = True
      Size = 4
    end
    object QueryMTLPriceStatus: TStringField
      FieldName = 'PriceStatus'
      FixedChar = True
      Size = 10
    end
    object QueryMTLFlexMaterialCode: TStringField
      FieldName = 'FlexMaterialCode'
      FixedChar = True
      Size = 15
    end
    object QueryMTLMaterialComments: TStringField
      FieldKind = fkCalculated
      FieldName = 'Material'
      FixedChar = True
      Size = 550
      Calculated = True
    end
    object QueryMTLMaterialComments2: TStringField
      FieldName = 'MaterialComments'
      FixedChar = True
      Size = 150
    end
    object QueryMTLSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 50
    end
    object QueryMTLSupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
    end
    object QueryMTLDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      FixedChar = True
      Size = 10
    end
    object QueryMTLT1Freight: TFloatField
      FieldName = 'T1Freight'
    end
    object QueryMTLTnRP: TStringField
      FieldName = 'TnRP'
      FixedChar = True
      Size = 25
    end
    object QueryMTLTooling: TStringField
      FieldName = 'Tooling'
      FixedChar = True
      Size = 25
    end
    object QueryMTLMeasure: TStringField
      FieldName = 'Measure'
      FixedChar = True
      Size = 15
    end
    object QueryMTLMeasureOVR: TStringField
      FieldName = 'MeasureOVR'
      FixedChar = True
      Size = 15
    end
    object QueryMTLColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 40
    end
    object QueryMTLColorComments: TStringField
      FieldName = 'ColorComments'
      FixedChar = True
      Size = 100
    end
    object QueryMTLColorGroup: TStringField
      FieldName = 'ColorGroup'
      FixedChar = True
    end
    object QueryMTLPriceOVR: TStringField
      FieldName = 'PriceOVR'
      FixedChar = True
      Size = 8
    end
    object QueryMTLMaterialCost: TStringField
      FieldName = 'MaterialCost'
      FixedChar = True
      Size = 9
    end
    object QueryMTLBaseMaterialPrice: TStringField
      FieldName = 'BaseMaterialPrice'
      FixedChar = True
      Size = 9
    end
    object QueryMTLSupplierFreightValue: TFloatField
      FieldName = 'SupplierFreightValue'
    end
    object QueryMTLTRPnGRPUpcharge: TFloatField
      FieldName = 'TRPnGRPUpcharge'
    end
    object QueryMTLRound: TStringField
      FieldName = 'Round'
      FixedChar = True
      Size = 25
    end
    object QueryMTLSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object QueryMTLCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object QueryMTLRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 100
    end
    object QueryMTLUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object QueryMTLUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
    end
    object QueryMTLMTL_No: TIntegerField
      FieldName = 'MTL_No'
    end
    object QueryMTLColor_No: TIntegerField
      FieldName = 'Color_No'
    end
    object QueryMTLProcess_No: TIntegerField
      FieldName = 'Process_No'
    end
    object QueryMTLMaterial_text: TMemoField
      FieldName = 'Material_text'
      BlobType = ftMemo
    end
    object QueryMTLFlag: TBooleanField
      FieldName = 'Flag'
    end
    object QueryMTLLandedCost: TStringField
      FieldName = 'LandedCost'
      FixedChar = True
      Size = 9
    end
    object QueryMTLGrossUsage: TStringField
      FieldName = 'GrossUsage'
      FixedChar = True
      Size = 9
    end
    object QueryMTLModelDescription: TStringField
      FieldName = 'ModelDescription'
      FixedChar = True
      Size = 40
    end
    object QueryMTLGenderClass: TStringField
      FieldName = 'GenderClass'
      FixedChar = True
      Size = 10
    end
    object QueryMTLProductionType: TStringField
      FieldName = 'ProductionType'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource3: TDataSource
    DataSet = QueryMTL
    Left = 156
    Top = 376
  end
  object UpdateSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingPriceLibrary'
      'set'
      '  YN= :Flag,'
      '  UserName = :UserName,'
      '  UserUpdateTime = :UserUpdateTime'
      'where'
      '  MTL_No = :OLD_MTL_No and'
      '  Color_No = :OLD_Color_No')
    DeleteSQL.Strings = (
      'delete from CostingPriceLibrary'
      'where'
      '  MTL_No = :OLD_MTL_No and'
      '  Color_No = :OLD_Color_No')
    Left = 160
    Top = 424
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingPriceListNew'
      'set'
      '  Round = :Round,'
      '  CostingSeason = :CostingSeason,'
      '  Factory = :Factory,'
      '  SKU = :SKU,'
      '  SR = :SR,'
      '  FactoryPriceSubmitStatus = :FactoryPriceSubmitStatus,'
      '  FactoryPriceStatus = :FactoryPriceStatus,'
      '  FTYBOMCostDataStatus = :FTYBOMCostDataStatus,'
      '  FTYBOMStatus = :FTYBOMStatus,'
      '  TargetSamplePrice = :TargetSamplePrice,'
      '  FOB = :FOB,'
      '  TotalMaterialCost = :TotalMaterialCost,'
      '  Labor = :Labor,'
      '  Overhead = :Overhead,'
      '  C2BL = :C2BL,'
      '  C2BO = :C2BO,'
      '  SecondLabor = :SecondLabor,'
      '  SecondOverhead = :SecondOverhead,'
      '  CFM_C2B_PPH = :CFM_C2B_PPH,'
      '  CostMitigation = :CostMitigation,'
      '  OHRed_25H = :OHRed_25H,'
      '  Profit = :Profit,'
      '  ProfitRate = :ProfitRate,'
      '  MoldCharge = :MoldCharge,'
      '  OtherAdjustment = :OtherAdjustment,'
      '  FlexSeason = :FlexSeason,'
      '  DevelopmentSeason = :DevelopmentSeason,'
      '  DevelopmentCenter = :DevelopmentCenter,'
      '  SampleSize = :SampleSize,'
      '  CostingSize = :CostingSize,'
      '  SizeRange = :SizeRange,'
      '  GenderClass = :GenderClass,'
      '  Cut = :Cut,'
      '  TechLevel = :TechLevel,'
      '  Last = :Last,'
      '  Segment = :Segment,'
      '  ProductionType = :ProductionType,'
      '  DistributionType = :DistributionType,'
      '  Category = :Category,'
      '  PlanningLevel2 = :PlanningLevel2,'
      '  ProductLine = :ProductLine,'
      '  DirectToDC = :DirectToDC,'
      '  UpperMaterial = :UpperMaterial,'
      '  FactoryDeveloper = :FactoryDeveloper,'
      '  FactoryDevManager = :FactoryDevManager,'
      '  FactoryCosting = :FactoryCosting,'
      '  FactoryCostingManager = :FactoryCostingManager,'
      '  CLOCosting = :CLOCosting,'
      '  CLOCostingManager = :CLOCostingManager,'
      '  LastUpdatedColorwayStatus = :LastUpdatedColorwayStatus,'
      '  LastUpdatedSourceFlag = :LastUpdatedSourceFlag,'
      
        '  LastUpdatedCLOConfirmationDate = :LastUpdatedCLOConfirmationDa' +
        'te,'
      '  LastUpdatedByFTYBOMCost = :LastUpdatedByFTYBOMCost,'
      
        '  LastUpdatedFactoryConfirmation = :LastUpdatedFactoryConfirmati' +
        'on,'
      '  LastUpdatedDevelopment = :LastUpdatedDevelopment,'
      '  LastUpdatedDateFTYBOMCost = :LastUpdatedDateFTYBOMCost,'
      
        '  LastUpdatedFactoryPriceSubmit = :LastUpdatedFactoryPriceSubmit' +
        ','
      
        '  LastUpdatedFactoryPriceStatus = :LastUpdatedFactoryPriceStatus' +
        ','
      '  InitialBuyMonth = :InitialBuyMonth,'
      '  ForecastLevel = :ForecastLevel,'
      '  Remark = :Remark,'
      '  RefModel = :RefModel,'
      '  ProductDescription = :ProductDescription,'
      '  ModelDescription = :ModelDescription,'
      '  ColorwayLongName = :ColorwayLongName,'
      '  SourceFlag = :SourceFlag,'
      '  EffectBuy = :EffectBuy,'
      '  CFM_R2B_PPH = :CFM_R2B_PPH,'
      '  C2B_PPH = :C2B_PPH,'
      '  R2B_PPH = :R2B_PPH,'
      '  TTFreight = :TTFreight,'
      '  CBDReadyDate = :CBDReadyDate,'
      '  CBDcompleteDate = :CBDcompleteDate,'
      '  UserName = :UserName,'
      '  UserUpdateTime =  GETDATE(),'
      '  UseRrady = :UseRrady,'
      '  UserComplete = :UserComplete'
      'where'
      '  Round = :Round and'
      '  CostingSeason = :CostingSeason and'
      '  Factory = :Factory and'
      '  SKU = :SKU')
    InsertSQL.Strings = (
      'insert into CostingPriceListNew'
      
        '  (Round, CostingSeason, Factory, SKU, SR, FactoryPriceSubmitSta' +
        'tus, '
      'FactoryPriceStatus, '
      '   FTYBOMCostDataStatus, FTYBOMStatus, TargetSamplePrice, FOB, '
      'TotalMaterialCost, '
      
        '   Labor, Overhead, C2BL, C2BO, SecondLabor, SecondOverhead, CFM' +
        '_C2B_PPH, '
      
        '   CostMitigation, OHRed_25H, Profit, ProfitRate, MoldCharge, Ot' +
        'herAdjustment, '
      
        '   FlexSeason, DevelopmentSeason, DevelopmentCenter, SampleSize,' +
        ' CostingSize, '
      
        '   SizeRange, GenderClass, Cut, TechLevel, Last, Segment, Produc' +
        'tionType, '
      
        '   DistributionType, Category, PlanningLevel2, ProductLine, Dire' +
        'ctToDC, '
      
        '   UpperMaterial, FactoryDeveloper, FactoryDevManager, FactoryCo' +
        'sting, '
      '   FactoryCostingManager, CLOCosting, CLOCostingManager, '
      'LastUpdatedColorwayStatus, '
      '   LastUpdatedSourceFlag, LastUpdatedCLOConfirmationDate, '
      'LastUpdatedByFTYBOMCost, '
      '   LastUpdatedFactoryConfirmation, LastUpdatedDevelopment, '
      'LastUpdatedDateFTYBOMCost, '
      
        '   LastUpdatedFactoryPriceSubmit, LastUpdatedFactoryPriceStatus,' +
        ' InitialBuyMonth, '
      
        '   ForecastLevel, Remark, RefModel, ProductDescription, ModelDes' +
        'cription, '
      
        '   ColorwayLongName, SourceFlag, EffectBuy, CFM_R2B_PPH, C2B_PPH' +
        ', '
      'R2B_PPH, '
      
        '   TTFreight, CBDReadyDate, CBDcompleteDate, UserName, UserUpdat' +
        'eTime, '
      '   UseRrady, UserComplete)'
      'values'
      
        '  (:Round, :CostingSeason, :Factory, :SKU, :SR, :FactoryPriceSub' +
        'mitStatus, '
      '   :FactoryPriceStatus, :FTYBOMCostDataStatus, :FTYBOMStatus, '
      ':TargetSamplePrice, '
      
        '   :FOB, :TotalMaterialCost, :Labor, :Overhead, :C2BL, :C2BO, :S' +
        'econdLabor, '
      
        '   :SecondOverhead, :CFM_C2B_PPH, :CostMitigation, :OHRed_25H, :' +
        'Profit, '
      
        '   :ProfitRate, :MoldCharge, :OtherAdjustment, :FlexSeason, :Dev' +
        'elopmentSeason, '
      
        '   :DevelopmentCenter, :SampleSize, :CostingSize, :SizeRange, :G' +
        'enderClass, '
      
        '   :Cut, :TechLevel, :Last, :Segment, :ProductionType, :Distribu' +
        'tionType, '
      
        '   :Category, :PlanningLevel2, :ProductLine, :DirectToDC, :Upper' +
        'Material, '
      
        '   :FactoryDeveloper, :FactoryDevManager, :FactoryCosting, :Fact' +
        'oryCostingManager, '
      '   :CLOCosting, :CLOCostingManager, :LastUpdatedColorwayStatus, '
      ':LastUpdatedSourceFlag, '
      '   :LastUpdatedCLOConfirmationDate, :LastUpdatedByFTYBOMCost, '
      ':LastUpdatedFactoryConfirmation, '
      '   :LastUpdatedDevelopment, :LastUpdatedDateFTYBOMCost, '
      ':LastUpdatedFactoryPriceSubmit, '
      
        '   :LastUpdatedFactoryPriceStatus, :InitialBuyMonth, :ForecastLe' +
        'vel, :Remark, '
      
        '   :RefModel, :ProductDescription, :ModelDescription, :ColorwayL' +
        'ongName, '
      
        '   :SourceFlag, :EffectBuy, :CFM_R2B_PPH, :C2B_PPH, :R2B_PPH, :T' +
        'TFreight, '
      
        '   :CBDReadyDate, :CBDcompleteDate, :UserName,  GETDATE(), :UseR' +
        'rady, '
      '   :UserComplete)')
    DeleteSQL.Strings = (
      'delete from CostingPriceListNew'
      'where'
      '  Round = :OLD_Round and'
      '  CostingSeason = :OLD_CostingSeason and'
      '  Factory = :OLD_Factory and'
      '  SKU = :OLD_SKU')
    Left = 64
    Top = 416
  end
  object UploadDetailQuery: TQuery
    OnCalcFields = UploadDetailQueryCalcFields
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      '---------------------------'
      
        'Select CostingXXZLS.No,CostingXXZLS.PartName, CostingXXZLS.Compo' +
        'nent, CostingXXZLS.Percentage, CostingMatLibrary.Material_text, '
      '       CostingMatLibrary.FlexMaterialCode, '
      '       CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,'
      '       CostingPriceLibrary.PriceOVR,'
      
        '       CostingXXZLS.NetUsage,CostingXXZLS.CutLoss, CostingXXZLS.' +
        'SizeGrading, '
      '       CostingMatLibrary.T1Freight, CostingXXZLS.LandedCost,'
      '       CostingXXZLS.GrossUsage, CostingXXZLS.UnitCost,'
      
        '       CostingMatLibrary.MaterialComments, CostingMatLibrary.Sup' +
        'plier,     '
      
        '       CostingMatLibrary.SupplierCode, CostingMatLibrary.Tooling' +
        ', CostingPriceLibrary.TnRP, CostingPriceLibrary.Color,CostingPri' +
        'ceLibrary.ColorGroup, '
      
        '       CostingPriceLibrary.ColorComments, CostingMatLibrary.Deli' +
        'veryTerm, CostingPriceLibrary.MaterialCost,'
      
        '       CostingPriceLibrary.PriceStatus,CostingXXZLS.UserName, Co' +
        'stingXXZLS.UserUpdateTime,'
      
        '       CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary' +
        '.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,'
      '       CostingXXZLS.SecondLabor,CostingXXZLS.SecondOverhead,'
      
        '       CostingXXZLS.Remark,CostingXXZLS.Round,CostingXXZLS.SKU,C' +
        'ostingXXZLS.CostingSeason,CostingXXZLS.Factory,'
      
        '       CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Pr' +
        'ocess_No,CostingPriceLibrary.MaterialSeason,'
      
        '       CostingProcessCost.ColorQty,CostingProcessCost.ColorQty_N' +
        'eon,CostingProcessCost.GUMColor,CostingProcessCost.SecondLF,Cost' +
        'ingProcessCost.SecondOF,'
      
        #9#9'CostingProcessCost.moldsPperson,CostingProcessCost.pairPmold,C' +
        'ostingProcessCost.PCsPPair,CostingProcessCost.TurnOverRate,'
      #9#9'CostingProcessCost.SecondLF,CostingProcessCost.SecondOF'
      'From CostingXXZLS  '
      
        'left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingX' +
        'XZLS.MTL_No'
      
        'left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=Cost' +
        'ingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Co' +
        'lor_No '
      
        'left join CostingProcessCost on CostingProcessCost.Process_No=Co' +
        'stingXXZLS.Process_No'
      
        'left join CostingPriceListNew on CostingPriceListNew.Round=Costi' +
        'ngXXZLS.Round '
      '       and CostingPriceListNew.SKU=CostingXXZLS.SKU '
      
        '       and CostingPriceListNew.CostingSeason=CostingXXZLS.Costin' +
        'gSeason '
      'where CostingXXZLS.Round='#39'R2'#39
      '  and CostingXXZLS.SKU='#39'A13222C'#39
      '  and CostingXXZLS.CostingSeason='#39'25F'#39
      'order by CostingXXZLS.No')
    UpdateObject = UpdateSQL1
    Left = 104
    Top = 328
    object UploadDetailQueryNo: TIntegerField
      FieldName = 'No'
    end
    object UploadDetailQueryComponent: TStringField
      FieldName = 'Component'
      FixedChar = True
      Size = 40
    end
    object UploadDetailQueryPercentage: TStringField
      FieldName = 'Percentage'
      FixedChar = True
      Size = 5
    end
    object UploadDetailQueryMaterial: TStringField
      FieldKind = fkCalculated
      FieldName = 'Material'
      Size = 510
      Calculated = True
    end
    object UploadDetailQueryFlexMaterialCode: TStringField
      FieldName = 'FlexMaterialCode'
      FixedChar = True
      Size = 15
    end
    object UploadDetailQueryMaterialComments: TStringField
      FieldName = 'MaterialComments'
      FixedChar = True
      Size = 150
    end
    object UploadDetailQuerySupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 50
    end
    object UploadDetailQuerySupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
    end
    object UploadDetailQueryTooling: TStringField
      FieldName = 'Tooling'
      FixedChar = True
      Size = 25
    end
    object UploadDetailQueryTnRP: TStringField
      FieldName = 'TnRP'
      FixedChar = True
      Size = 25
    end
    object UploadDetailQueryColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 40
    end
    object UploadDetailQueryColorComments: TStringField
      FieldName = 'ColorComments'
      FixedChar = True
      Size = 100
    end
    object UploadDetailQueryMeasure: TStringField
      FieldName = 'Measure'
      FixedChar = True
      Size = 15
    end
    object UploadDetailQueryBaseMaterialPrice: TStringField
      FieldName = 'BaseMaterialPrice'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryTRPnGRPUpcharge: TFloatField
      FieldName = 'TRPnGRPUpcharge'
    end
    object UploadDetailQueryPriceStatus: TStringField
      FieldName = 'PriceStatus'
      FixedChar = True
      Size = 10
    end
    object UploadDetailQueryPartName: TStringField
      FieldName = 'PartName'
      FixedChar = True
    end
    object UploadDetailQuerySupplierFreightValue: TFloatField
      FieldName = 'SupplierFreightValue'
    end
    object UploadDetailQueryDeliveryTerm2: TStringField
      FieldName = 'DeliveryTerm'
      FixedChar = True
    end
    object UploadDetailQueryMaterialCost: TStringField
      FieldName = 'MaterialCost'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryMeasureOVR: TStringField
      FieldName = 'MeasureOVR'
      FixedChar = True
      Size = 15
    end
    object UploadDetailQueryPriceOVR: TStringField
      FieldName = 'PriceOVR'
      FixedChar = True
      Size = 8
    end
    object UploadDetailQueryT1Freight: TFloatField
      FieldName = 'T1Freight'
      DisplayFormat = '0.00'
    end
    object UploadDetailQueryLandedCost: TStringField
      FieldName = 'LandedCost'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryNetUsage: TStringField
      FieldName = 'NetUsage'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryCutLoss: TStringField
      FieldName = 'CutLoss'
      FixedChar = True
      Size = 5
    end
    object UploadDetailQuerySizeGrading: TStringField
      FieldName = 'SizeGrading'
      FixedChar = True
      Size = 5
    end
    object UploadDetailQueryGrossUsage: TStringField
      FieldName = 'GrossUsage'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryUnitCost: TStringField
      FieldName = 'UnitCost'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQuerySecondLabor2: TStringField
      FieldName = 'SecondLabor'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQuerySecondOverhead2: TStringField
      FieldName = 'SecondOverhead'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
    end
    object UploadDetailQueryUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object UploadDetailQuerySecondLF: TStringField
      FieldName = 'SecondLF'
      FixedChar = True
      Size = 40
    end
    object UploadDetailQuerySecondOF: TStringField
      FieldName = 'SecondOF'
      FixedChar = True
      Size = 40
    end
    object UploadDetailQuerySecondLabor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SecondLabor_auto'
      currency = False
      Calculated = True
    end
    object UploadDetailQuerySecondOverhead: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SecondOverhead_auto'
      currency = False
      Calculated = True
    end
    object UploadDetailQueryRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 100
    end
    object UploadDetailQueryRound: TStringField
      FieldName = 'Round'
      FixedChar = True
    end
    object UploadDetailQuerySKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object UploadDetailQueryCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object UploadDetailQueryFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object UploadDetailQueryMTL_No: TIntegerField
      FieldName = 'MTL_No'
    end
    object UploadDetailQueryColor_No: TIntegerField
      FieldName = 'Color_No'
    end
    object UploadDetailQueryProcess_No: TIntegerField
      FieldName = 'Process_No'
    end
    object UploadDetailQueryColorGroup: TStringField
      FieldName = 'ColorGroup'
      FixedChar = True
    end
    object UploadDetailQueryColorQty: TIntegerField
      FieldName = 'ColorQty'
    end
    object UploadDetailQueryColorQty_Neon: TIntegerField
      FieldName = 'ColorQty_Neon'
    end
    object UploadDetailQueryGUMColor: TIntegerField
      FieldName = 'GUMColor'
    end
    object UploadDetailQuerymoldsPperson: TIntegerField
      FieldName = 'moldsPperson'
    end
    object UploadDetailQuerypairPmold: TIntegerField
      FieldName = 'pairPmold'
    end
    object UploadDetailQueryPCsPPair: TIntegerField
      FieldName = 'PCsPPair'
    end
    object UploadDetailQueryTurnOverRate: TIntegerField
      FieldName = 'TurnOverRate'
    end
    object UploadDetailQueryMaterialSeason: TStringField
      FieldName = 'MaterialSeason'
      FixedChar = True
      Size = 4
    end
    object UploadDetailQueryMaterial_Text: TMemoField
      FieldName = 'Material_Text'
      BlobType = ftMemo
    end
  end
  object DataSource4: TDataSource
    DataSet = QueryProcess
    OnDataChange = DataSource4DataChange
    Left = 252
    Top = 544
  end
  object UpdateSQL4: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingProcessCost'
      'set'
      '  Component = :Component,'
      '  Tooling = :Tooling,'
      '  MaterialComments = :MaterialComments,'
      '  ColorQty = :ColorQty,'
      '  ColorQty_Neon = :ColorQty_Neon,'
      '  GUMColor = :GUMColor,'
      '  moldsPperson = :moldsPperson,'
      '  pairPmold = :pairPmold,'
      '  PCsPPair = :PCsPPair,'
      '  TurnOverRate = :TurnOverRate,'
      '  SecondLF = :SecondLF,'
      '  SecondOF = :SecondOF,'
      '  Round = :Round,'
      '  SKU = :SKU,'
      '  CostingSeason = :CostingSeason,'
      '  No = :No,'
      '  UserName = :UserName,'
      '  UserUpdateTime = CONVERT(varchar(100),GETDATE(),120)'
      'where'
      '  Process_No = :OLD_Process_No')
    InsertSQL.Strings = (
      'insert into CostingProcessCost'
      
        '  (Component, Tooling, MaterialComments, ColorQty, ColorQty_Neon' +
        ', GUMColor, '
      
        '   moldsPperson, pairPmold, PCsPPair, TurnOverRate, SecondLF, Se' +
        'condOF, '
      '   Round, SKU, CostingSeason, No, UserName, UserUpdateTime)'
      'values'
      
        '  (:Component, :Tooling, :MaterialComments, :ColorQty, :ColorQty' +
        '_Neon, '
      
        '   :GUMColor, :moldsPperson, :pairPmold, :PCsPPair, :TurnOverRat' +
        'e, :SecondLF, '
      
        '   :SecondOF, :Round, :SKU, :CostingSeason, :No, :UserName, :Use' +
        'rUpdateTime)')
    DeleteSQL.Strings = (
      'delete from CostingProcessCost'
      'where'
      '  Process_No = :OLD_Process_No')
    Left = 256
    Top = 592
  end
  object TIMEQRY: TQuery
    DatabaseName = 'DB'
    Left = 33
    Top = 585
  end
  object DataSource5: TDataSource
    DataSet = Query_PriceList
    Left = 444
    Top = 360
  end
  object Query_PriceList: TQuery
    AutoRefresh = True
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'WITH RankedData AS ('
      '    SELECT '
      '        ROW_NUMBER() OVER ('
      '            PARTITION BY CostingSeason, Factory, SKU,EffectBuy'
      '            ORDER BY  CostingSeason, Factory, SKU, EffectBuy'
      '        ) AS RowNum,'
      '        CASE '
      
        '            WHEN RIGHT(CostingSeason, 1) = '#39'F'#39' THEN (LEFT(Costin' +
        'gSeason, 2) + '#39'U'#39')'
      
        '            WHEN RIGHT(CostingSeason, 1) = '#39'H'#39' THEN (LEFT(Costin' +
        'gSeason, 2) + '#39'F'#39')'
      
        '            WHEN RIGHT(CostingSeason, 1) = '#39'S'#39' THEN (CAST(CAST(L' +
        'EFT(CostingSeason, 2) AS INT) - 1 AS VARCHAR) + '#39'H'#39')'
      
        '            WHEN RIGHT(CostingSeason, 1) = '#39'U'#39' THEN (LEFT(Costin' +
        'gSeason, 2) + '#39'S'#39')'
      '        END as PreviousSeason,'
      '        round,'
      '        CostingSeason,'
      '        Factory,'
      '        SKU,'
      '        EffectBuy'
      '    FROM CostingPriceListNew'
      '    where round like '#39'FNL%'#39
      '),'
      'RowNumOneOnly AS ('
      
        '    SELECT RankedData.*,ROW_NUMBER() OVER (PARTITION BY CostingS' +
        'eason, Factory, SKU,EffectBuy ORDER BY RowNum) AS FinalIndex'
      '    FROM RankedData'
      '),'
      'RowNumOneOnly2 AS ('
      '    SELECT RowNumOneOnly.*'
      '        ,ROW_NUMBER() OVER ('
      '            PARTITION BY CostingSeason, Factory, SKU'
      '            ORDER BY  CostingSeason, Factory, SKU, EffectBuy'
      '        ) AS RowNum2'
      '    FROM RowNumOneOnly'
      'where FinalIndex=1'
      '),'
      'WithNext AS ('
      '    SELECT '
      '        curr.*,'
      '        CASE '
      '            WHEN next.EffectBuy IS NULL THEN '
      '                CASE '
      
        '                    WHEN RIGHT(curr.CostingSeason, 1) = '#39'F'#39' THEN' +
        ' ('#39'20'#39' + LEFT(curr.CostingSeason, 2) + '#39'03'#39')'
      
        '                    WHEN RIGHT(curr.CostingSeason, 1) = '#39'H'#39' THEN' +
        ' ('#39'20'#39' + LEFT(curr.CostingSeason, 2) + '#39'06'#39')'
      
        '                    WHEN RIGHT(curr.CostingSeason, 1) = '#39'S'#39' THEN' +
        ' ('#39'20'#39' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VA' +
        'RCHAR) + '#39'09'#39')'
      
        '                    WHEN RIGHT(curr.CostingSeason, 1) = '#39'U'#39' THEN' +
        ' ('#39'20'#39' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VA' +
        'RCHAR) + '#39'12'#39')'
      '                END'
      '            WHEN next.EffectBuy = curr.EffectBuy THEN '#39#39' '
      '            ELSE CAST(next.EffectBuy AS INT) - 1 '
      '        END AS EndBuy,'
      '        CASE '
      
        '            WHEN (PreviousSeasonCFM.SKU is null) and (curr.RowNu' +
        'm2=1) then '
      '                CASE '
      
        '                    WHEN RIGHT(curr.CostingSeason, 1) = '#39'F'#39' THEN' +
        ' ('#39'20'#39' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VA' +
        'RCHAR) + '#39'10'#39')'
      
        '                    WHEN RIGHT(curr.CostingSeason, 1) = '#39'H'#39' THEN' +
        ' ('#39'20'#39' + LEFT(curr.CostingSeason, 2) + '#39'01'#39')'
      
        '                    WHEN RIGHT(curr.CostingSeason, 1) = '#39'S'#39' THEN' +
        ' ('#39'20'#39' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VA' +
        'RCHAR) + '#39'04'#39')'
      
        '                    WHEN RIGHT(curr.CostingSeason, 1) = '#39'U'#39' THEN' +
        ' ('#39'20'#39' + CAST(CAST(LEFT(curr.CostingSeason, 2) AS INT) - 1 AS VA' +
        'RCHAR) + '#39'07'#39')'
      '                END'
      '        else '
      '                curr.EffectBuy'#9
      
        '        END AS PreviousSeasonBuy--,PreviousSeasonCFM.SKU as Prev' +
        'iousSeasonCFM'
      '    FROM RowNumOneOnly2 curr'
      '    LEFT JOIN RowNumOneOnly2 next '
      '        ON curr.RowNum2 + 1 = next.RowNum2 '
      '        AND curr.SKU = next.SKU'
      '        AND curr.CostingSeason = next.CostingSeason'
      '        AND curr.Factory = next.Factory'
      '    left join (select* from('
      '        select SKU,PricingSeason,Factory  From CostingPriceList '
      '        UNION all '
      
        '        select SKU,CostingSeason as PricingSeason,Factory  From ' +
        'CostingPriceListnew )a'
      '        group by SKU,Factory,PricingSeason '
      
        '        )PreviousSeasonCFM on PreviousSeasonCFM.SKU=curr.SKU and' +
        ' PreviousSeasonCFM.PricingSeason=curr.PreviousSeason and Previou' +
        'sSeasonCFM.factory=curr.factory '
      ')'
      'Select A.*,'
      'Sum(DDZL.Pairs)  as Pairs'
      
        ',Case when OHRed_25H is not null then CAST(OHRed_25H AS FLOAT)*C' +
        'AST(C2BO AS FLOAT) /(CAST(C2BO AS FLOAT) +CAST(SecondOverhead AS' +
        ' FLOAT)) +CAST(C2BO AS FLOAT)  '
      '  else null end as C2BOwRed'
      
        ',Case when OHRed_25H is not null then CAST(OHRed_25H AS FLOAT)*C' +
        'AST(SecondOverhead AS FLOAT) /(CAST(C2BO AS FLOAT) +CAST(SecondO' +
        'verhead AS FLOAT)) +CAST(SecondOverhead AS FLOAT) '
      '  else null end as SecondOwRed'
      ',WithNext.EndBuy,WithNext.PreviousSeasonBuy'
      ',CostingFlexLineSheet.type,CostingFlexLineSheet.FamilyName'
      'from ('
      
        'Select CostingPriceListNew.CostingSeason,CostingPriceListNew.Rou' +
        'nd,CostingPriceListNew.Factory,CostingPriceListNew.SKU'
      
        ',CostingPriceListNew.SR,CostingPriceListNew.FactoryPriceSubmitSt' +
        'atus,CostingPriceListNew.FTYBOMStatus'
      
        ',CostingPriceListNew.GenderClass,CostingPriceListNew.cut,Costing' +
        'PriceListNew.TechLevel,CostingPriceListNew.last'
      ',Max(XXZL.DAOMH) as DAOMH'
      
        ',CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,' +
        'CostingPriceListNew.Category,CostingPriceListNew.PlanningLevel2'
      
        ',CostingPriceListNew.ProductDescription,CostingPriceListNew.Mode' +
        'lDescription,CostingPriceListNew.ColorwayLongName,CostingPriceLi' +
        'stNew.SourceFlag'
      
        ',CostingPriceListNew.ProductLine,CostingPriceListNew.DirectToDC,' +
        'CostingPriceListNew.UpperMaterial,CostingPriceListNew.FactoryDev' +
        'eloper'
      
        ',CostingPriceListNew.FactoryCosting,CostingPriceListNew.CLOCosti' +
        'ng'
      ',CostingPriceListNew.C2B_PPH,CostingPriceListNew.R2B_PPH'
      ',CostingPriceListNew.CFM_C2B_PPH,CostingPriceListNew.CFM_R2B_PPH'
      ',CostingPriceListNew.TargetSamplePrice'
      
        ',CostingPriceListNew.FOB,CostingPriceListNew.TotalMaterialCost,C' +
        'ostingPriceListNew.Labor,CostingPriceListNew.Overhead'
      
        ',CostingPriceListNew.C2BL,CostingPriceListNew.C2BO,CostingPriceL' +
        'istNew.SecondLabor,CostingPriceListNew.SecondOverhead'
      
        ',CostingPriceListNew.Profit,CostingPriceListNew.ProfitRate,Costi' +
        'ngPriceListNew.MoldCharge,CostingPriceListNew.CostMitigation'
      ',CostingPriceListNew.ForecastLevel'
      
        ',DistributionType,FactoryDevManager,FactoryCostingManager,CLOCos' +
        'tingManager'
      
        ',CostingPriceListNew.LastUpdatedFactoryPriceStatus,CostingPriceL' +
        'istNew.LastUpdatedCLOConfirmationDate as CLOCOConfirmationDate'
      
        ',FTYBOMCostDataStatus,FactoryPriceStatus,LastUpdatedColorwayStat' +
        'us,LastUpdatedSourceFlag'
      
        ',LastUpdatedByFTYBOMCost as LastUpdatedFTYBOMStatus,LastUpdatedF' +
        'actoryConfirmation as FactoryConfirmationStatus'
      
        ',LastUpdatedDevelopment as LastUpdatedCLODevelopment,LastUpdated' +
        'DateFTYBOMCost as FTYBOMCostDataStatusDate'
      
        ',LastUpdatedFactoryPriceSubmit as FactoryPriceSubmitStatusDate,I' +
        'nitialBuyMonth,DevelopmentSeason as InitialDevelopmentSeason,Dev' +
        'elopmentCenter'
      ',SampleSize,CostingSize,SizeRange'
      ',Costing_Salary.Salary'
      '      ,xxzl.XieXing,xxzl.SheHao,EffectBuy'
      
        '      ,SUM(CASE WHEN supplier LIKE '#39'%Factory In-House%'#39' THEN CAS' +
        'T(UnitCost AS FLOAT) ELSE 0 END) AS Cost_House'
      
        '      ,SUM(CASE WHEN supplier NOT LIKE '#39'%Factory In-House%'#39' OR s' +
        'upplier IS NULL THEN CAST(UnitCost AS FLOAT) ELSE 0 END) AS Cost' +
        '_Others'
      
        ',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,Strob' +
        'elPrintingRemoveal,'
      
        'MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSavi' +
        'ng,'
      
        'SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,Volum' +
        'eEfficiencyGainOverhead'
      
        ',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstruction' +
        'Optimizat_25S,CBYWeightedCosting_25S'
      
        ',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,C' +
        'kmesh_25S'
      ',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U'
      
        ',CL98LaborPrecommit_25F,FY25_CostMitigation,FY26_CostMitigation,' +
        'OHRed_25H'
      ',CostingPriceListNew.UserName,CostingPriceListNew.UserUpdateTime'
      ',CostingPriceListNew.LS_NO'
      'From CostingPriceListNew'
      
        'left join xxzl on  CostingPriceListNew.SKU = left(xxzl.article,c' +
        'harindex('#39'/'#39',xxzl.article+'#39'/'#39')-1)'
      
        '  and case when CostingPriceListNew.Factory like '#39'%LYN%'#39' then '#39'J' +
        'NG'#39' else '#39'%YQA%'#39' end =xxzl.KFCQ'
      
        'left join Costing_Salary on CostingPriceListNew.CostingSeason=Co' +
        'sting_Salary.PricingSeason and  CostingPriceListNew.Factory=Cost' +
        'ing_Salary.Factory_CTS'
      
        'left join CostingPriceList on CostingPriceList.SKU=CostingPriceL' +
        'istNew.SKU and CostingPriceList.PricingSeason=CostingPriceListNe' +
        'w.CostingSeason'
      #9#9#9'and CostingPriceList.Factory=CostingPriceListNew.Factory'
      
        'left join CostingXXZLS on CostingPriceListNew.Round=CostingXXZLS' +
        '.Round and CostingPriceListNew.SKU=CostingXXZLS.SKU'
      
        '         and CostingPriceListNew.CostingSeason=CostingXXZLS.Cost' +
        'ingSeason and CostingPriceListNew.factory=CostingXXZLS.factory '
      
        'LEFT JOIN CostingMatLibrary ON CostingMatLibrary.MTL_No = Costin' +
        'gXXZLS.MTL_No '
      'Where 1=1'
      'and CostingPriceListNew.Round like '#39'FNL%'#39
      'and CostingPriceListNew.Factory = '#39'LYN-9Z'#39
      'and ('
      'CostingPriceListNew.CostingSeason  like '#39'26S%'#39
      ')'
      
        'group by CostingPriceListNew.CostingSeason,CostingPriceListNew.R' +
        'ound,CostingPriceListNew.Factory,CostingPriceListNew.SKU'
      
        ',CostingPriceListNew.SR,CostingPriceListNew.FactoryPriceSubmitSt' +
        'atus,CostingPriceListNew.FTYBOMStatus'
      
        ',CostingPriceListNew.GenderClass,CostingPriceListNew.cut,Costing' +
        'PriceListNew.TechLevel,CostingPriceListNew.last'
      
        ',CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,' +
        'CostingPriceListNew.Category,CostingPriceListNew.PlanningLevel2'
      
        ',CostingPriceListNew.ProductDescription,CostingPriceListNew.Mode' +
        'lDescription,CostingPriceListNew.ColorwayLongName,CostingPriceLi' +
        'stNew.SourceFlag'
      
        ',CostingPriceListNew.ProductLine,CostingPriceListNew.DirectToDC,' +
        'CostingPriceListNew.UpperMaterial,CostingPriceListNew.FactoryDev' +
        'eloper'
      
        ',CostingPriceListNew.FactoryCosting,CostingPriceListNew.CLOCosti' +
        'ng'
      ',CostingPriceListNew.C2B_PPH,CostingPriceListNew.R2B_PPH'
      ',CostingPriceListNew.CFM_C2B_PPH,CostingPriceListNew.CFM_R2B_PPH'
      
        ',CostingPriceListNew.FOB,CostingPriceListNew.TotalMaterialCost,C' +
        'ostingPriceListNew.Labor,CostingPriceListNew.Overhead'
      
        ',CostingPriceListNew.C2BL,CostingPriceListNew.C2BO,CostingPriceL' +
        'istNew.SecondLabor,CostingPriceListNew.SecondOverhead'
      
        ',CostingPriceListNew.Profit,CostingPriceListNew.ProfitRate,Costi' +
        'ngPriceListNew.MoldCharge,CostingPriceListNew.CostMitigation'
      
        ',CostingPriceListNew.LastUpdatedFactoryPriceStatus,CostingPriceL' +
        'istNew.LastUpdatedCLOConfirmationDate '
      ',Costing_Salary.Salary'
      
        ',DistributionType,FactoryDevManager,FactoryCostingManager,CLOCos' +
        'tingManager'
      
        ',FTYBOMCostDataStatus,FactoryPriceStatus,LastUpdatedColorwayStat' +
        'us,LastUpdatedSourceFlag'
      
        ',LastUpdatedByFTYBOMCost,LastUpdatedFactoryConfirmation,LastUpda' +
        'tedDevelopment,LastUpdatedDateFTYBOMCost'
      
        ',LastUpdatedFactoryPriceSubmit,InitialBuyMonth,DevelopmentSeason' +
        ',DevelopmentCenter'
      ',SampleSize,CostingSize,SizeRange,TargetSamplePrice'
      ',CostingPriceListNew.ForecastLevel'
      ',CostingPriceListNew.UserName,CostingPriceListNew.UserUpdateTime'
      
        ',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,Strob' +
        'elPrintingRemoveal,'
      
        'MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSavi' +
        'ng,'
      
        'SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,Volum' +
        'eEfficiencyGainOverhead'
      
        ',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstruction' +
        'Optimizat_25S,CBYWeightedCosting_25S'
      
        ',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,C' +
        'kmesh_25S'
      ',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U'
      
        ',CL98LaborPrecommit_25F,FY25_CostMitigation,FY26_CostMitigation,' +
        'OHRed_25H'
      
        '      ,xxzl.XieXing,xxzl.SheHao,EffectBuy,CostingPriceListNew.LS' +
        '_NO'
      ') A'
      'left join WithNext on A.SKU=WithNext.SKU '
      '  and A.CostingSeason=WithNext.CostingSeason '
      '  and A.Factory=WithNext.Factory '
      '  and A.round=WithNext.round'
      
        'left join (select DDZL.XieXing,DDZL.SheHao,DDZL.Pairs,YWDD.KHDDB' +
        'H2DATE from DDZL  left join YWDD on YWDD.DDBH=DDZL.DDBH'
      ')DDZL on  A.XieXing=DDZL.XieXing and  A.SheHao=DDZL.SheHao '
      
        'and CONVERT(VARCHAR(6), KHDDBH2DATE, 112) between  WithNext.Prev' +
        'iousSeasonBuy and WithNext.EndBuy '
      
        'left join CostingFlexLineSheet on A.LS_NO=CostingFlexLineSheet.L' +
        'S_NO '
      'group by A.CostingSeason,A.Round,A.Factory,A.SKU'
      ',A.SR,A.FactoryPriceSubmitStatus,A.FTYBOMStatus'
      ',A.GenderClass,A.cut,A.TechLevel,A.last'
      ',A.Segment,A.ProductionType,A.Category,A.PlanningLevel2'
      
        ',A.ProductDescription,A.ModelDescription,A.ColorwayLongName,A.So' +
        'urceFlag'
      ',A.ProductLine,A.DirectToDC,A.UpperMaterial,A.FactoryDeveloper'
      ',A.FactoryCosting,A.CLOCosting'
      ',A.C2B_PPH,A.R2B_PPH'
      ',A.CFM_C2B_PPH,A.CFM_R2B_PPH'
      ',A.TargetSamplePrice'
      ',A.FOB,A.TotalMaterialCost,A.Labor,A.Overhead'
      ',A.C2BL,A.C2BO,A.SecondLabor,A.SecondOverhead'
      ',A.Profit,A.ProfitRate,A.MoldCharge,A.CostMitigation'
      ',A.LastUpdatedFactoryPriceStatus,CLOCOConfirmationDate'
      ',A.ForecastLevel,A.PlanningLevel2'
      ',A.Salary'
      
        ',DistributionType,FactoryDevManager,FactoryCostingManager,CLOCos' +
        'tingManager'
      
        ',FTYBOMCostDataStatus,FactoryPriceStatus,LastUpdatedColorwayStat' +
        'us,LastUpdatedSourceFlag'
      
        ',LastUpdatedFTYBOMStatus,FactoryConfirmationStatus,LastUpdatedCL' +
        'ODevelopment,FTYBOMCostDataStatusDate'
      
        ',FactoryPriceSubmitStatusDate,InitialBuyMonth,InitialDevelopment' +
        'Season,DevelopmentCenter'
      ',SampleSize,CostingSize,SizeRange,TargetSamplePrice'
      ',A.UserName,A.UserUpdateTime'
      
        ',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,Strob' +
        'elPrintingRemoveal,'
      
        'MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSavi' +
        'ng,'
      
        'SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,Volum' +
        'eEfficiencyGainOverhead'
      
        ',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstruction' +
        'Optimizat_25S,CBYWeightedCosting_25S'
      
        ',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,C' +
        'kmesh_25S'
      ',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U'
      
        ',CL98LaborPrecommit_25F,FY25_CostMitigation,FY26_CostMitigation,' +
        'OHRed_25H'
      ',A.XieXing,A.SheHao,DAOMH,Cost_House,Cost_Others'
      
        ',WithNext.EndBuy,WithNext.PreviousSeasonBuy,A.EffectBuy,A.LS_NO ' +
        ' '
      ',CostingFlexLineSheet.type,CostingFlexLineSheet.FamilyName'
      ''
      '---------------------------')
    Left = 448
    Top = 304
    object Query_PriceListCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object Query_PriceListFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListRound: TStringField
      FieldName = 'Round'
      FixedChar = True
      Size = 31
    end
    object Query_PriceListEffectBuy: TStringField
      FieldName = 'EffectBuy'
      FixedChar = True
      Size = 6
    end
    object Query_PriceListSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListSR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query_PriceListUpperMaterial: TStringField
      FieldName = 'UpperMaterial'
      FixedChar = True
      Size = 70
    end
    object Query_PriceListTargetSamplePrice: TStringField
      FieldName = 'TargetSamplePrice'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListFOB: TStringField
      FieldName = 'FOB'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListTotalMaterialCost: TStringField
      FieldName = 'TotalMaterialCost'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListCost_House: TFloatField
      FieldName = 'Cost_House'
    end
    object Query_PriceListCost_Others: TFloatField
      FieldName = 'Cost_Others'
    end
    object Query_PriceListLabor: TStringField
      FieldName = 'Labor'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListC2BL: TStringField
      FieldName = 'C2BL'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListOverhead: TStringField
      FieldName = 'Overhead'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListC2BO: TStringField
      FieldName = 'C2BO'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListSecondLabor: TStringField
      FieldName = 'SecondLabor'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListSecondOverhead: TStringField
      FieldName = 'SecondOverhead'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListCostMitigation: TStringField
      FieldName = 'CostMitigation'
      FixedChar = True
      Size = 5
    end
    object Query_PriceListOHRed_25H: TStringField
      FieldName = 'OHRed_25H'
      FixedChar = True
      Size = 9
    end
    object Query_PriceListProfit: TStringField
      FieldName = 'Profit'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListProfitRate: TFloatField
      FieldName = 'ProfitRate'
    end
    object Query_PriceListMoldCharge: TCurrencyField
      FieldName = 'MoldCharge'
      currency = False
    end
    object Query_PriceListC2BOwRed: TFloatField
      FieldName = 'C2BOwRed'
    end
    object Query_PriceListSecondOwRed: TFloatField
      FieldName = 'SecondOwRed'
    end
    object Query_PriceListC2B_PPH: TStringField
      FieldName = 'C2B_PPH'
      FixedChar = True
      Size = 8
    end
    object Query_PriceListR2B_PPH: TStringField
      FieldName = 'R2B_PPH'
      FixedChar = True
      Size = 8
    end
    object Query_PriceListCFM_C2B_PPH: TStringField
      FieldName = 'CFM_C2B_PPH'
      FixedChar = True
      Size = 8
    end
    object Query_PriceListCFM_R2B_PPH: TStringField
      FieldName = 'CFM_R2B_PPH'
      FixedChar = True
      Size = 8
    end
    object Query_PriceListPreviousSeasonBuy: TStringField
      FieldName = 'PreviousSeasonBuy'
      FixedChar = True
      Size = 34
    end
    object Query_PriceListEndBuy: TIntegerField
      FieldName = 'EndBuy'
    end
    object Query_PriceListpairs: TIntegerField
      FieldName = 'pairs'
    end
    object Query_PriceListSalary: TCurrencyField
      FieldName = 'Salary'
      currency = False
    end
    object Query_PriceListGenderClass: TStringField
      FieldName = 'GenderClass'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListcut: TStringField
      FieldName = 'cut'
      FixedChar = True
      Size = 5
    end
    object Query_PriceListTechLevel: TStringField
      FieldName = 'TechLevel'
      FixedChar = True
      Size = 4
    end
    object Query_PriceListlast: TStringField
      FieldName = 'last'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListSegment: TStringField
      FieldName = 'Segment'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListProductionType: TStringField
      FieldName = 'ProductionType'
      FixedChar = True
      Size = 15
    end
    object Query_PriceListCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 15
    end
    object Query_PriceListPlanningLevel2: TStringField
      FieldName = 'PlanningLevel2'
      FixedChar = True
    end
    object Query_PriceListProductDescription: TStringField
      FieldName = 'ProductDescription'
      FixedChar = True
      Size = 40
    end
    object Query_PriceListModelDescription: TStringField
      FieldName = 'ModelDescription'
      FixedChar = True
      Size = 40
    end
    object Query_PriceListColorwayLongName: TStringField
      FieldName = 'ColorwayLongName'
      FixedChar = True
      Size = 50
    end
    object Query_PriceListSourceFlag: TStringField
      FieldName = 'SourceFlag'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListProductLine: TStringField
      FieldName = 'ProductLine'
      FixedChar = True
      Size = 35
    end
    object Query_PriceListDirectToDC: TStringField
      FieldName = 'DirectToDC'
      FixedChar = True
      Size = 3
    end
    object Query_PriceListFactoryCosting: TStringField
      FieldName = 'FactoryCosting'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListFactoryDeveloper: TStringField
      FieldName = 'FactoryDeveloper'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListCLOCosting: TStringField
      FieldName = 'CLOCosting'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListFTYBOMStatus: TStringField
      FieldName = 'FTYBOMStatus'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListFactoryPriceSubmitStatus: TStringField
      FieldName = 'FactoryPriceSubmitStatus'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListLastUpdatedFactoryPriceStatus: TDateTimeField
      FieldName = 'LastUpdatedFactoryPriceStatus'
    end
    object Query_PriceListCLOCOConfirmationDate: TDateTimeField
      FieldName = 'CLOCOConfirmationDate'
    end
    object Query_PriceListForecastLevel: TStringField
      FieldName = 'ForecastLevel'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListDistributionType: TStringField
      FieldName = 'DistributionType'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListFactoryDevManager: TStringField
      FieldName = 'FactoryDevManager'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListFactoryCostingManager: TStringField
      FieldName = 'FactoryCostingManager'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListCLOCostingManager: TStringField
      FieldName = 'CLOCostingManager'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListFTYBOMCostDataStatus: TStringField
      FieldName = 'FTYBOMCostDataStatus'
      FixedChar = True
    end
    object Query_PriceListFactoryPriceStatus: TStringField
      FieldName = 'FactoryPriceStatus'
      FixedChar = True
    end
    object Query_PriceListLastUpdatedColorwayStatus: TDateTimeField
      FieldName = 'LastUpdatedColorwayStatus'
    end
    object Query_PriceListLastUpdatedSourceFlag: TDateTimeField
      FieldName = 'LastUpdatedSourceFlag'
    end
    object Query_PriceListLastUpdatedFTYBOMStatus: TStringField
      FieldName = 'LastUpdatedFTYBOMStatus'
      FixedChar = True
    end
    object Query_PriceListFactoryConfirmationStatus: TDateTimeField
      FieldName = 'FactoryConfirmationStatus'
    end
    object Query_PriceListLastUpdatedCLODevelopment: TDateTimeField
      FieldName = 'LastUpdatedCLODevelopment'
    end
    object Query_PriceListFTYBOMCostDataStatusDate: TDateTimeField
      FieldName = 'FTYBOMCostDataStatusDate'
    end
    object Query_PriceListFactoryPriceSubmitStatusDate: TDateTimeField
      FieldName = 'FactoryPriceSubmitStatusDate'
    end
    object Query_PriceListInitialBuyMonth: TStringField
      FieldName = 'InitialBuyMonth'
      FixedChar = True
      Size = 15
    end
    object Query_PriceListInitialDevelopmentSeason: TStringField
      FieldName = 'InitialDevelopmentSeason'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListDevelopmentCenter: TStringField
      FieldName = 'DevelopmentCenter'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListSampleSize: TFloatField
      FieldName = 'SampleSize'
    end
    object Query_PriceListCostingSize: TFloatField
      FieldName = 'CostingSize'
    end
    object Query_PriceListSizeRange: TStringField
      FieldName = 'SizeRange'
      FixedChar = True
    end
    object Query_PriceListCL98LaborPrecommit_25F: TCurrencyField
      FieldName = 'CL98LaborPrecommit_25F'
      currency = False
    end
    object Query_PriceListTissueOIA_LK_25U: TCurrencyField
      FieldName = 'TissueOIA_LK_25U'
      currency = False
    end
    object Query_PriceListShoelaceLength_25U: TCurrencyField
      FieldName = 'ShoelaceLength_25U'
      currency = False
    end
    object Query_PriceListSealTapeOIA_LK_25U: TCurrencyField
      FieldName = 'SealTapeOIA_LK_25U'
      currency = False
    end
    object Query_PriceListCkmesh_25S: TCurrencyField
      FieldName = 'Ckmesh_25S'
      currency = False
    end
    object Query_PriceListMOC_25S: TCurrencyField
      FieldName = 'MOC_25S'
      currency = False
    end
    object Query_PriceListInnerBox_25S: TCurrencyField
      FieldName = 'InnerBox_25S'
      currency = False
    end
    object Query_PriceListOrtholiteSockliner_25S: TCurrencyField
      FieldName = 'OrtholiteSockliner_25S'
      currency = False
    end
    object Query_PriceListSeasonalColor_25S: TCurrencyField
      FieldName = 'SeasonalColor_25S'
      currency = False
    end
    object Query_PriceListCBYWeightedCosting_25S: TCurrencyField
      FieldName = 'CBYWeightedCosting_25S'
      currency = False
    end
    object Query_PriceListRSHConstructionOptimizat_25S: TCurrencyField
      FieldName = 'RSHConstructionOptimizat_25S'
      currency = False
    end
    object Query_PriceListRemoveSocklinerCement_25S: TCurrencyField
      FieldName = 'RemoveSocklinerCement_25S'
      currency = False
    end
    object Query_PriceListRecyclingUn_Cured_25S: TCurrencyField
      FieldName = 'RecyclingUn_Cured_25S'
      currency = False
    end
    object Query_PriceListVolumeEfficiencyGainOverhead: TCurrencyField
      FieldName = 'VolumeEfficiencyGainOverhead'
      currency = False
    end
    object Query_PriceListRemovedNonBuffing: TCurrencyField
      FieldName = 'RemovedNonBuffing'
      currency = False
    end
    object Query_PriceListVolumeEfficiencyGain: TCurrencyField
      FieldName = 'VolumeEfficiencyGain'
      currency = False
    end
    object Query_PriceListSupportFrictiontape: TCurrencyField
      FieldName = 'SupportFrictiontape'
      currency = False
    end
    object Query_PriceListAutoBuffingSaving: TCurrencyField
      FieldName = 'AutoBuffingSaving'
      currency = False
    end
    object Query_PriceListHanyoungNetCut: TCurrencyField
      FieldName = 'HanyoungNetCut'
      currency = False
    end
    object Query_PriceListMMAutoCutLectraSaving: TCurrencyField
      FieldName = 'MMAutoCutLectraSaving'
      currency = False
    end
    object Query_PriceListMMDeduction: TCurrencyField
      FieldName = 'MMDeduction'
      currency = False
    end
    object Query_PriceListStrobelPrintingRemoveal: TCurrencyField
      FieldName = 'StrobelPrintingRemoveal'
      currency = False
    end
    object Query_PriceListSpecialOffer: TCurrencyField
      FieldName = 'SpecialOffer'
      currency = False
    end
    object Query_PriceListSocklinerByPrs: TCurrencyField
      FieldName = 'SocklinerByPrs'
      currency = False
    end
    object Query_PriceListOutsoleAssembly: TCurrencyField
      FieldName = 'OutsoleAssembly'
      currency = False
    end
    object Query_PriceListFH17KeptLabor: TCurrencyField
      FieldName = 'FH17KeptLabor'
      currency = False
    end
    object Query_PriceListFY25_CostMitigation: TCurrencyField
      FieldName = 'FY25_CostMitigation'
      currency = False
    end
    object Query_PriceListFY26_CostMitigation: TCurrencyField
      FieldName = 'FY26_CostMitigation'
      currency = False
    end
    object Query_PriceListUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
    end
    object Query_PriceListUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListFamilyName: TStringField
      FieldName = 'FamilyName'
      FixedChar = True
    end
    object Query_PriceListtype: TStringField
      FieldName = 'type'
      FixedChar = True
      Size = 10
    end
  end
  object Query_CLBH: TQuery
    OnCalcFields = Query_CLBHCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CostingPriceListNew.SR,CostingXXZLS.SKU,CostingXXZLS.Cost' +
        'ingSeason,MaterialSeason,CostingXXZLS.Factory,CostingXXZLS.Compo' +
        'nent'
      
        ',CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingPriceLibrary.C' +
        'LBH,CostingMatLibrary.FlexMaterialCode,CostingMatLibrary.Supplie' +
        'r,CostingMatLibrary.SupplierCode'
      
        ',Material_Text,XXZL.XieXing,XXZL.SheHao,CostingPriceListNew.Cost' +
        'ingSize,CostingPriceLibrary.Color'
      
        ',CSBH_FLEX.CSBH,ZSZL.ZSYWJC,CSBH_FLEX.USERID,CSBH_FLEX.USERDATE ' +
        ',CSBH_FLEX.Replaced'
      'From CostingXXZLS'
      
        'left join CostingMatLibrary on CostingXXZLS.MTL_No=CostingMatLib' +
        'rary.MTL_No  and CostingMatLibrary.FlexMaterialCode <> '#39#39
      
        'left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=Cost' +
        'ingMatLibrary.MTL_No and CostingPriceLibrary.Color_No=CostingXXZ' +
        'LS.Color_No'
      
        'left join XXZL  on CostingXXZLS.SKU = left(XXZL.article,charinde' +
        'x('#39'/'#39',XXZL.article+'#39'/'#39')-1)'
      
        'left join CostingPriceListNew on CostingXXZLS.SKU=CostingPriceLi' +
        'stNew.SKU and CostingXXZLS.CostingSeason=CostingPriceListNew.Cos' +
        'tingSeason '
      
        #9#9#9#9'and CostingPriceListNew.Round=CostingXXZLS.Round and Costing' +
        'PriceListNew.Factory=CostingXXZLS.Factory '
      
        'left join CSBH_FLEX on CSBH_FLEX.SupplierCode=CostingMatLibrary.' +
        'SupplierCode'
      'left JOIN ZSZL on ZSZL.ZSDH=CSBH_FLEX.CSBH'
      'where CostingXXZLS.SKU='#39'A13026C'#39
      '')
    UpdateObject = UpdateSQL5
    Left = 504
    Top = 304
    object Query_CLBHSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object Query_CLBHCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object Query_CLBHComponent: TStringField
      FieldName = 'Component'
      FixedChar = True
      Size = 40
    end
    object Query_CLBHCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query_CLBHFlexMaterialCode: TStringField
      FieldName = 'FlexMaterialCode'
      FixedChar = True
      Size = 15
    end
    object Query_CLBHMaterial: TStringField
      FieldKind = fkCalculated
      FieldName = 'Material'
      Size = 550
      Calculated = True
    end
    object Query_CLBHSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 50
    end
    object Query_CLBHColor_No: TIntegerField
      FieldName = 'Color_No'
    end
    object Query_CLBHMTL_No: TIntegerField
      FieldName = 'MTL_No'
    end
    object Query_CLBHMaterialSeason: TStringField
      FieldName = 'MaterialSeason'
      FixedChar = True
      Size = 4
    end
    object Query_CLBHFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object Query_CLBHXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query_CLBHSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query_CLBHCostingSize: TFloatField
      FieldName = 'CostingSize'
    end
    object Query_CLBHMaterial_Text: TMemoField
      FieldName = 'Material_Text'
      BlobType = ftMemo
    end
    object Query_CLBHSR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query_CLBHColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 40
    end
    object Query_CLBHSupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
    end
    object Query_CLBHCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query_CLBHZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query_CLBHUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query_CLBHUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query_CLBHReplaced: TStringField
      FieldName = 'Replaced'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource6: TDataSource
    DataSet = Query_CLBH
    Left = 508
    Top = 360
  end
  object UpdateSQL5: TUpdateSQL
    ModifySQL.Strings = (
      'update CSBH_FLEX'
      'set'
      '  CSBH = :CSBH,'
      '  SupplierCode = :SupplierCode,'
      '  Supplier = :Supplier,'
      '  Replaced = :Replaced, '
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  CSBH = :CSBH and'
      '  SupplierCode = :SupplierCode'
      ''
      'update CostingPriceLibrary'
      'set'
      '  CLBH = :CLBH'
      'where'
      '  MTL_No = :MTL_No'
      '  and Color_No = :Color_No'
      '  and MaterialSeason = :MaterialSeason')
    InsertSQL.Strings = (
      'insert into CSBH_FLEX'
      '  (CSBH, SupplierCode, Supplier, Replaced, USERID, USERDATE)'
      'values'
      '  (:CSBH, :SupplierCode, :Supplier, '#39'0'#39', :USERID, :USERDATE)')
    DeleteSQL.Strings = (
      'delete from CSBH_FLEX'
      'where'
      '  CSBH = :OLD_CSBH and'
      '  SupplierCode = :OLD_SupplierCode')
    Left = 512
    Top = 408
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource6
    SQL.Strings = (
      '---------------------------'
      'select XXZLS.CLBH'
      ',CLZL.YWPM'
      ',XXZLS.CSBH,ZSZL.ZSYWJC as ZSYWJC'
      ',Max(XXZLS.USERDATE) as BOMDATE'
      ',CCQQ,CCQZ ,MAX(BWZL.ywsm) as ywsm'
      
        ',sum(case when BWZL.ywsm=:Component then 1 else 0 end) as YN    ' +
        '     '
      'FROM ('
      
        ' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.B' +
        'WLB,XXZLS.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH   '
      ' from XXZLS '
      
        ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  and ((Ca' +
        'st(:costingsize as float)<=Cast(CCQZ as float) and Cast(CCQQ as ' +
        'float)<=Cast(:costingsize as float)) OR'
      
        ' (Cast(:costingsize as float)>=Cast(CCQZ as float) and Cast(CCQQ' +
        ' as float)>=Cast(:costingsize as float)) and (Cast(CCQZ as float' +
        ')<Cast(CCQQ as float))'
      ' OR CCQZ is null OR CCQZ ='#39#39
      ' )'
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH'
      ' from XXZLS'
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH'
      
        ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  and ((Ca' +
        'st(:costingsize as float)<=Cast(CCQZ as float) and Cast(CCQQ as ' +
        'float)<=Cast(:costingsize as float)) OR'
      
        ' (Cast(:costingsize as float)>=Cast(CCQZ as float) and Cast(CCQQ' +
        ' as float)>=Cast(:costingsize as float)) and (Cast(CCQZ as float' +
        ')<Cast(CCQQ as float))'
      ' OR CCQZ is null  OR CCQZ ='#39#39
      ' )'
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH  ' +
        '  from ( '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BW' +
        'LB,CCQQ,CCQZ,XH,XXZLS.BWBH  '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH'
      
        ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  and ((Ca' +
        'st(:costingsize as float)<=Cast(CCQZ as float) and Cast(CCQQ as ' +
        'float)<=Cast(:costingsize as float)) OR'
      
        ' (Cast(:costingsize as float)>=Cast(CCQZ as float) and Cast(CCQQ' +
        ' as float)>=Cast(:costingsize as float)) and (Cast(CCQZ as float' +
        ')<Cast(CCQQ as float))'
      ' '
      ' OR CCQZ is null OR CCQZ ='#39#39')) XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' ) XXZLS '
      'inner JOIN CLZL ON XXZLS.CLBH = CLZL.cldh'
      'inner JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      
        'where XXZLS.CLBH  in (select cldh from clzl_flex where cldhflex=' +
        ':FlexMaterialCode )    '
      'group by XXZLS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,CCQQ,CCQZ,XXZLS.CSBH'
      'order by YN DESC')
    Left = 988
    Top = 216
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Component'
        ParamType = ptUnknown
        Size = 41
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftFloat
        Name = 'CostingSize'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'FlexMaterialCode'
        ParamType = ptUnknown
        Size = 16
      end>
    object XXZLSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXZLSZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object XXZLSBOMDATE: TDateTimeField
      FieldName = 'BOMDATE'
    end
    object XXZLSCCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object XXZLSCCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object XXZLSywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object XXZLSYN: TIntegerField
      FieldName = 'YN'
    end
  end
  object DataSource7: TDataSource
    DataSet = XXZLS
    Left = 988
    Top = 248
  end
  object Queryclzl_flex: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource6
    SQL.Strings = (
      'select clzl_flex.cldh,clzl.ywpm from clzl_flex'
      'left join clzl on  clzl.CLDH=clzl_flex.CLDH'
      'where cldhflex=:FlexMaterialCode'
      'and cldhflex<>'#39#39' and cldhflex is not null')
    Left = 992
    Top = 416
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FlexMaterialCode'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object DataSource8: TDataSource
    DataSet = Queryclzl_flex
    Left = 988
    Top = 472
  end
  object DS_CBDLog: TDataSource
    DataSet = Qry_CBDLog
    Left = 572
    Top = 448
  end
  object Qry_CBDLog: TQuery
    DatabaseName = 'DB'
    DataSource = DS_PL
    SQL.Strings = (
      ''
      'Select * from ('
      
        'Select CostingXXZLSlogs.*,CostingPriceLibrary.MaterialCost,Costi' +
        'ngPriceLibrary.PriceOVR From CostingXXZLSlogs'
      
        'left join CostingPriceListNew on CostingPriceListNew.Round=Costi' +
        'ngXXZLSlogs.Round '
      '       and CostingPriceListNew.SKU=CostingXXZLSlogs.SKU '
      
        '       and CostingPriceListNew.CostingSeason=CostingXXZLSlogs.Co' +
        'stingSeason '
      '       and CostingPriceListNew.Factory=CostingXXZLSlogs.Factory '
      
        'left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=Cost' +
        'ingXXZLSlogs.MTL_No  '
      
        'and CostingPriceLibrary.Color_No=CostingXXZLSlogs.Color_No and C' +
        'ostingPriceLibrary.CostingSeason=CostingXXZLSlogs.CostingSeason '
      'Where 1=1'
      'and CostingPriceListNew.Round =:Round'
      'and CostingPriceListNew.SKU =:SKU'
      'and CostingPriceListNew.CostingSeason =:CostingSeason'
      'and CostingPriceListNew.Factory =:Factory'
      'and CostingXXZLSlogs.version =:version'
      '   union all'
      
        'Select CostingXXZLS.SKU,CostingXXZLS.Costingseason,CostingXXZLS.' +
        'Factory,CostingXXZLS.round,CostingXXZLS.no, null as version,99 a' +
        's Seq '
      
        '  ,CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Proces' +
        's_No,CostingXXZLS.NetUsage,CostingXXZLS.CutLoss,CostingXXZLS.Siz' +
        'eGrading,CostingXXZLS.SecondLabor'
      
        ',CostingXXZLS.SecondOverhead,CostingXXZLS.UserName,CostingXXZLS.' +
        'UserUpdateTime'
      
        '  ,CostingPriceLibrary.MaterialCost,CostingPriceLibrary.PriceOVR' +
        ' '
      'From CostingXXZLS '
      
        'left join CostingPriceListNew on CostingPriceListNew.Round=Costi' +
        'ngXXZLS.Round '
      '       and CostingPriceListNew.SKU=CostingXXZLS.SKU '
      
        '       and CostingPriceListNew.CostingSeason=CostingXXZLS.Costin' +
        'gSeason '
      '       and CostingPriceListNew.Factory=CostingXXZLS.Factory '
      
        'left join CostingXXZLSlogs on CostingXXZLSlogs.Round=CostingXXZL' +
        'S.Round '
      
        '       and CostingXXZLSlogs.SKU=CostingXXZLS.SKU and CostingXXZL' +
        'Slogs.CostingSeason=CostingXXZLS.CostingSeason '
      
        '       and CostingXXZLSlogs.Factory=CostingXXZLS.Factory and Cos' +
        'tingXXZLSlogs.No=CostingXXZLS.No'
      '       and CostingXXZLSlogs.version =:version'
      
        'left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=Cost' +
        'ingXXZLSlogs.MTL_No  '
      
        'and CostingPriceLibrary.Color_No=CostingXXZLSlogs.Color_No and C' +
        'ostingPriceLibrary.CostingSeason=CostingXXZLSlogs.CostingSeason '
      'Where 1=1'
      'and CostingPriceListNew.Round =:Round'
      'and CostingPriceListNew.SKU =:SKU'
      'and CostingPriceListNew.CostingSeason =:CostingSeason'
      'and CostingPriceListNew.Factory =:Factory'
      'and CostingXXZLSlogs.no is not null'
      
        'group by CostingXXZLS.SKU,CostingXXZLS.Costingseason,CostingXXZL' +
        'S.Factory,CostingXXZLS.round,CostingXXZLS.no'
      
        '  ,CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Proces' +
        's_No,CostingXXZLS.NetUsage,CostingXXZLS.CutLoss,CostingXXZLS.Siz' +
        'eGrading,CostingXXZLS.SecondLabor'
      
        '  ,CostingXXZLS.SecondOverhead,CostingXXZLS.UserName,CostingXXZL' +
        'S.UserUpdateTime'
      
        '  ,CostingPriceLibrary.MaterialCost,CostingPriceLibrary.PriceOVR' +
        ' '
      ')A'
      'order by no,Seq')
    Left = 564
    Top = 400
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Round'
        ParamType = ptUnknown
        Size = 26
      end
      item
        DataType = ftFixedChar
        Name = 'SKU'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'CostingSeason'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'Factory'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftInteger
        Name = 'Version'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'version'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'Round'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SKU'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CostingSeason'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'Factory'
        ParamType = ptUnknown
      end>
    object Qry_CBDLogSKU: TStringField
      FieldName = 'SKU'
      Origin = 'DB.CostingXXZLSLogs.SKU'
      FixedChar = True
      Size = 10
    end
    object Qry_CBDLogCostingSeason: TStringField
      FieldName = 'CostingSeason'
      Origin = 'DB.CostingXXZLSLogs.CostingSeason'
      FixedChar = True
      Size = 4
    end
    object Qry_CBDLogFactory: TStringField
      FieldName = 'Factory'
      Origin = 'DB.CostingXXZLSLogs.Factory'
      FixedChar = True
      Size = 10
    end
    object Qry_CBDLogRound: TStringField
      FieldName = 'Round'
      Origin = 'DB.CostingXXZLSLogs.Round'
      FixedChar = True
      Size = 25
    end
    object Qry_CBDLogVersion: TIntegerField
      FieldName = 'Version'
      Origin = 'DB.CostingXXZLSLogs.Version'
    end
    object Qry_CBDLogNo: TIntegerField
      FieldName = 'No'
      Origin = 'DB.CostingXXZLSLogs.No'
    end
    object Qry_CBDLogSeq: TIntegerField
      FieldName = 'Seq'
      Origin = 'DB.CostingXXZLSLogs.Seq'
    end
    object Qry_CBDLogMTL_No: TIntegerField
      FieldName = 'MTL_No'
      Origin = 'DB.CostingXXZLSLogs.MTL_No'
    end
    object Qry_CBDLogColor_No: TIntegerField
      FieldName = 'Color_No'
      Origin = 'DB.CostingXXZLSLogs.Color_No'
    end
    object Qry_CBDLogProcess_No: TIntegerField
      FieldName = 'Process_No'
      Origin = 'DB.CostingXXZLSLogs.Process_No'
    end
    object Qry_CBDLogMaterialCost: TStringField
      FieldName = 'MaterialCost'
      FixedChar = True
      Size = 9
    end
    object Qry_CBDLogPriceOVR: TStringField
      FieldName = 'PriceOVR'
      FixedChar = True
      Size = 8
    end
    object Qry_CBDLogNetUsage: TStringField
      FieldName = 'NetUsage'
      Origin = 'DB.CostingXXZLSLogs.NetUsage'
      FixedChar = True
      Size = 9
    end
    object Qry_CBDLogCutLoss: TStringField
      FieldName = 'CutLoss'
      Origin = 'DB.CostingXXZLSLogs.CutLoss'
      FixedChar = True
      Size = 5
    end
    object Qry_CBDLogSizeGrading: TStringField
      FieldName = 'SizeGrading'
      Origin = 'DB.CostingXXZLSLogs.SizeGrading'
      FixedChar = True
      Size = 5
    end
    object Qry_CBDLogSecondLabor: TStringField
      FieldName = 'SecondLabor'
      Origin = 'DB.CostingXXZLSLogs.SecondLabor'
      FixedChar = True
      Size = 9
    end
    object Qry_CBDLogSecondOverhead: TStringField
      FieldName = 'SecondOverhead'
      Origin = 'DB.CostingXXZLSLogs.SecondOverhead'
      FixedChar = True
      Size = 9
    end
    object Qry_CBDLogUserName: TStringField
      FieldName = 'UserName'
      Origin = 'DB.CostingXXZLSLogs.UserName'
      FixedChar = True
      Size = 10
    end
    object Qry_CBDLogUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
      Origin = 'DB.CostingXXZLSLogs.UserUpdateTime'
    end
  end
  object DS_Qry_CBDComparing: TDataSource
    DataSet = Qry_CBDComparing
    Left = 700
    Top = 400
  end
  object Qry_CBDComparing: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CostingPriceListNew')
    Left = 700
    Top = 336
  end
  object Comparing: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 740
    Top = 336
  end
  object DSCP1: TDataSource
    DataSet = Comparing
    Left = 748
    Top = 400
  end
  object TargetA: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 796
    Top = 336
  end
  object DSCP2: TDataSource
    DataSet = TargetA
    Left = 804
    Top = 400
  end
  object TargetAS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 844
    Top = 336
  end
  object DSCP3: TDataSource
    DataSet = TargetAS
    Left = 844
    Top = 400
  end
  object TemQry: TQuery
    DatabaseName = 'DB'
    Left = 36
    Top = 536
  end
  object Qry_PriceListLOG: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'WITH LogAgg AS ('
      
        '  SELECT   CostingSeason, Round, SKU, Factory, Version, COUNT(*)' +
        ' AS LogCount'
      ' FROM CostingXXZLSlogs'
      '  GROUP BY CostingSeason, Round, SKU, Factory, Version'
      ')'
      'Select CostingPLNLog.*,ISNULL(l.LogCount, 0) AS LogCount'
      
        #9',CostingPriceListNew.UseRrady,CostingPriceListNew.CBDReadyDate,' +
        'CostingPriceListNew.UserComplete,CostingPriceListNew.CBDcomplete' +
        'Date'
      'from CostingPLNLog'
      
        'left join CostingPriceListNew on CostingPriceListNew.Round=Costi' +
        'ngPLNLog.Round '
      '       and CostingPriceListNew.SKU=CostingPLNLog.SKU '
      
        '       and CostingPriceListNew.CostingSeason=CostingPLNLog.Costi' +
        'ngSeason '
      '       and CostingPriceListNew.Factory=CostingPLNLog.Factory '
      
        'LEFT JOIN LogAgg l   ON l.Round = CostingPLNLog.Round AND l.SKU ' +
        '= CostingPLNLog.SKU AND l.CostingSeason = CostingPLNLog.CostingS' +
        'eason'
      
        ' AND l.Factory = CostingPLNLog.Factory AND l.Version = CostingPL' +
        'NLog.Version'
      'Where 1=1'
      'and CostingPLNLog.Round  like '#39'R1%'#39
      'and CostingPLNLog.CostingSeason  like '#39'25F%'#39
      'and CostingPLNLog.Factory = '#39'LYN-9Z'#39
      'and CostingPLNLog.UserName like '#39'51267%'#39
      'and CostingPriceListNew.SKU='#39'A13876X'#39)
    Left = 564
    Top = 304
    object Qry_PriceListLOGCostingSeason: TStringField
      FieldName = 'CostingSeason'
      Origin = 'DB.CostingPLNLog.CostingSeason'
      FixedChar = True
      Size = 4
    end
    object Qry_PriceListLOGRound: TStringField
      FieldName = 'Round'
      Origin = 'DB.CostingPLNLog.Round'
      FixedChar = True
      Size = 25
    end
    object Qry_PriceListLOGSKU: TStringField
      FieldName = 'SKU'
      Origin = 'DB.CostingPLNLog.SKU'
      FixedChar = True
      Size = 10
    end
    object Qry_PriceListLOGFactory: TStringField
      FieldName = 'Factory'
      Origin = 'DB.CostingPLNLog.Factory'
      FixedChar = True
      Size = 10
    end
    object Qry_PriceListLOGVersion: TIntegerField
      FieldName = 'Version'
      Origin = 'DB.CostingPLNLog.Version'
    end
    object Qry_PriceListLOGFOB: TStringField
      FieldName = 'FOB'
      Origin = 'DB.CostingPLNLog.FOB'
      FixedChar = True
      Size = 6
    end
    object Qry_PriceListLOGTotalMaterialCost: TStringField
      FieldName = 'TotalMaterialCost'
      Origin = 'DB.CostingPLNLog.TotalMaterialCost'
      FixedChar = True
      Size = 9
    end
    object Qry_PriceListLOGLabor: TStringField
      FieldName = 'Labor'
      Origin = 'DB.CostingPLNLog.Labor'
      FixedChar = True
      Size = 6
    end
    object Qry_PriceListLOGOverhead: TStringField
      FieldName = 'Overhead'
      Origin = 'DB.CostingPLNLog.Overhead'
      FixedChar = True
      Size = 6
    end
    object Qry_PriceListLOGC2BL: TStringField
      FieldName = 'C2BL'
      Origin = 'DB.CostingPLNLog.C2BL'
      FixedChar = True
      Size = 6
    end
    object Qry_PriceListLOGC2BO: TStringField
      FieldName = 'C2BO'
      Origin = 'DB.CostingPLNLog.C2BO'
      FixedChar = True
      Size = 6
    end
    object Qry_PriceListLOGSecondLabor: TStringField
      FieldName = 'SecondLabor'
      Origin = 'DB.CostingPLNLog.SecondLabor'
      FixedChar = True
      Size = 9
    end
    object Qry_PriceListLOGSecondOverhead: TStringField
      FieldName = 'SecondOverhead'
      Origin = 'DB.CostingPLNLog.SecondOverhead'
      FixedChar = True
      Size = 9
    end
    object Qry_PriceListLOGOHRed_25H: TStringField
      FieldName = 'OHRed_25H'
      Origin = 'DB.CostingPLNLog.OHRed_25H'
      FixedChar = True
      Size = 9
    end
    object Qry_PriceListLOGCostMitigation: TStringField
      FieldName = 'CostMitigation'
      Origin = 'DB.CostingPLNLog.CostMitigation'
      FixedChar = True
      Size = 7
    end
    object Qry_PriceListLOGProfit: TStringField
      FieldName = 'Profit'
      Origin = 'DB.CostingPLNLog.Profit'
      FixedChar = True
      Size = 9
    end
    object Qry_PriceListLOGProfitRate: TFloatField
      FieldName = 'ProfitRate'
      Origin = 'DB.CostingPLNLog.ProfitRate'
    end
    object Qry_PriceListLOGMoldCharge: TCurrencyField
      FieldName = 'MoldCharge'
      Origin = 'DB.CostingPLNLog.MoldCharge'
      currency = False
    end
    object Qry_PriceListLOGUseRrady: TStringField
      FieldName = 'UseRrady'
      FixedChar = True
      Size = 10
    end
    object Qry_PriceListLOGCBDReadyDate: TDateTimeField
      FieldName = 'CBDReadyDate'
    end
    object Qry_PriceListLOGUserComplete: TStringField
      FieldName = 'UserComplete'
      FixedChar = True
      Size = 10
    end
    object Qry_PriceListLOGCBDcompleteDate: TDateTimeField
      FieldName = 'CBDcompleteDate'
    end
    object Qry_PriceListLOGUserName: TStringField
      FieldName = 'UserName'
      Origin = 'DB.CostingPLNLog.UserName'
      FixedChar = True
      Size = 10
    end
    object Qry_PriceListLOGUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
      Origin = 'DB.CostingPLNLog.UserUpdateTime'
    end
    object Qry_PriceListLOGLogCount: TIntegerField
      FieldName = 'LogCount'
    end
  end
  object DS_PL: TDataSource
    DataSet = Qry_PriceListLOG
    Left = 564
    Top = 352
  end
  object Qry_List: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CostingMatLibrary.Material_Text,CostingProcessCost.*,Cost' +
        'ingXXZLS.GrossUsage,CostingXXZLS.UnitCost,CostingXXZLS.SecondLab' +
        'or,CostingXXZLS.SecondOverhead'
      
        ',CostingXXZLS.NetUsage,CostingXXZLS.CutLoss,CostingXXZLS.SizeGra' +
        'ding,CostingPriceLibrary.PriceOVR,CostingPriceLibrary.MaterialCo' +
        'st,CostingMatLibrary.T1Freight'
      'From CostingProcessCost'
      
        'left join CostingXXZLS on CostingXXZLS.SKU=CostingProcessCost.SK' +
        'U and CostingXXZLS.Round=CostingProcessCost.Round '
      
        'and CostingXXZLS.CostingSeason=CostingProcessCost.CostingSeason ' +
        'and CostingXXZLS.No=CostingProcessCost.No'
      
        'left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingX' +
        'XZLS.MTL_No'
      
        'left join CostingPriceLibrary on CostingMatLibrary.MTL_No=Costin' +
        'gXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Colo' +
        'r_No'
      'where CostingProcessCost.Process_No=1')
    Left = 196
    Top = 496
  end
  object ds1: TDataSource
    DataSet = Qry_List
    OnDataChange = DataSource4DataChange
    Left = 196
    Top = 552
  end
  object qry_IP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'Select *'
      'from costingprocessIP'
      'Where 1=2')
    UpdateObject = updtsql1
    Left = 420
    Top = 496
    object qry_IPProcess_No: TIntegerField
      FieldName = 'Process_No'
      Origin = 'DB.CostingProcessIP.Process_No'
    end
    object qry_IPFactory: TStringField
      FieldName = 'Factory'
      Origin = 'DB.CostingProcessIP.Factory'
      FixedChar = True
      Size = 10
    end
    object qry_IPPriceSeason: TStringField
      FieldName = 'PriceSeason'
      Origin = 'DB.CostingProcessIP.PriceSeason'
      FixedChar = True
      Size = 10
    end
    object qry_IPToolingCode: TStringField
      FieldName = 'ToolingCode'
      Origin = 'DB.CostingProcessIP.CostingSize'
      FixedChar = True
      Size = 40
    end
    object qry_IPCostingSize: TStringField
      FieldName = 'CostingSize'
      Origin = 'DB.CostingProcessIP.LaborCostPerLine'
      FixedChar = True
      Size = 10
    end
    object qry_IPModelName: TStringField
      FieldName = 'ModelName'
      Origin = 'DB.CostingProcessIP.CompoundingFee'
      FixedChar = True
      Size = 40
    end
    object qry_IPOverheadLevel: TStringField
      FieldName = 'OverheadLevel'
      Origin = 'DB.CostingProcessIP.C_WorkersPerLine'
      FixedChar = True
      Size = 15
    end
    object qry_IPCompoundsName: TStringField
      FieldName = 'CompoundsName'
      Origin = 'DB.CostingProcessIP.C_ShiftsPerDay'
      FixedChar = True
      Size = 40
    end
    object qry_IPColorCode: TStringField
      FieldName = 'ColorCode'
      Origin = 'DB.CostingProcessIP.C_ToolingNumberSets'
      FixedChar = True
      Size = 50
    end
    object qry_IPFinalComponentPrice: TCurrencyField
      FieldName = 'FinalComponentPrice'
      Origin = 'DB.CostingProcessIP.C_InjectionTime_sec'
      currency = False
    end
    object qry_IPComponentMaterialPriceWDR: TCurrencyField
      FieldName = 'ComponentMaterialPriceWDR'
      Origin = 'DB.CostingProcessIP.C_CuringTime_sec'
      currency = False
    end
    object qry_IPDirectLaborCost: TCurrencyField
      FieldName = 'DirectLaborCost'
      Origin = 'DB.CostingProcessIP.C_MEOF_sec'
      currency = False
    end
    object qry_IPOHCost: TCurrencyField
      FieldName = 'OHCost'
      Origin = 'DB.CostingProcessIP.C_MoldRelAirBlow_sec'
      currency = False
    end
    object qry_IPApprovedModelDR: TCurrencyField
      FieldName = 'ApprovedModelDR'
      Origin = 'DB.CostingProcessIP.C_InjectorMoveMoldOp_sec'
      currency = False
    end
    object qry_IPComponentMaterialPrice: TCurrencyField
      FieldName = 'ComponentMaterialPrice'
      Origin = 'DB.CostingProcessIP.C_TTCycletime_sec'
      currency = False
    end
    object qry_IPCostingweight: TCurrencyField
      FieldName = 'Costingweight'
      Origin = 'DB.CostingProcessIP.Shifts'
      currency = False
    end
    object qry_IPFinalMaterialPrice: TCurrencyField
      FieldName = 'FinalMaterialPrice'
      Origin = 'DB.CostingProcessIP.WorkingHoursPerShift'
      currency = False
    end
    object qry_IPFormulaPrice: TCurrencyField
      FieldName = 'FormulaPrice'
      Origin = 'DB.CostingProcessIP.ToolingNumberSets'
      currency = False
    end
    object qry_IPFreightCost: TCurrencyField
      FieldName = 'FreightCost'
      Origin = 'DB.CostingProcessIP.Efficiency'
      currency = False
    end
    object qry_IPLaborCostPerLine: TCurrencyField
      FieldName = 'LaborCostPerLine'
      Origin = 'DB.CostingProcessIP.LaborCostPerLine'
      DisplayFormat = '0.00'
    end
    object qry_IPCompoundingFee: TCurrencyField
      FieldName = 'CompoundingFee'
      Origin = 'DB.CostingProcessIP.CompoundingFee'
      DisplayFormat = '0.00'
    end
    object qry_IPLaborCostPerLine_F: TStringField
      FieldName = 'LaborCostPerLine_F'
      Origin = 'DB.CostingProcessIP.LaborCostPerLine_F'
      FixedChar = True
      Size = 30
    end
    object qry_IPCompoundingFee_F: TStringField
      FieldName = 'CompoundingFee_F'
      Origin = 'DB.CostingProcessIP.CompoundingFee_F'
      FixedChar = True
      Size = 30
    end
    object qry_IPC_WorkersPerLine: TIntegerField
      FieldName = 'C_WorkersPerLine'
      Origin = 'DB.CostingProcessIP.PIM1_Cycletime_sec'
    end
    object qry_IPC_ShiftsPerDay: TIntegerField
      FieldName = 'C_ShiftsPerDay'
      Origin = 'DB.CostingProcessIP.PIM1_Output'
    end
    object qry_IPC_ToolingNumberSets: TIntegerField
      FieldName = 'C_ToolingNumberSets'
      Origin = 'DB.CostingProcessIP.PIM1_TTLaborCost'
    end
    object qry_IPC_InjectionTime_sec: TIntegerField
      FieldName = 'C_InjectionTime_sec'
      Origin = 'DB.CostingProcessIP.PIM1_LaborPerPR'
    end
    object qry_IPC_CuringTime_sec: TIntegerField
      FieldName = 'C_CuringTime_sec'
      Origin = 'DB.CostingProcessIP.PIM2_'
    end
    object qry_IPC_MEOF_sec: TIntegerField
      FieldName = 'C_MEOF_sec'
      Origin = 'DB.CostingProcessIP.PIM2_Cycletime_sec'
    end
    object qry_IPC_MoldRelAirBlow_sec: TIntegerField
      FieldName = 'C_MoldRelAirBlow_sec'
      Origin = 'DB.CostingProcessIP.PIM2_Output'
    end
    object qry_IPC_InjectorMoveMoldOp_sec: TIntegerField
      FieldName = 'C_InjectorMoveMoldOp_sec'
      Origin = 'DB.CostingProcessIP.PIM2_TTLaborCost'
    end
    object qry_IPC_TTCycletime_sec: TIntegerField
      FieldName = 'C_TTCycletime_sec'
      Origin = 'DB.CostingProcessIP.PIM2_LaborPerPR'
    end
    object qry_IPShifts: TIntegerField
      FieldName = 'Shifts'
      Origin = 'DB.CostingProcessIP.DirectLaborCost'
    end
    object qry_IPWorkingHoursPerShift: TCurrencyField
      FieldName = 'WorkingHoursPerShift'
      Origin = 'DB.CostingProcessIP.PIM_outputPlinePday'
      currency = False
    end
    object qry_IPToolingNumberSets: TIntegerField
      FieldName = 'ToolingNumberSets'
      Origin = 'DB.CostingProcessIP.TotalOH'
    end
    object qry_IPEfficiency: TCurrencyField
      FieldName = 'Efficiency'
      Origin = 'DB.CostingProcessIP.OverheadLevel'
      currency = False
    end
    object qry_IPPPL: TIntegerField
      FieldName = 'PPL'
      Origin = 'DB.CostingProcessIP.OHCost'
    end
    object qry_IPPIM1_: TCurrencyField
      FieldName = 'PIM1_'
      Origin = 'DB.CostingProcessIP.ColorCode'
      currency = False
    end
    object qry_IPPIM1_Cycletime_sec: TIntegerField
      FieldName = 'PIM1_Cycletime_sec'
      Origin = 'DB.CostingProcessIP.CompoundsName'
    end
    object qry_IPPIM1_Output: TStringField
      FieldName = 'PIM1_Output'
      Origin = 'DB.CostingProcessIP.PIM1_Output'
      FixedChar = True
      Size = 50
    end
    object qry_IPPIM1_TTLaborCost: TStringField
      FieldName = 'PIM1_TTLaborCost'
      Origin = 'DB.CostingProcessIP.FreightCost'
      FixedChar = True
      Size = 30
    end
    object qry_IPPIM1_LaborPerPR: TStringField
      FieldName = 'PIM1_LaborPerPR'
      Origin = 'DB.CostingProcessIP.FinalMaterialPrice'
      FixedChar = True
      Size = 30
    end
    object qry_IPPIM2_: TCurrencyField
      FieldName = 'PIM2_'
      Origin = 'DB.CostingProcessIP.ModelName'
      currency = False
    end
    object qry_IPPIM2_Cycletime_sec: TIntegerField
      FieldName = 'PIM2_Cycletime_sec'
      Origin = 'DB.CostingProcessIP.ToolingCode'
    end
    object qry_IPPIM2_Output: TStringField
      FieldName = 'PIM2_Output'
      Origin = 'DB.CostingProcessIP.PIM2_Output'
      FixedChar = True
      Size = 50
    end
    object qry_IPPIM2_TTLaborCost: TStringField
      FieldName = 'PIM2_TTLaborCost'
      Origin = 'DB.CostingProcessIP.ComponentMaterialPrice'
      FixedChar = True
      Size = 30
    end
    object qry_IPPIM2_LaborPerPR: TStringField
      FieldName = 'PIM2_LaborPerPR'
      Origin = 'DB.CostingProcessIP.ComponentMaterialPriceWDR'
      FixedChar = True
      Size = 30
    end
    object qry_IPPIM_outputPlinePday: TCurrencyField
      FieldName = 'PIM_outputPlinePday'
      Origin = 'DB.CostingProcessIP.ApprovedModelDR'
      currency = False
    end
    object qry_IPTotalOH: TCurrencyField
      FieldName = 'TotalOH'
      Origin = 'DB.CostingProcessIP.FinalComponentPrice'
      currency = False
    end
    object qry_IPUserName: TStringField
      FieldName = 'UserName'
      Origin = 'DB.CostingProcessIP.UserName'
      FixedChar = True
      Size = 10
    end
    object qry_IPUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
      Origin = 'DB.CostingProcessIP.UserUpdateTime'
    end
  end
  object ds2: TDataSource
    DataSet = qry_IP
    Left = 420
    Top = 544
  end
  object updtsql1: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingProcessIP'
      'set'
      '  Process_No = :Process_No,'
      '  Factory = :Factory,'
      '  PriceSeason = :PriceSeason,'
      '  ToolingCode = :ToolingCode,'
      '  CostingSize = :CostingSize,'
      '  ModelName = :ModelName,'
      '  OverheadLevel = :OverheadLevel,'
      '  CompoundsName = :CompoundsName,'
      '  ColorCode = :ColorCode,'
      '  FinalComponentPrice = :FinalComponentPrice,'
      '  ComponentMaterialPriceWDR = :ComponentMaterialPriceWDR,'
      '  DirectLaborCost = :DirectLaborCost,'
      '  OHCost = :OHCost,'
      '  ApprovedModelDR = :ApprovedModelDR,'
      '  ComponentMaterialPrice = :ComponentMaterialPrice,'
      '  Costingweight = :Costingweight,'
      '  FinalMaterialPrice = :FinalMaterialPrice,'
      '  FormulaPrice = :FormulaPrice,'
      '  FreightCost = :FreightCost,'
      '  CompoundingFee = :CompoundingFee,'
      '  LaborCostPerLine = :LaborCostPerLine,'
      '  LaborCostPerLine_F = :LaborCostPerLine_F,'
      '  CompoundingFee_F = :CompoundingFee_F,'
      '  C_WorkersPerLine = :C_WorkersPerLine,'
      '  C_ShiftsPerDay = :C_ShiftsPerDay,'
      '  C_ToolingNumberSets = :C_ToolingNumberSets,'
      '  C_InjectionTime_sec = :C_InjectionTime_sec,'
      '  C_CuringTime_sec = :C_CuringTime_sec,'
      '  C_MEOF_sec = :C_MEOF_sec,'
      '  C_MoldRelAirBlow_sec = :C_MoldRelAirBlow_sec,'
      '  C_InjectorMoveMoldOp_sec = :C_InjectorMoveMoldOp_sec,'
      '  C_TTCycletime_sec = :C_TTCycletime_sec,'
      '  Shifts = :Shifts,'
      '  WorkingHoursPerShift = :WorkingHoursPerShift,'
      '  ToolingNumberSets = :ToolingNumberSets,'
      '  Efficiency = :Efficiency,'
      '  PPL = :PPL,'
      '  PIM1_ = :PIM1_,'
      '  PIM1_Cycletime_sec = :PIM1_Cycletime_sec,'
      '  PIM1_Output = :PIM1_Output,'
      '  PIM1_TTLaborCost = :PIM1_TTLaborCost,'
      '  PIM1_LaborPerPR = :PIM1_LaborPerPR,'
      '  PIM2_ = :PIM2_,'
      '  PIM2_Cycletime_sec = :PIM2_Cycletime_sec,'
      '  PIM2_Output = :PIM2_Output,'
      '  PIM2_TTLaborCost = :PIM2_TTLaborCost,'
      '  PIM2_LaborPerPR = :PIM2_LaborPerPR,'
      '  PIM_outputPlinePday = :PIM_outputPlinePday,'
      '  TotalOH = :TotalOH,'
      '  UserName = :UserName,'
      '  UserUpdateTime = getdate()'
      'where'
      '  Process_No = :Process_No and'
      '  Factory = :Factory')
    InsertSQL.Strings = (
      'insert into CostingProcessIP'
      
        '  (Process_No, Factory, PriceSeason, ToolingCode, CostingSize, M' +
        'odelName, '
      
        '   OverheadLevel, CompoundsName, ColorCode, FinalComponentPrice,' +
        ' '
      'ComponentMaterialPriceWDR, '
      
        '   DirectLaborCost, OHCost, ApprovedModelDR, ComponentMaterialPr' +
        'ice, '
      'Costingweight, '
      
        '   FinalMaterialPrice, FormulaPrice, FreightCost, CompoundingFee' +
        ', LaborCostPerLine, '
      
        '   LaborCostPerLine_F, CompoundingFee_F, C_WorkersPerLine, C_Shi' +
        'ftsPerDay, '
      
        '   C_ToolingNumberSets, C_InjectionTime_sec, C_CuringTime_sec, C' +
        '_MEOF_sec, '
      
        '   C_MoldRelAirBlow_sec, C_InjectorMoveMoldOp_sec, C_TTCycletime' +
        '_sec, Shifts, '
      
        '   WorkingHoursPerShift, ToolingNumberSets, Efficiency, PPL, PIM' +
        '1_, '
      'PIM1_Cycletime_sec, '
      '   PIM1_Output, PIM1_TTLaborCost, PIM1_LaborPerPR, PIM2_, '
      'PIM2_Cycletime_sec, '
      
        '   PIM2_Output, PIM2_TTLaborCost, PIM2_LaborPerPR, PIM_outputPli' +
        'nePday, '
      '   TotalOH, UserName, UserUpdateTime)'
      'values'
      
        '  (:Process_No, :Factory, :PriceSeason, :ToolingCode, :CostingSi' +
        'ze, :ModelName, '
      
        '   :OverheadLevel, :CompoundsName, :ColorCode, :FinalComponentPr' +
        'ice, '
      ':ComponentMaterialPriceWDR, '
      
        '   :DirectLaborCost, :OHCost, :ApprovedModelDR, :ComponentMateri' +
        'alPrice, '
      
        '   :Costingweight, :FinalMaterialPrice, :FormulaPrice, :FreightC' +
        'ost, :CompoundingFee, '
      
        '   :LaborCostPerLine, :LaborCostPerLine_F, :CompoundingFee_F, :C' +
        '_WorkersPerLine, '
      
        '   :C_ShiftsPerDay, :C_ToolingNumberSets, :C_InjectionTime_sec, ' +
        ':C_CuringTime_sec, '
      
        '   :C_MEOF_sec, :C_MoldRelAirBlow_sec, :C_InjectorMoveMoldOp_sec' +
        ', '
      ':C_TTCycletime_sec, '
      
        '   :Shifts, :WorkingHoursPerShift, :ToolingNumberSets, :Efficien' +
        'cy, :PPL, '
      
        '   :PIM1_, :PIM1_Cycletime_sec, :PIM1_Output, :PIM1_TTLaborCost,' +
        ' '
      ':PIM1_LaborPerPR, '
      
        '   :PIM2_, :PIM2_Cycletime_sec, :PIM2_Output, :PIM2_TTLaborCost,' +
        ' '
      ':PIM2_LaborPerPR, '
      '   :PIM_outputPlinePday, :TotalOH, :UserName, getdate())')
    DeleteSQL.Strings = (
      'delete from CostingProcessIP'
      'where'
      '  Process_No = :OLD_Process_No and'
      '  Factory = :OLD_Factory')
    Left = 424
    Top = 600
  end
  object QueryProcess: TQuery
    OnCalcFields = QueryProcessCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CostingMatLibrary.Material_Text,CostingProcessCost.*,Cost' +
        'ingXXZLS.GrossUsage,CostingXXZLS.UnitCost,CostingXXZLS.SecondLab' +
        'or,CostingXXZLS.SecondOverhead'
      
        ',CostingXXZLS.NetUsage,CostingXXZLS.CutLoss,CostingXXZLS.SizeGra' +
        'ding,CostingPriceLibrary.PriceOVR,CostingPriceLibrary.MaterialCo' +
        'st,CostingMatLibrary.T1Freight'
      'From CostingProcessCost'
      
        'left join CostingXXZLS on CostingXXZLS.SKU=CostingProcessCost.SK' +
        'U and CostingXXZLS.Round=CostingProcessCost.Round '
      
        'and CostingXXZLS.CostingSeason=CostingProcessCost.CostingSeason ' +
        'and CostingXXZLS.No=CostingProcessCost.No'
      
        'left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingX' +
        'XZLS.MTL_No'
      
        'left join CostingPriceLibrary on CostingMatLibrary.MTL_No=Costin' +
        'gXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Colo' +
        'r_No'
      'where CostingProcessCost.Process_No=1')
    UpdateObject = UpdateSQL4
    Left = 252
    Top = 496
    object QueryProcessComponent: TStringField
      DisplayWidth = 18
      FieldName = 'Component'
      FixedChar = True
      Size = 40
    end
    object QueryProcessProcess_No: TIntegerField
      DisplayWidth = 10
      FieldName = 'Process_No'
    end
    object QueryProcessTooling: TStringField
      DisplayWidth = 25
      FieldName = 'Tooling'
      FixedChar = True
      Size = 25
    end
    object QueryProcessMaterialComments: TStringField
      DisplayWidth = 150
      FieldName = 'MaterialComments'
      FixedChar = True
      Size = 150
    end
    object QueryProcessColorQty: TIntegerField
      DisplayWidth = 10
      FieldName = 'ColorQty'
    end
    object QueryProcessColorQty_Neon: TIntegerField
      DisplayWidth = 10
      FieldName = 'ColorQty_Neon'
    end
    object QueryProcessGUMColor: TIntegerField
      DisplayWidth = 10
      FieldName = 'GUMColor'
    end
    object QueryProcessmoldsPperson: TIntegerField
      DisplayWidth = 10
      FieldName = 'moldsPperson'
    end
    object QueryProcesspairPmold: TIntegerField
      DisplayWidth = 10
      FieldName = 'pairPmold'
    end
    object QueryProcessPCsPPair: TIntegerField
      DisplayWidth = 10
      FieldName = 'PCsPPair'
    end
    object QueryProcessTurnOverRate: TIntegerField
      DisplayWidth = 10
      FieldName = 'TurnOverRate'
    end
    object QueryProcessSecondLF: TStringField
      DisplayWidth = 40
      FieldName = 'SecondLF'
      FixedChar = True
      Size = 40
    end
    object QueryProcessSecondOF: TStringField
      DisplayWidth = 40
      FieldName = 'SecondOF'
      FixedChar = True
      Size = 40
    end
    object QueryProcessRound: TStringField
      FieldName = 'Round'
      FixedChar = True
      Size = 25
    end
    object QueryProcessSKU: TStringField
      DisplayWidth = 10
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object QueryProcessCostingSeason: TStringField
      DisplayWidth = 4
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object QueryProcessNo: TIntegerField
      DisplayWidth = 10
      FieldName = 'No'
    end
    object QueryProcessUserName: TStringField
      DisplayWidth = 10
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object QueryProcessUserUpdateTime: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UserUpdateTime'
    end
    object QueryProcessGrossUsage: TStringField
      FieldName = 'GrossUsage'
      FixedChar = True
      Size = 9
    end
    object QueryProcessUnitCost: TStringField
      FieldName = 'UnitCost'
      FixedChar = True
      Size = 9
    end
    object QueryProcessFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object QueryProcessSecondLabor2: TStringField
      FieldName = 'SecondLabor'
      FixedChar = True
      Size = 9
    end
    object QueryProcessSecondOverhead2: TStringField
      FieldName = 'SecondOverhead'
      FixedChar = True
      Size = 9
    end
    object QueryProcessSecondLabor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SecondLabor_auto'
      Calculated = True
    end
    object QueryProcessSecondOverhead: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SecondOverhead_auto'
      Calculated = True
    end
    object QueryProcessNetUsage: TStringField
      FieldName = 'NetUsage'
      FixedChar = True
      Size = 9
    end
    object QueryProcessCutLoss: TStringField
      FieldName = 'CutLoss'
      FixedChar = True
      Size = 5
    end
    object QueryProcessSizeGrading: TStringField
      FieldName = 'SizeGrading'
      FixedChar = True
      Size = 5
    end
    object QueryProcessPriceOVR: TStringField
      FieldName = 'PriceOVR'
      FixedChar = True
      Size = 8
    end
    object QueryProcessMaterialCost: TStringField
      FieldName = 'MaterialCost'
      FixedChar = True
      Size = 9
    end
    object QueryProcessT1Freight: TFloatField
      FieldName = 'T1Freight'
    end
  end
  object QryPrint: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CostingPrintCost'
      'where 1=2')
    UpdateObject = updtsql2
    Left = 308
    Top = 496
    object QryPrintProcess_No: TIntegerField
      FieldName = 'Process_No'
      Origin = 'DB.CostingPrintCost.Process_No'
    end
    object QryPrintFactory: TStringField
      FieldName = 'Factory'
      Origin = 'DB.CostingPrintCost.Factory'
      FixedChar = True
      Size = 10
    end
    object QryPrintComponent: TStringField
      FieldName = 'Component'
      Origin = 'DB.CostingPrintCost.Component'
      FixedChar = True
      Size = 40
    end
    object QryPrintSR: TStringField
      FieldName = 'SR'
      Origin = 'DB.CostingPrintCost.SR'
      FixedChar = True
    end
    object QryPrintSeason: TStringField
      FieldName = 'Season'
      Origin = 'DB.CostingPrintCost.Season'
      FixedChar = True
      Size = 10
    end
    object QryPrintExRate: TIntegerField
      FieldName = 'ExRate'
      Origin = 'DB.CostingPrintCost.ExRate'
    end
    object QryPrintMinWage: TCurrencyField
      FieldName = 'MinWage'
      Origin = 'DB.CostingPrintCost.MinWage'
      currency = False
    end
    object QryPrintSegments: TIntegerField
      FieldName = 'Segments'
      Origin = 'DB.CostingPrintCost.Segments'
    end
    object QryPrintPiecePPair: TIntegerField
      FieldName = 'PiecePPair'
      Origin = 'DB.CostingPrintCost.PiecePPair'
    end
    object QryPrintPairPBoard: TIntegerField
      FieldName = 'PairPBoard'
      Origin = 'DB.CostingPrintCost.PairPBoard'
    end
    object QryPrintColors: TIntegerField
      FieldName = 'Colors'
      Origin = 'DB.CostingPrintCost.Colors'
    end
    object QryPrintPairsPMold: TIntegerField
      FieldName = 'PairsPMold'
      Origin = 'DB.CostingPrintCost.PairsPMold'
    end
    object QryPrintInkNGlue_No: TIntegerField
      FieldName = 'InkNGlue_No'
      Origin = 'DB.CostingPrintCost.InkNGlue_No'
    end
    object QryPrintOutputPrs: TIntegerField
      FieldName = 'OutputPrs'
      Origin = 'DB.CostingPrintCost.OutputPrs'
    end
    object QryPrintOutputPpl: TIntegerField
      FieldName = 'OutputPpl'
      Origin = 'DB.CostingPrintCost.OutputPpl'
    end
    object QryPrintMoldFee: TCurrencyField
      FieldName = 'MoldFee'
      Origin = 'DB.CostingPrintCost.MoldFee'
      currency = False
    end
    object QryPrintInkNGlueCost: TCurrencyField
      FieldName = 'InkNGlueCost'
      Origin = 'DB.CostingPrintCost.InkNGlueCost'
      currency = False
    end
    object QryPrintLaborCost: TCurrencyField
      FieldName = 'LaborCost'
      Origin = 'DB.CostingPrintCost.LaborCost'
      currency = False
    end
    object QryPrintLoss: TIntegerField
      FieldName = 'Loss'
      Origin = 'DB.CostingPrintCost.Loss'
    end
    object QryPrintCostPPair: TCurrencyField
      FieldName = 'CostPPair'
      Origin = 'DB.CostingPrintCost.CostPPair'
      currency = False
    end
    object QryPrintCBDCost: TCurrencyField
      FieldName = 'CBDCost'
      Origin = 'DB.CostingPrintCost.CBDCost'
      currency = False
    end
    object QryPrintTRF_PP_Name: TStringField
      FieldName = 'TRF_PP_Name'
      Origin = 'DB.CostingPrintCost.TRF_PP_Name'
      FixedChar = True
      Size = 15
    end
    object QryPrintTRF_PP_Price: TCurrencyField
      FieldName = 'TRF_PP_Price'
      Origin = 'DB.CostingPrintCost.TRF_PP_Price'
      currency = False
    end
    object QryPrintTRF_PP_CM: TCurrencyField
      FieldName = 'TRF_PP_CM'
      Origin = 'DB.CostingPrintCost.TRF_PP_CM'
      currency = False
    end
    object QryPrintTRF_PP_PRS: TIntegerField
      FieldName = 'TRF_PP_PRS'
      Origin = 'DB.CostingPrintCost.TRF_PP_PRS'
    end
    object QryPrintTRF_PP_M: TIntegerField
      FieldName = 'TRF_PP_M'
      Origin = 'DB.CostingPrintCost.TRF_PP_M'
    end
    object QryPrintTRF_PP_Cost: TCurrencyField
      FieldName = 'TRF_PP_Cost'
      Origin = 'DB.CostingPrintCost.TRF_PP_Cost'
      currency = False
    end
    object QryPrintREL_PP_Name: TStringField
      FieldName = 'REL_PP_Name'
      Origin = 'DB.CostingPrintCost.REL_PP_Name'
      FixedChar = True
      Size = 15
    end
    object QryPrintREL_PP_Price: TCurrencyField
      FieldName = 'REL_PP_Price'
      Origin = 'DB.CostingPrintCost.REL_PP_Price'
      currency = False
    end
    object QryPrintREL_PP_CM: TCurrencyField
      FieldName = 'REL_PP_CM'
      Origin = 'DB.CostingPrintCost.REL_PP_CM'
      currency = False
    end
    object QryPrintREL_PP_M: TIntegerField
      FieldName = 'REL_PP_M'
      Origin = 'DB.CostingPrintCost.REL_PP_M'
    end
    object QryPrintREL_PP_PRS: TIntegerField
      FieldName = 'REL_PP_PRS'
      Origin = 'DB.CostingPrintCost.REL_PP_PRS'
    end
    object QryPrintREL_PP_Cost: TCurrencyField
      FieldName = 'REL_PP_Cost'
      Origin = 'DB.CostingPrintCost.REL_PP_Cost'
      currency = False
    end
    object QryPrintUserName: TStringField
      FieldName = 'UserName'
      Origin = 'DB.CostingPrintCost.UserName'
      FixedChar = True
      Size = 10
    end
    object QryPrintUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
      Origin = 'DB.CostingPrintCost.UserUpdateTime'
    end
  end
  object ds3: TDataSource
    DataSet = QryPrint
    Left = 308
    Top = 544
  end
  object updtsql2: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingPrintCost'
      'set'
      '  Process_No = :Process_No,'
      '  Factory = :Factory,'
      '  Component = :Component,'
      '  SR = :SR,'
      '  Season = :Season,'
      '  ExRate = :ExRate,'
      '  MinWage = :MinWage,'
      '  Segments = :Segments,'
      '  PiecePPair = :PiecePPair,'
      '  PairPBoard = :PairPBoard,'
      '  Colors = :Colors,'
      '  PairsPMold = :PairsPMold,'
      '  InkNGlue_No = :InkNGlue_No,'
      '  OutputPrs = :OutputPrs,'
      '  OutputPpl = :OutputPpl,'
      '  MoldFee = :MoldFee,'
      '  InkNGlueCost = :InkNGlueCost,'
      '  LaborCost = :LaborCost,'
      '  Loss = :Loss,'
      '  CostPPair = :CostPPair,'
      '  CBDCost = :CBDCost,'
      '  TRF_PP_Name = :TRF_PP_Name,'
      '  TRF_PP_Price = :TRF_PP_Price,'
      '  TRF_PP_CM = :TRF_PP_CM,'
      '  TRF_PP_PRS = :TRF_PP_PRS,'
      '  TRF_PP_M = :TRF_PP_M,'
      '  TRF_PP_Cost = :TRF_PP_Cost,'
      '  REL_PP_Name = :REL_PP_Name,'
      '  REL_PP_Price = :REL_PP_Price,'
      '  REL_PP_CM = :REL_PP_CM,'
      '  REL_PP_PRS = :REL_PP_PRS,'
      '  REL_PP_M = :REL_PP_M,'
      '  REL_PP_Cost = :REL_PP_Cost,'
      '  UserName = :UserName,'
      '  UserUpdateTime =getdate()'
      'where'
      '  Process_No = :OLD_Process_No and'
      '  Factory = :OLD_Factory')
    InsertSQL.Strings = (
      ''
      '   insert into CostingPrintCost'
      
        '  (Process_No, Factory, Component, SR, Season, ExRate, MinWage, ' +
        'Segments, '
      
        '   PiecePPair, PairPBoard, Colors, PairsPMold, InkNGlue_No, Outp' +
        'utPrs, '
      
        '   OutputPpl, MoldFee, InkNGlueCost, LaborCost, Loss, CostPPair,' +
        ' CBDCost, '
      '   TRF_PP_Name, TRF_PP_Price, TRF_PP_CM, TRF_PP_PRS, TRF_PP_M, '
      'TRF_PP_Cost, '
      '   REL_PP_Name, REL_PP_Price, REL_PP_CM, REL_PP_PRS, REL_PP_M, '
      'REL_PP_Cost, '
      '   UserName, UserUpdateTime)'
      'values'
      
        '  (:Process_No, :Factory, :Component, :SR, :Season, :ExRate, :Mi' +
        'nWage, '
      
        '   :Segments, :PiecePPair, :PairPBoard, :Colors, :PairsPMold, :I' +
        'nkNGlue_No, '
      
        '   :OutputPrs, :OutputPpl, :MoldFee, :InkNGlueCost, :LaborCost, ' +
        ':Loss, '
      
        '   :CostPPair, :CBDCost, :TRF_PP_Name, :TRF_PP_Price, :TRF_PP_CM' +
        ', '
      ':TRF_PP_PRS, '
      
        '   :TRF_PP_M, :TRF_PP_Cost, :REL_PP_Name, :REL_PP_Price, :REL_PP' +
        '_CM, '
      ':REL_PP_PRS, '
      '   :REL_PP_M, :REL_PP_Cost, :UserName, getdate())')
    DeleteSQL.Strings = (
      'delete from CostingPrintCost'
      'where'
      '  Process_No = :OLD_Process_No and'
      '  Factory = :OLD_Factory')
    Left = 312
    Top = 592
  end
  object QryPrintP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CostingPrintCost_Pro'
      'where 1=2')
    UpdateObject = updtsql3
    Left = 364
    Top = 496
    object QryPrintPProcess_No: TIntegerField
      FieldName = 'Process_No'
      Origin = 'DB.CostingPrintCost_Pro.Process_No'
    end
    object QryPrintPFactory: TStringField
      FieldName = 'Factory'
      Origin = 'DB.CostingPrintCost_Pro.Factory'
      FixedChar = True
      Size = 10
    end
    object QryPrintPComponent: TStringField
      FieldName = 'Component'
      Origin = 'DB.CostingPrintCost_Pro.Component'
      FixedChar = True
      Size = 40
    end
    object QryPrintPSR: TStringField
      FieldName = 'SR'
      Origin = 'DB.CostingPrintCost_Pro.SR'
      FixedChar = True
    end
    object QryPrintPArea: TStringField
      FieldName = 'Area'
      Origin = 'DB.CostingPrintCost_Pro.Area'
      FixedChar = True
      Size = 10
    end
    object QryPrintPPCsPerScreen: TStringField
      FieldName = 'PCsPerScreen'
      Origin = 'DB.CostingPrintCost_Pro.PCsPerScreen'
      FixedChar = True
      Size = 5
    end
    object QryPrintPColors: TIntegerField
      FieldName = 'Colors'
      Origin = 'DB.CostingPrintCost_Pro.Colors'
    end
    object QryPrintPPCsPerPair: TIntegerField
      FieldName = 'PCsPerPair'
      Origin = 'DB.CostingPrintCost_Pro.PCsPerPair'
    end
    object QryPrintPCost: TCurrencyField
      FieldName = 'Cost'
      Origin = 'DB.CostingPrintCost_Pro.Cost'
      currency = False
    end
    object QryPrintPUserName: TStringField
      FieldName = 'UserName'
      Origin = 'DB.CostingPrintCost_Pro.UserName'
      FixedChar = True
      Size = 10
    end
    object QryPrintPUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
      Origin = 'DB.CostingPrintCost_Pro.UserUpdateTime'
    end
  end
  object ds4: TDataSource
    DataSet = QryPrintP
    Left = 364
    Top = 544
  end
  object updtsql3: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingPrintCost_Pro'
      'set'
      '  Process_No = :Process_No,'
      '  Factory = :Factory,'
      '  Component = :Component,'
      '  SR = :SR,'
      '  Area = :Area,'
      '  PCsPerScreen = :PCsPerScreen,'
      '  Colors = :Colors,'
      '  PCsPerPair = :PCsPerPair,'
      '  Cost = :Cost,'
      '  UserName = :UserName,'
      '  UserUpdateTime = getdate()'
      'where'
      '  Process_No = :OLD_Process_No and'
      '  Factory = :OLD_Factory')
    InsertSQL.Strings = (
      'insert into CostingPrintCost_Pro'
      
        '  (Process_No, Factory, Component, SR, Area, PCsPerScreen, Color' +
        's, PCsPerPair, '
      '   Cost, UserName, UserUpdateTime)'
      'values'
      
        '  (:Process_No, :Factory, :Component, :SR, :Area, :PCsPerScreen,' +
        ' :Colors, '
      '   :PCsPerPair, :Cost, :UserName, getdate())')
    DeleteSQL.Strings = (
      'delete from CostingPrintCost_Pro'
      'where'
      '  Process_No = :OLD_Process_No and'
      '  Factory = :OLD_Factory')
    Left = 360
    Top = 592
  end
end
