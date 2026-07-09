object ClearGiaCong: TClearGiaCong
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Gia Cong Clear'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet2: TTabSheet
      Caption = 'lamination_send'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 24
          Top = 16
          Width = 234
          Height = 37
          Caption = 'lamination_send'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit3: TEdit
          Left = 264
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button1: TButton
          Left = 576
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'lamination_send'
            Footers = <>
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'lamination_get'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 16
          Width = 209
          Height = 37
          Caption = 'lamination_get'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit4: TEdit
          Left = 240
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button2: TButton
          Left = 552
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'lamination_get'
            Footers = <>
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'BaoHe_send'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 16
          Top = 16
          Width = 193
          Height = 37
          Caption = 'BaoHe_send '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit5: TEdit
          Left = 208
          Top = 8
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button3: TButton
          Left = 520
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button3Click
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource5
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'BaoHe_send'
            Footers = <>
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'BaoHe_get'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 24
          Top = 16
          Width = 159
          Height = 37
          Caption = 'BaoHe_get'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit6: TEdit
          Left = 200
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button4: TButton
          Left = 520
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button4Click
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource6
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'BaoHe_get'
            Footers = <>
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'LiMao_Send'
      ImageIndex = 5
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 16
          Width = 179
          Height = 37
          Caption = 'LiMao_Send'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit7: TEdit
          Left = 208
          Top = 8
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button5: TButton
          Left = 520
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button5Click
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource7
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'LiMao_Send'
            Footers = <>
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'LiMao_Get'
      ImageIndex = 6
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 16
          Width = 156
          Height = 37
          Caption = 'LiMao_Get'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit8: TEdit
          Left = 176
          Top = 8
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button6: TButton
          Left = 488
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button6Click
        end
      end
      object DBGridEh8: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource8
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'LiMao_Get'
            Footers = <>
          end>
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'kietphong_Send'
      ImageIndex = 10
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label21: TLabel
          Left = 16
          Top = 16
          Width = 226
          Height = 37
          Caption = 'kietphong_send'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit13: TEdit
          Left = 248
          Top = 8
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button7: TButton
          Left = 560
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button7Click
        end
      end
      object DBGridEh13: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource13
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'kietphong_Send'
            Footers = <>
            Width = 142
          end>
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'kietphong_Get'
      ImageIndex = 11
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label22: TLabel
          Left = 16
          Top = 16
          Width = 208
          Height = 37
          Caption = 'kietphong_Get'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit14: TEdit
          Left = 232
          Top = 8
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button8: TButton
          Left = 544
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button8Click
        end
      end
      object DBGridEh14: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource14
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'kietphong_Get'
            Footers = <>
          end>
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Amico_Send'
      ImageIndex = 12
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label23: TLabel
          Left = 8
          Top = 16
          Width = 177
          Height = 37
          Caption = 'Amico_send'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit15: TEdit
          Left = 192
          Top = 16
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button9: TButton
          Left = 504
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button9Click
        end
      end
      object DBGridEh15: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource15
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'Amico_Send'
            Footers = <>
          end>
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Amico_Get'
      ImageIndex = 13
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label24: TLabel
          Left = 16
          Top = 16
          Width = 159
          Height = 37
          Caption = 'Amico_Get'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit16: TEdit
          Left = 184
          Top = 8
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button10: TButton
          Left = 496
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button10Click
        end
      end
      object DBGridEh16: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource16
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'Amico_Get'
            Footers = <>
          end>
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'Laser Thang Kim_Send'
      ImageIndex = 14
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label25: TLabel
          Left = 6
          Top = 15
          Width = 328
          Height = 37
          Caption = 'LaserThang Kim_Send'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit17: TEdit
          Left = 337
          Top = 8
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button11: TButton
          Left = 648
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button11Click
        end
      end
      object DBGridEh17: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource17
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 191
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'Laser_send'
            Footers = <>
            Width = 122
          end>
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Laser Thang Kim_Get'
      ImageIndex = 15
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label26: TLabel
          Left = 14
          Top = 15
          Width = 305
          Height = 37
          Caption = 'LaserThang Kim_Get'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit18: TEdit
          Left = 325
          Top = 8
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button12: TButton
          Left = 632
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button12Click
        end
      end
      object DBGridEh18: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource18
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footers = <>
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 205
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'Laser_get'
            Footers = <>
            Width = 102
          end>
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'DAJU_Send'
      ImageIndex = 16
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label27: TLabel
          Left = 8
          Top = 16
          Width = 185
          Height = 37
          Caption = 'DAJU_Send '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit19: TEdit
          Left = 200
          Top = 8
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button13: TButton
          Left = 512
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button13Click
        end
      end
      object DBGridEh19: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource19
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Testno'
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'DAJU_Send'
            Footers = <>
            Width = 150
          end>
      end
    end
    object TabSheet18: TTabSheet
      Caption = 'DAJU_Get'
      ImageIndex = 17
      object Panel18: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 80
        Align = alTop
        TabOrder = 0
        object Label28: TLabel
          Left = 6
          Top = 15
          Width = 162
          Height = 37
          Caption = 'DAJU_Get '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit20: TEdit
          Left = 173
          Top = 9
          Width = 305
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button14: TButton
          Left = 488
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Clear'
          TabOrder = 1
          OnClick = Button14Click
        end
      end
      object DBGridEh20: TDBGridEh
        Left = 0
        Top = 80
        Width = 1281
        Height = 521
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource20
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'testno'
            Footers = <>
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 205
          end
          item
            EditButtons = <>
            FieldName = 'Pending_P'
            Footers = <>
            Title.Caption = 'Material Finish'
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'DAJU_Get'
            Footers = <>
            Width = 150
          end>
      end
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 40
    Top = 192
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,lamination_send from s' +
        'hoetest')
    Left = 40
    Top = 232
    object StringField3: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField3: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField4: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query1lamination_send: TDateTimeField
      FieldName = 'lamination_send'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 88
    Top = 192
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,lamination_get from sh' +
        'oetest')
    Left = 88
    Top = 232
    object StringField5: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField5: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField6: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query1lamination_get: TDateTimeField
      FieldName = 'lamination_get'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query5
    Left = 136
    Top = 192
  end
  object Query5: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,BaoHe_send from shoete' +
        'st')
    Left = 136
    Top = 232
    object StringField7: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField7: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField8: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query5BaoHe_send: TDateTimeField
      FieldName = 'BaoHe_send'
    end
  end
  object DataSource6: TDataSource
    DataSet = Query6
    Left = 192
    Top = 192
  end
  object Query6: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,BaoHe_get from shoetes' +
        't')
    Left = 192
    Top = 232
    object StringField9: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField9: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField10: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query6BaoHe_get: TDateTimeField
      FieldName = 'BaoHe_get'
    end
  end
  object DataSource7: TDataSource
    DataSet = Query7
    Left = 248
    Top = 192
  end
  object Query7: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,LiMao_Send from shoete' +
        'st')
    Left = 248
    Top = 232
    object StringField11: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField12: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField11: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField12: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query7LiMao_Send: TDateTimeField
      FieldName = 'LiMao_Send'
    end
  end
  object DataSource8: TDataSource
    DataSet = Query8
    Left = 312
    Top = 192
  end
  object Query8: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,LiMao_Get from shoetes' +
        't')
    Left = 312
    Top = 232
    object StringField13: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField14: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField13: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField14: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query8LiMao_Get: TDateTimeField
      FieldName = 'LiMao_Get'
    end
  end
  object DataSource13: TDataSource
    DataSet = Query13
    Left = 368
    Top = 192
  end
  object Query13: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,kietphong_Send from sh' +
        'oetest')
    Left = 368
    Top = 232
    object StringField32: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField33: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField19: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField20: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query13kietphong_Send: TDateTimeField
      FieldName = 'kietphong_Send'
    end
  end
  object DataSource14: TDataSource
    DataSet = Query14
    Left = 432
    Top = 192
  end
  object Query14: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,kietphong_Get from sho' +
        'etest')
    Left = 432
    Top = 232
    object StringField34: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField35: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField21: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField22: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query14kietphong_Get: TDateTimeField
      FieldName = 'kietphong_Get'
    end
  end
  object DataSource15: TDataSource
    DataSet = Query15
    Left = 496
    Top = 192
  end
  object Query15: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,Amico_Send from shoete' +
        'st')
    Left = 496
    Top = 232
    object StringField36: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField37: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField23: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField24: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query15Amico_Send: TDateTimeField
      FieldName = 'Amico_Send'
    end
  end
  object DataSource16: TDataSource
    DataSet = Query16
    Left = 560
    Top = 192
  end
  object Query16: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,Amico_Get from shoetes' +
        't')
    Left = 560
    Top = 232
    object StringField38: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField39: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField25: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField26: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query16Amico_Get: TDateTimeField
      FieldName = 'Amico_Get'
    end
  end
  object tempqry: TQuery
    DatabaseName = 'dB'
    Left = 184
    Top = 464
  end
  object Query17: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,Laser_send from shoete' +
        'st')
    Left = 620
    Top = 234
    object Query17testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object Query17Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query17TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query17Pending_P: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query17Laser_send: TDateTimeField
      FieldName = 'Laser_send'
    end
  end
  object DataSource17: TDataSource
    DataSet = Query17
    Left = 620
    Top = 191
  end
  object DataSource18: TDataSource
    DataSet = Query18
    Left = 676
    Top = 191
  end
  object Query18: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,Laser_get from shoetes' +
        't')
    Left = 676
    Top = 231
    object Query18testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object Query18Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query18TBReceive: TBooleanField
      FieldName = 'TBReceive'
    end
    object Query18Pending_P: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query18Laser_get: TDateTimeField
      FieldName = 'Laser_get'
    end
  end
  object DataSource19: TDataSource
    DataSet = Query19
    Left = 740
    Top = 191
  end
  object Query19: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select testno,Article,TBReceive,Pending_P,DAJU_Send from shoetes' +
        't')
    Left = 740
    Top = 231
    object StringField40: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField41: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField27: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField28: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query19DAJU_Send: TDateTimeField
      FieldName = 'DAJU_Send'
    end
  end
  object Query20: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select testno,Article,TBReceive,Pending_P,DAJU_Get from shoetest')
    Left = 796
    Top = 231
    object StringField42: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object StringField43: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object BooleanField29: TBooleanField
      FieldName = 'TBReceive'
    end
    object BooleanField30: TBooleanField
      FieldName = 'Pending_P'
    end
    object Query20DAJU_Get: TDateTimeField
      FieldName = 'DAJU_Get'
    end
  end
  object DataSource20: TDataSource
    DataSet = Query20
    Left = 796
    Top = 191
  end
end
