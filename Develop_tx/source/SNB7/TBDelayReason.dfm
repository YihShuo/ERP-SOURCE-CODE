object TBDelayReason1: TTBDelayReason1
  Left = 189
  Top = 218
  Width = 1727
  Height = 675
  Caption = 'TB DelayReason'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
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
    Width = 1711
    Height = 636
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1709
      Height = 634
      ActivePage = TabSheet4
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Cutting'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1701
          Height = 66
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 221
            Top = 20
            Width = 161
            Height = 32
            Caption = 'Cutting Ly do'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -27
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object BB6: TBitBtn
            Left = 151
            Top = 8
            Width = 46
            Height = 48
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BB6Click
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
          object BB5: TBitBtn
            Left = 106
            Top = 8
            Width = 47
            Height = 48
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BB5Click
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
          object BB4: TBitBtn
            Left = 59
            Top = 8
            Width = 47
            Height = 48
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BB4Click
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
          object BB1: TBitBtn
            Left = 11
            Top = 8
            Width = 49
            Height = 48
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BB1Click
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
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 66
          Width = 1701
          Height = 540
          Align = alClient
          DataSource = DS1
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
          Columns = <
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DP'
              Footers = <>
              Title.Alignment = taCenter
              Width = 32
              OnEditButtonClick = DBGridEh1Columns0EditButtonClick
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 159
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DR'
              Footers = <>
              Title.Alignment = taCenter
              Width = 39
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 186
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 197
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'TestNo'
              Footers = <>
              Title.Alignment = taCenter
              Width = 93
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Title.Alignment = taCenter
              Width = 71
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Serino'
              Footers = <>
              Title.Alignment = taCenter
              Width = 56
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              Title.Alignment = taCenter
              Width = 182
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Title.Alignment = taCenter
              Width = 63
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'WarehouseOK'
              Footers = <>
              Title.Alignment = taCenter
              Width = 164
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd'
              EditButtons = <>
              FieldName = 'CuttingPlan'
              Footers = <>
              Title.Alignment = taCenter
              Width = 110
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PlanQty'
              Footers = <>
              Title.Alignment = taCenter
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
              Width = 12
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Stitching'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1701
          Height = 66
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 221
            Top = 20
            Width = 179
            Height = 32
            Caption = 'Stitching Ly do'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -27
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object BB66: TBitBtn
            Left = 151
            Top = 8
            Width = 46
            Height = 48
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BB66Click
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
          object BB55: TBitBtn
            Left = 106
            Top = 8
            Width = 47
            Height = 48
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BB55Click
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
          object BB44: TBitBtn
            Left = 59
            Top = 8
            Width = 47
            Height = 48
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BB44Click
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
          object BB11: TBitBtn
            Left = 11
            Top = 8
            Width = 49
            Height = 48
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BB11Click
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
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 66
          Width = 1701
          Height = 540
          Align = alClient
          DataSource = DS3
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
          Columns = <
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DP'
              Footers = <>
              Title.Alignment = taCenter
              Width = 39
              OnEditButtonClick = DBGridEh2Columns0EditButtonClick
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 142
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DR'
              Footers = <>
              Title.Alignment = taCenter
              Width = 39
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 158
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 176
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'TestNo'
              Footers = <>
              Title.Alignment = taCenter
              Width = 93
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Title.Alignment = taCenter
              Width = 76
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Serino'
              Footers = <>
              Title.Alignment = taCenter
              Width = 75
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              Title.Alignment = taCenter
              Width = 182
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Title.Alignment = taCenter
              Width = 58
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'CuttingOK'
              Footers = <>
              Title.Alignment = taCenter
              Width = 147
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'SMatOK'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = 'WarehouseMTLOK'
              Width = 156
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd'
              EditButtons = <>
              FieldName = 'StitchingPlan'
              Footers = <>
              Title.Alignment = taCenter
              Width = 159
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PlanQty'
              Footers = <>
              Title.Alignment = taCenter
              Width = 84
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 260
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
              Title.Alignment = taCenter
              Width = 1
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Assemble'
        ImageIndex = 2
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1701
          Height = 66
          Align = alTop
          TabOrder = 0
          object Label3: TLabel
            Left = 221
            Top = 20
            Width = 193
            Height = 32
            Caption = 'Assemble Ly do'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -27
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object BB666: TBitBtn
            Left = 151
            Top = 8
            Width = 46
            Height = 48
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BB666Click
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
          object BB555: TBitBtn
            Left = 106
            Top = 8
            Width = 47
            Height = 48
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BB555Click
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
          object BB444: TBitBtn
            Left = 59
            Top = 8
            Width = 47
            Height = 48
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BB444Click
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
          object BB111: TBitBtn
            Left = 11
            Top = 8
            Width = 49
            Height = 48
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BB111Click
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
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 66
          Width = 1701
          Height = 540
          Align = alClient
          DataSource = DS4
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
          Columns = <
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DP'
              Footers = <>
              Title.Alignment = taCenter
              Width = 39
              OnEditButtonClick = DBGridEh3Columns0EditButtonClick
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 130
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'DR'
              Footers = <>
              Title.Alignment = taCenter
              Width = 39
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 180
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ReasonV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 187
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'TestNo'
              Footers = <>
              Title.Alignment = taCenter
              Width = 93
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Title.Alignment = taCenter
              Width = 76
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Serino'
              Footers = <>
              Title.Alignment = taCenter
              Width = 62
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              Title.Alignment = taCenter
              Width = 182
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Title.Alignment = taCenter
              Width = 60
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'StitchingOK'
              Footers = <>
              Title.Alignment = taCenter
              Width = 150
            end
            item
              Alignment = taCenter
              DisplayFormat = 'yyyy/MM/dd hh:mm'
              EditButtons = <>
              FieldName = 'AMatOK'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = 'WarehouseMTLOK'
              Width = 148
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'AssemblePlan'
              Footers = <>
              Title.Alignment = taCenter
              Width = 164
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PlanQty'
              Footers = <>
              Title.Alignment = taCenter
              Width = 69
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'PartV'
              Footers = <>
              Title.Alignment = taCenter
              Width = 241
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
              Title.Alignment = taCenter
              Width = 2
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Summary'
        ImageIndex = 3
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1701
          Height = 66
          Align = alTop
          TabOrder = 0
          object Label4: TLabel
            Left = 557
            Top = 12
            Width = 115
            Height = 32
            Caption = 'Summary'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -27
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 290
            Top = 16
            Width = 13
            Height = 13
            Caption = 'To'
          end
          object BitBtn4: TBitBtn
            Left = 435
            Top = 8
            Width = 49
            Height = 48
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn4Click
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
          object btnExcel: TBitBtn
            Left = 483
            Top = 8
            Width = 48
            Height = 48
            Hint = 'Modify Current'
            Caption = 'Excel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btnExcelClick
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
            Left = 24
            Top = 16
            Width = 17
            Height = 17
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
          object CheckBox2: TCheckBox
            Left = 24
            Top = 40
            Width = 81
            Height = 17
            Caption = 'TBs delayed'
            TabOrder = 3
          end
          object ComboBox1: TComboBox
            Left = 40
            Top = 12
            Width = 97
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = 'CuttingPlan'
            Items.Strings = (
              'CuttingPlan'
              'StitchingPlan'
              'AssemblyPlan')
          end
          object dtp1: TDateTimePicker
            Left = 202
            Top = 12
            Width = 87
            Height = 21
            Date = 41675.431051550920000000
            Format = 'yyyy/MM/dd'
            Time = 41675.431051550920000000
            TabOrder = 5
          end
          object CheckBox3: TCheckBox
            Left = 152
            Top = 16
            Width = 49
            Height = 17
            Caption = 'From'
            Checked = True
            State = cbChecked
            TabOrder = 6
          end
          object dtp2: TDateTimePicker
            Left = 306
            Top = 12
            Width = 87
            Height = 21
            Date = 41675.431051550920000000
            Format = 'yyyy/MM/dd'
            Time = 41675.431051550920000000
            TabOrder = 7
          end
        end
        object DBGridEh4: TDBGridEh
          Left = 0
          Top = 66
          Width = 1701
          Height = 540
          Align = alClient
          DataSource = DS5
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DP'
              Footers = <>
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'PartE'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'DR'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'ReasonE'
              Footers = <>
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'TestNo'
              Footers = <>
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'Serino'
              Footers = <>
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              Width = 190
            end
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'CuttingOk'
              Footers = <>
              Width = 160
            end
            item
              EditButtons = <>
              FieldName = 'StitchingOk'
              Footers = <>
              Width = 160
            end
            item
              EditButtons = <>
              FieldName = 'AssemblyOk'
              Footers = <>
              Width = 160
            end
            item
              EditButtons = <>
              FieldName = 'WarehouseMTLOK'
              Footers = <>
              Width = 160
            end
            item
              EditButtons = <>
              FieldName = 'CuttingPlan'
              Footers = <>
              Width = 160
            end
            item
              EditButtons = <>
              FieldName = 'StitchingPlan'
              Footers = <>
              Width = 160
            end
            item
              EditButtons = <>
              FieldName = 'AssemblyPlan'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'PlanQty'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'PartV'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
              Width = 50
            end>
        end
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 117
    Top = 204
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.WarehouseOK, main.CuttingPlan, SQplan.Qty AS PlanQty,'
      '  TBDelayReason.DP,TBDelayReason.DR,'
      '  TBDelayReason.PartE,TBDelayReason.PartV,'
      '  TBDelayReason.ReasonE,TBDelayReason.ReasonV,'#39'C'#39' GXLB FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeT' +
        'est.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK ' +
        'FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate()' +
        ', 111) AND ShoeTest.CutDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'C'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'order by   CuttingPlan,groups,serino'
      '')
    UpdateObject = UPDSQL1
    Left = 117
    Top = 252
    object Query1TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query1Groups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object Query1Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query1WarehouseOK: TDateTimeField
      FieldName = 'WarehouseOK'
    end
    object Query1CuttingPlan: TDateTimeField
      FieldName = 'CuttingPlan'
    end
    object Query1PlanQty: TFloatField
      FieldName = 'PlanQty'
    end
    object Query1DP: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object Query1DR: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object Query1PartE: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object Query1PartV: TStringField
      FieldName = 'PartV'
      FixedChar = True
      Size = 50
    end
    object Query1ReasonE: TStringField
      FieldName = 'ReasonE'
      FixedChar = True
      Size = 50
    end
    object Query1ReasonV: TStringField
      FieldName = 'ReasonV'
      FixedChar = True
      Size = 50
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
  end
  object UPDSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update ShoetestDelay'
      'Set'
      '  DP=:DP,'
      '  DR=:DR'
      'where'
      '  Testno = :OLD_Testno  and'
      '  GXLB = C')
    InsertSQL.Strings = (
      'Insert into ShoetestDelay'
      '   (Testno, DP, DR ,GXLB)'
      'Values'
      '   (:Testno, :DP, :DR ,:GXLB)')
    Left = 117
    Top = 284
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.WarehouseOK, main.CuttingPlan, SQplan.Qty AS PlanQty,'
      '  TBDelayReason.DP,TBDelayReason.DR,'
      '  TBDelayReason.PartE,TBDelayReason.PartV,'
      '  TBDelayReason.ReasonE,TBDelayReason.ReasonV,'#39'C'#39' GXLB FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeT' +
        'est.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK ' +
        'FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate()' +
        ', 111) AND ShoeTest.CutDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Reason.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reaso' +
        'n.YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'C'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'order by   CuttingPlan,groups,serino'
      '')
    Left = 69
    Top = 252
    object StringField1: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object IntegerField1: TIntegerField
      FieldName = 'Serino'
    end
    object StringField3: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object StringField4: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'WarehouseOK'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'CuttingPlan'
    end
    object FloatField1: TFloatField
      FieldName = 'PlanQty'
    end
    object StringField5: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object StringField6: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object StringField7: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'PartV'
      FixedChar = True
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'ReasonE'
      FixedChar = True
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'ReasonV'
      FixedChar = True
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 261
    Top = 204
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.CuttingOK,main.SMatOK,main.SMatGet, main.StitchingPlan, ' +
        'SQplan.Qty AS PlanQty ,'
      '  TBDelayReason.DP,TBDelayReason.DR,'
      '  TBDelayReason.PartE,TBDelayReason.PartV,'
      '  TBDelayReason.ReasonE,TBDelayReason.ReasonV,'#39'S'#39' GXLB FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.Cutdate AS CuttingOK,shoetest.S_mater' +
        'ial SMatOK,shoetest.StitchingPhuFinishDate SMatGet, ShoeTest.Sti' +
        'tchingDate_first AS StitchingPlan, ShoeTest.StitchingDate AS Sti' +
        'tchingOK FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETW' +
        'EEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, Get' +
        'Date(), 111) AND ShoeTest.StitchingDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts'
      
        '  WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitchi' +
        'ng Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper A' +
        'nd Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'S'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'order by   StitchingPlan,groups,serino'
      '')
    UpdateObject = UPDSQL3
    Left = 261
    Top = 252
    object Query3TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query3Groups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object Query3Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query3SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query3Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query3CuttingOK: TDateTimeField
      FieldName = 'CuttingOK'
    end
    object Query3SMatOK: TDateTimeField
      FieldName = 'SMatOK'
    end
    object Query3SMatGet: TDateTimeField
      FieldName = 'SMatGet'
    end
    object Query3StitchingPlan: TDateTimeField
      FieldName = 'StitchingPlan'
    end
    object Query3PlanQty: TFloatField
      FieldName = 'PlanQty'
    end
    object Query3DP: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object Query3DR: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object Query3PartE: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object Query3PartV: TStringField
      FieldName = 'PartV'
      FixedChar = True
      Size = 50
    end
    object Query3ReasonE: TStringField
      FieldName = 'ReasonE'
      FixedChar = True
      Size = 50
    end
    object Query3ReasonV: TStringField
      FieldName = 'ReasonV'
      FixedChar = True
      Size = 50
    end
    object Query3GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
  end
  object UPDSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'Update ShoetestDelay'
      'Set'
      '  DP=:DP,'
      '  DR=:DR'
      'where'
      '  Testno = :OLD_Testno  and'
      '  GXLB = C')
    InsertSQL.Strings = (
      'Insert into ShoetestDelay'
      '   (Testno, DP, DR ,GXLB)'
      'Values'
      '   (:Testno, :DP, :DR ,:GXLB)')
    Left = 261
    Top = 284
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 349
    Top = 204
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.StitchingOK,main.AMatOK,main.AMatGet, main.AssemblePlan,' +
        ' SQplan.Qty AS PlanQty,'
      '  TBDelayReason.DP,TBDelayReason.DR,'
      '  TBDelayReason.PartE,TBDelayReason.PartV,'
      '  TBDelayReason.ReasonE,TBDelayReason.ReasonV,'#39'A'#39' GXLB FROM ('
      ''
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.StitchingDate AS StitchingOK,shoetest' +
        '.insole_send AMatOk,shoetest.insole_get AMatGet, ShoeTest.Assemb' +
        'iyDate_first AS AssemblePlan, ShoeTest.Assemblecomplete AS Assem' +
        'bleOK FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.AssembiyDate_first, 111) BETWE' +
        'EN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetD' +
        'ate(), 111) AND ShoeTest.Assemblecomplete IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Up' +
        'per And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'A'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'order by   AssemblePlan,groups,serino'
      '')
    UpdateObject = UPDSQL4
    Left = 349
    Top = 252
    object Query4TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query4Groups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object Query4Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query4SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query4Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query4StitchingOK: TDateTimeField
      FieldName = 'StitchingOK'
    end
    object Query4AMatOK: TDateTimeField
      FieldName = 'AMatOK'
    end
    object Query4AMatGet: TDateTimeField
      FieldName = 'AMatGet'
    end
    object Query4AssemblePlan: TDateTimeField
      FieldName = 'AssemblePlan'
    end
    object Query4PlanQty: TFloatField
      FieldName = 'PlanQty'
    end
    object Query4DP: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object Query4DR: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object Query4PartE: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object Query4PartV: TStringField
      FieldName = 'PartV'
      FixedChar = True
      Size = 50
    end
    object Query4ReasonE: TStringField
      FieldName = 'ReasonE'
      FixedChar = True
      Size = 50
    end
    object Query4ReasonV: TStringField
      FieldName = 'ReasonV'
      FixedChar = True
      Size = 50
    end
    object Query4GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
  end
  object UPDSQL4: TUpdateSQL
    ModifySQL.Strings = (
      'Update ShoetestDelay'
      'Set'
      '  DP=:DP,'
      '  DR=:DR'
      'where'
      '  Testno = :OLD_Testno  and'
      '  GXLB = C')
    InsertSQL.Strings = (
      'Insert into ShoetestDelay'
      '   (Testno, DP, DR ,GXLB)'
      'Values'
      '   (:Testno, :DP, :DR ,:GXLB)')
    Left = 349
    Top = 284
  end
  object Query5: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select TestNo, Groups, Serino, SR,Stage,CuttingOk,StitchingOk,As' +
        'semblyOk,WarehouseMTLOK,CuttingPlan,StitchingPlan,AssemblyPlan,P' +
        'lanQty,DP,PartE,DR,ReasonV,GXLB'
      'from('
      ''
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, NULL as CuttingOk, NULL as StitchingOk, NULL as AssemblyOk, N' +
        'ULL as WarehouseMTLOK, main.CuttingPlan, NULL as StitchingPlan, ' +
        'NULL as AssemblyPlan, SQplan.Qty AS PlanQty,'
      
        '  TBDelayReason.DP, TBDelayReason.PartE, NULL AS DR, TBDelayReas' +
        'on.ReasonV,'#39'C'#39' GXLB FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeT' +
        'est.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK ' +
        'FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate()' +
        ', 111) AND ShoeTest.CutDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'C'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      ''
      ''
      'UNION ALL'
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.CuttingOK, NULL as StitchingOk, NULL as AssemblyOk, main' +
        '.SMatOK as WarehouseMTLOK, NULL as CuttingPlan, main.StitchingPl' +
        'an, NULL as AssemblyPlan, SQplan.Qty AS PlanQty ,'
      
        '  TBDelayReason.DP,TBDelayReason.PartE, TBDelayReason.DR, TBDela' +
        'yReason.ReasonV,'#39'S'#39' GXLB FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.Cutdate AS CuttingOK,shoetest.S_mater' +
        'ial SMatOK,shoetest.StitchingPhuFinishDate SMatGet, ShoeTest.Sti' +
        'tchingDate_first AS StitchingPlan, ShoeTest.StitchingDate AS Sti' +
        'tchingOK FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETW' +
        'EEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, Get' +
        'Date(), 111) AND ShoeTest.StitchingDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts'
      
        '  WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitchi' +
        'ng Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper A' +
        'nd Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'S'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      ''
      'UNION ALL'
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, NULL as CuttingOk, main.StitchingOK, NULL as AssemblyOk, main' +
        '.AMatOK as WarehouseMTLOK, NULL as CuttingPlan, Null as Stitchin' +
        'gPlan, main.AssemblePlan, SQplan.Qty AS PlanQty,'
      
        '  TBDelayReason.DP,TBDelayReason.PartE, TBDelayReason.DR,TBDelay' +
        'Reason.ReasonV,'#39'A'#39' GXLB FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.StitchingDate AS StitchingOK,shoetest' +
        '.insole_send AMatOk,shoetest.insole_get AMatGet, ShoeTest.Assemb' +
        'iyDate_first AS AssemblePlan, ShoeTest.Assemblecomplete AS Assem' +
        'bleOK FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.AssembiyDate_first, 111) BETWE' +
        'EN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetD' +
        'ate(), 111) AND ShoeTest.Assemblecomplete IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Up' +
        'per And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'A'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      ') as combined'
      
        'ORDER BY CuttingPlan, StitchingPlan, AssemblyPlan, Groups, Serin' +
        'o;'
      '')
    Left = 469
    Top = 252
    object StringField12: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object StringField13: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object IntegerField2: TIntegerField
      FieldName = 'Serino'
    end
    object StringField14: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object StringField15: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query5CuttingOk: TDateTimeField
      FieldName = 'CuttingOk'
    end
    object Query5StitchingOk: TDateTimeField
      FieldName = 'StitchingOk'
    end
    object Query5WarehouseMTLOK: TDateTimeField
      FieldName = 'WarehouseMTLOK'
    end
    object Query5CuttingPlan: TDateTimeField
      FieldName = 'CuttingPlan'
    end
    object Query5StitchingPlan: TDateTimeField
      FieldName = 'StitchingPlan'
    end
    object Query5AssemblyPlan: TDateTimeField
      FieldName = 'AssemblyPlan'
    end
    object FloatField2: TFloatField
      FieldName = 'PlanQty'
    end
    object StringField16: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object StringField18: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object Query5PartV: TStringField
      FieldName = 'PartV'
    end
    object StringField22: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object Query5AssemblyOk: TDateTimeField
      FieldName = 'AssemblyOk'
    end
    object Query5ReasonE: TStringField
      FieldName = 'ReasonE'
    end
  end
  object DS5: TDataSource
    DataSet = Query5
    Left = 469
    Top = 212
  end
end
