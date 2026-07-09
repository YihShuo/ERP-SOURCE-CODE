object Overtime_Report: TOvertime_Report
  Left = 336
  Top = 211
  Width = 1349
  Height = 531
  Caption = 'Overtime_Report'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 1330
    Top = 0
    Height = 492
    Align = alRight
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1330
    Height = 492
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Total'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 913
        Height = 412
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = #24494#36575#27491#40657#39636
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EmployeeID'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Title.Caption = 'Employee ID'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'EngName'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Name'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Width = 239
          end
          item
            EditButtons = <>
            FieldName = 'Department'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'WorkingTime'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Working Time'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'OverTime'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Over Time'
            Width = 95
          end>
      end
      object DBGridEh2: TDBGridEh
        Left = 913
        Top = 49
        Width = 409
        Height = 412
        Align = alRight
        DataSource = DataSource2
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
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NV_MA'
            Footers = <>
            Title.Caption = 'Employee ID'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'QT_NGAY'
            Footers = <>
            Title.Caption = 'Date'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CC_GIOBINHTHUONG'
            Footers = <>
            Title.Caption = 'Working Time'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'CC_GIOTANGCA'
            Footers = <>
            Title.Caption = 'Over Time'
            Width = 95
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1322
        Height = 49
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label1: TLabel
          Left = 18
          Top = 15
          Width = 36
          Height = 20
          Caption = 'Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 176
          Top = 15
          Width = 12
          Height = 20
          Caption = '~'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 322
          Top = 15
          Width = 92
          Height = 20
          Caption = 'Department'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 593
          Top = 15
          Width = 95
          Height = 20
          Caption = 'Employee ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 797
          Top = 15
          Width = 75
          Height = 20
          Caption = 'EngName'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object DTP1: TDateTimePicker
          Left = 64
          Top = 12
          Width = 110
          Height = 26
          Date = 43101.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43101.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DTP2: TDateTimePicker
          Left = 192
          Top = 12
          Width = 110
          Height = 26
          Date = 43830.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43830.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button1: TButton
          Left = 1008
          Top = 10
          Width = 73
          Height = 28
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
        object CB1: TComboBox
          Left = 424
          Top = 13
          Width = 145
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL')
        end
        object Edit1: TEdit
          Left = 696
          Top = 13
          Width = 81
          Height = 24
          TabOrder = 4
        end
        object Button2: TButton
          Left = 1088
          Top = 10
          Width = 73
          Height = 28
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button2Click
        end
        object Edit2: TEdit
          Left = 880
          Top = 13
          Width = 105
          Height = 24
          TabOrder = 6
        end
        object CheckBox1: TCheckBox
          Left = 1170
          Top = 21
          Width = 79
          Height = 17
          Caption = 'Old data'
          TabOrder = 7
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Week'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 1319
        Top = 65
        Height = 396
        Align = alRight
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1322
        Height = 65
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label6: TLabel
          Left = 18
          Top = 28
          Width = 36
          Height = 20
          Caption = 'Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 176
          Top = 28
          Width = 12
          Height = 20
          Caption = '~'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 322
          Top = 28
          Width = 92
          Height = 20
          Caption = 'Department'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 593
          Top = 28
          Width = 95
          Height = 20
          Caption = 'Employee ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 797
          Top = 28
          Width = 75
          Height = 20
          Caption = 'EngName'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 64
          Top = 6
          Width = 150
          Height = 20
          Caption = 'MAX: 12hrs / week'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DTP3: TDateTimePicker
          Left = 64
          Top = 28
          Width = 110
          Height = 26
          Date = 43101.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43101.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DTP4: TDateTimePicker
          Left = 192
          Top = 28
          Width = 110
          Height = 26
          Date = 43830.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43830.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object QueryWeek: TButton
          Left = 1008
          Top = 24
          Width = 73
          Height = 28
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = QueryWeekClick
        end
        object CB2: TComboBox
          Left = 424
          Top = 28
          Width = 145
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL')
        end
        object Edit3: TEdit
          Left = 696
          Top = 28
          Width = 81
          Height = 24
          TabOrder = 4
        end
        object ExcelWeek: TButton
          Left = 1088
          Top = 24
          Width = 73
          Height = 28
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = ExcelWeekClick
        end
        object Edit4: TEdit
          Left = 880
          Top = 28
          Width = 105
          Height = 24
          TabOrder = 6
        end
        object CheckBox2: TCheckBox
          Left = 1170
          Top = 28
          Width = 79
          Height = 17
          Caption = 'Old data'
          TabOrder = 7
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 65
        Width = 1319
        Height = 396
        Align = alClient
        DataSource = DSWeek
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = #24494#36575#27491#40657#39636
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        OnDrawColumnCell = DBGridEh3DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EmployeeID'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Title.Caption = 'Employee ID'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'EngName'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Name'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Width = 239
          end
          item
            EditButtons = <>
            FieldName = 'Department'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'WorkingTime'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Working Time'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'OverTime'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Over Time'
            Width = 95
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Month'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1322
        Height = 65
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label11: TLabel
          Left = 18
          Top = 28
          Width = 36
          Height = 20
          Caption = 'Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 176
          Top = 28
          Width = 12
          Height = 20
          Caption = '~'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 322
          Top = 28
          Width = 92
          Height = 20
          Caption = 'Department'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 593
          Top = 28
          Width = 95
          Height = 20
          Caption = 'Employee ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 797
          Top = 28
          Width = 75
          Height = 20
          Caption = 'EngName'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 64
          Top = 6
          Width = 159
          Height = 20
          Caption = 'MAX: 40hrs / month'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DTP5: TDateTimePicker
          Left = 64
          Top = 28
          Width = 110
          Height = 26
          Date = 43101.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43101.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DTP6: TDateTimePicker
          Left = 192
          Top = 28
          Width = 110
          Height = 26
          Date = 43830.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43830.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object QueryMonth: TButton
          Left = 1008
          Top = 24
          Width = 73
          Height = 28
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = QueryMonthClick
        end
        object CB3: TComboBox
          Left = 424
          Top = 28
          Width = 145
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL')
        end
        object Edit5: TEdit
          Left = 696
          Top = 28
          Width = 81
          Height = 24
          TabOrder = 4
        end
        object ExcelMonth: TButton
          Left = 1088
          Top = 24
          Width = 73
          Height = 28
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = ExcelMonthClick
        end
        object Edit6: TEdit
          Left = 880
          Top = 28
          Width = 105
          Height = 24
          TabOrder = 6
        end
        object CheckBox3: TCheckBox
          Left = 1170
          Top = 28
          Width = 79
          Height = 17
          Caption = 'Old data'
          TabOrder = 7
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 65
        Width = 1322
        Height = 396
        Align = alClient
        DataSource = DSMonth
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = #24494#36575#27491#40657#39636
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EmployeeID'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Title.Caption = 'Employee ID'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'EngName'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Name'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Width = 239
          end
          item
            EditButtons = <>
            FieldName = 'Department'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'WorkingTime'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Working Time'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'OverTime'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Over Time'
            Width = 95
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Year'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1322
        Height = 65
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label16: TLabel
          Left = 18
          Top = 28
          Width = 36
          Height = 20
          Caption = 'Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 176
          Top = 28
          Width = 12
          Height = 20
          Caption = '~'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 322
          Top = 28
          Width = 92
          Height = 20
          Caption = 'Department'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 593
          Top = 28
          Width = 95
          Height = 20
          Caption = 'Employee ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 797
          Top = 28
          Width = 75
          Height = 20
          Caption = 'EngName'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 64
          Top = 6
          Width = 153
          Height = 20
          Caption = 'MAX: 300hrs / year'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DTP7: TDateTimePicker
          Left = 64
          Top = 28
          Width = 110
          Height = 26
          Date = 43101.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43101.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DTP8: TDateTimePicker
          Left = 192
          Top = 28
          Width = 110
          Height = 26
          Date = 43830.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 43830.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object QueryYear: TButton
          Left = 1008
          Top = 24
          Width = 73
          Height = 28
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = QueryYearClick
        end
        object CB4: TComboBox
          Left = 424
          Top = 28
          Width = 145
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL')
        end
        object Edit7: TEdit
          Left = 696
          Top = 28
          Width = 81
          Height = 24
          TabOrder = 4
        end
        object ExcelYear: TButton
          Left = 1088
          Top = 24
          Width = 73
          Height = 28
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = ExcelYearClick
        end
        object Edit8: TEdit
          Left = 880
          Top = 28
          Width = 105
          Height = 24
          TabOrder = 6
        end
        object CheckBox4: TCheckBox
          Left = 1170
          Top = 28
          Width = 79
          Height = 17
          Caption = 'Old data'
          TabOrder = 7
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 65
        Width = 1322
        Height = 396
        Align = alClient
        DataSource = DSYear
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = #24494#36575#27491#40657#39636
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        OnDrawColumnCell = DBGridEh5DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EmployeeID'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Title.Caption = 'Employee ID'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'EngName'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Name'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Width = 239
          end
          item
            EditButtons = <>
            FieldName = 'Department'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footers = <>
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'WorkingTime'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Working Time'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'OverTime'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = '@'#24494#36575#27491#40657#39636
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Over Time'
            Width = 95
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 48
    Top = 104
  end
  object dlgSave1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 16
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 1088
    Top = 128
  end
  object ADOConnection1: TADOConnection
    CommandTimeout = 1500
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123456;Persist Security Info=True;U' +
      'ser ID=hrms;Initial Catalog=P0104-TYXUAN;Data Source=192.168.23.' +
      '123'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 104
  end
  object ADOQTemp: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    Left = 88
    Top = 136
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT WorkingData.EmployeeID, WorkingData.Name, WorkingData.Dep' +
        'artment, CONVERT(Float, WorkingData.WorkingTime) AS WorkingTime,' +
        ' CONVERT(Float, WorkingData.OverTime) AS OverTime FROM ('
      
        '  SELECT '#39'00186'#39' AS EmployeeID, '#39'PHAM ANH TUAN'#39' AS Name, '#39'A1A2QL' +
        '-KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'00271'#39' AS EmployeeID, '#39'NGUYEN THI PHUC DUNG'#39' AS Name, ' +
        #39'A1A2KCSKVT'#39' AS Department, 16 AS WorkingTime, 1.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'00420'#39' AS EmployeeID, '#39'NGUYEN THI MONG VANG'#39' AS Name, ' +
        #39'A1A2KTh.GT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'00523'#39' AS EmployeeID, '#39'BIEN VO PHUONG THUY'#39' AS Name, '#39 +
        'A1A2QL-QC'#39' AS Department, 16 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'00631'#39' AS EmployeeID, '#39'LE THI HONG HIEP'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'01010'#39' AS EmployeeID, '#39'LE KIM PHUONG'#39' AS Name, '#39'A1A2QL' +
        '-QC'#39' AS Department, 16 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'01362'#39' AS EmployeeID, '#39'NGUYEN THI BICH NGUYEN'#39' AS Name' +
        ', '#39'A1A2KVT'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'01591'#39' AS EmployeeID, '#39'LE MONG  LINH'#39' AS Name, '#39'A1A2 C' +
        'BY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'01892'#39' AS EmployeeID, '#39'NGUYEN THI KIM THANH'#39' AS Name, ' +
        #39'A1A2KVT'#39' AS Department, 0 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'02237'#39' AS EmployeeID, '#39'NGUYEN THI PHUONG LIEN'#39' AS Name' +
        ', '#39'A1A2 MA'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'02289'#39' AS EmployeeID, '#39'VAN NGOC THUY'#39' AS Name, '#39'A1A2KT' +
        'h. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'03303'#39' AS EmployeeID, '#39'TRUONG QUANG KHAI'#39' AS Name, '#39'A1' +
        'A2KVT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'03428'#39' AS EmployeeID, '#39'NGUYEN THI HONG LOAN'#39' AS Name, ' +
        #39'A1A2KCSKVT'#39' AS Department, 48 AS WorkingTime, 6 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'06042'#39' AS EmployeeID, '#39'TRAN THI MY  HANG'#39' AS Name, '#39'A1' +
        'A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'06882'#39' AS EmployeeID, '#39'MAI THI MANH'#39' AS Name, '#39'A1A2 CB' +
        'Y. CHAT'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'07234'#39' AS EmployeeID, '#39'LE KIM THAO'#39' AS Name, '#39'A1A2KCSK' +
        'VT'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'07583'#39' AS EmployeeID, '#39'TRAN THI THANH TAM'#39' AS Name, '#39'A' +
        '1A2 MA'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'09281'#39' AS EmployeeID, '#39'LE THI NGOC THU'#39' AS Name, '#39'A1A2' +
        'KTh. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'100295'#39' AS EmployeeID, '#39'LAM HUYNH GIANG'#39' AS Name, '#39'A1A' +
        '2KTh. PMM'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'100491'#39' AS EmployeeID, '#39'BACH CAM THUY'#39' AS Name, '#39'A1A2K' +
        'Th. PMM'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'100532'#39' AS EmployeeID, '#39'BUI THI MY'#39' AS Name, '#39'A1A2 CBY' +
        '. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'100618'#39' AS EmployeeID, '#39'PHAN THANH THAO'#39' AS Name, '#39'A1A' +
        '2KTh.BOM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'100741'#39' AS EmployeeID, '#39'NGUYEN THANH VAN'#39' AS Name, '#39'A1' +
        'A2 CBY. MAY'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'100841'#39' AS EmployeeID, '#39'NGUYEN THI MY HUYEN'#39' AS Name, ' +
        #39'A1A2KTh. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'100923'#39' AS EmployeeID, '#39'PHAM THI KIM TUYEN'#39' AS Name, '#39 +
        'A1A2 CBY. MAY'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'101225'#39' AS EmployeeID, '#39'NGUYEN THAI THANH NGAN'#39' AS Nam' +
        'e, '#39'A1A2KTh.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'101592'#39' AS EmployeeID, '#39'DANG HONG DAO'#39' AS Name, '#39'A1A2P' +
        'TN'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'101601'#39' AS EmployeeID, '#39'TRAN KIEU MY'#39' AS Name, '#39'A1A2PT' +
        'N'#39' AS Department, 40 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'101624'#39' AS EmployeeID, '#39'DUONG KHANH DUY'#39' AS Name, '#39'A1A' +
        '2PTN'#39' AS Department, 40 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102022'#39' AS EmployeeID, '#39'NGUYEN THANH DAT'#39' AS Name, '#39'A1' +
        'A2KTh. PMC'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102124'#39' AS EmployeeID, '#39'PHAN THI KIEU LINH'#39' AS Name, '#39 +
        'A1A2 CBY. MAY'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102130'#39' AS EmployeeID, '#39'TRAN DUC HUY'#39' AS Name, '#39'A1A2KT' +
        'h.C'#39' AS Department, 48 AS WorkingTime, 2 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102170'#39' AS EmployeeID, '#39'NGUYEN THI HUE TRAN'#39' AS Name, ' +
        #39'A1A2KVT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102171'#39' AS EmployeeID, '#39'TRAN THANH PHONG'#39' AS Name, '#39'A1' +
        'A2PTN'#39' AS Department, 48 AS WorkingTime, 6 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102173'#39' AS EmployeeID, '#39'LE THI KIM DUYEN'#39' AS Name, '#39'A1' +
        'A2KTh.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102224'#39' AS EmployeeID, '#39'NGUYEN THI CAM TIEN'#39' AS Name, ' +
        #39'A1A2KHTH.KVT.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTim' +
        'e'
      '  UNION ALL'
      
        '  SELECT '#39'102225'#39' AS EmployeeID, '#39'LE THI HONG AN'#39' AS Name, '#39'A1A2' +
        ' MA'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102246'#39' AS EmployeeID, '#39'VO TUYET NGOC'#39' AS Name, '#39'A1A2 ' +
        'CBY. KHO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102248'#39' AS EmployeeID, '#39'LE VAN HIEN'#39' AS Name, '#39'A1A2KTh' +
        '-PR'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102250'#39' AS EmployeeID, '#39'LE HO ANH DUC'#39' AS Name, '#39'A1A2K' +
        'Th-PR'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102323'#39' AS EmployeeID, '#39'LY MINH NHUT'#39' AS Name, '#39'A1A2KV' +
        'T'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102324'#39' AS EmployeeID, '#39'VO HUNG DUY'#39' AS Name, '#39'A1A2KTh' +
        '-PR'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102326'#39' AS EmployeeID, '#39'NGUYEN THUY QUYNH'#39' AS Name, '#39'A' +
        '1A2KTh-PR'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102328'#39' AS EmployeeID, '#39'LE THI THUY'#39' AS Name, '#39'A1A2KTh' +
        '.BOM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102330'#39' AS EmployeeID, '#39'LE HONG NHUNG'#39' AS Name, '#39'A1A2K' +
        'Th.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102331'#39' AS EmployeeID, '#39'HUYNH HONG TRAN'#39' AS Name, '#39'A1A' +
        '2KTh.BOM'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102332'#39' AS EmployeeID, '#39'VO THI PHUONG NHI'#39' AS Name, '#39'A' +
        '1A2KTh.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102384'#39' AS EmployeeID, '#39'NGO KIM SON'#39' AS Name, '#39'A1A2KTh' +
        '. PMG'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102399'#39' AS EmployeeID, '#39'VO NGOC YEN LAN'#39' AS Name, '#39'A1A' +
        '2KTh-CE'#39' AS Department, 48 AS WorkingTime, 3 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102401'#39' AS EmployeeID, '#39'LE THI BICH NGOC'#39' AS Name, '#39'A1' +
        'A2KTh-KT.A'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102402'#39' AS EmployeeID, '#39'VUONG THI NGOC'#39' AS Name, '#39'A1A2' +
        'KTh.BOM'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102464'#39' AS EmployeeID, '#39'NGUYEN MINH THIEN'#39' AS Name, '#39'A' +
        '1A2KHTH.KVT.PM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102479'#39' AS EmployeeID, '#39'LE THI PHUONG LINH'#39' AS Name, '#39 +
        'A1A2KTh-KT.A'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102480'#39' AS EmployeeID, '#39'HO TAN HUY'#39' AS Name, '#39'A1A2KTh-' +
        'KT.G'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102528'#39' AS EmployeeID, '#39'NGUYEN THI YEN THU'#39' AS Name, '#39 +
        'A1A2KCSVP'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102532'#39' AS EmployeeID, '#39'NGUYEN HOANG QUYEN'#39' AS Name, '#39 +
        'A1A2 MA'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102556'#39' AS EmployeeID, '#39'NGUYEN LY CHIEU HOANG'#39' AS Name' +
        ', '#39'A1A2KCSVP'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102558'#39' AS EmployeeID, '#39'NGUYEN THI MY AN'#39' AS Name, '#39'A1' +
        'A2KTh-PR'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102587'#39' AS EmployeeID, '#39'LE THI THUY'#39' AS Name, '#39'A1A2KTh' +
        '-CE'#39' AS Department, 40 AS WorkingTime, 3 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102616'#39' AS EmployeeID, '#39'BUI KIM NGAN'#39' AS Name, '#39'A1A2KT' +
        'h. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102617'#39' AS EmployeeID, '#39'NGUYEN THI NGOC DIEM'#39' AS Name,' +
        ' '#39'A1A2KTh. PMM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102669'#39' AS EmployeeID, '#39'DAO LE THI PHUONG LOAN'#39' AS Nam' +
        'e, '#39'A1A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102670'#39' AS EmployeeID, '#39'DO THI THUY TIEN'#39' AS Name, '#39'A1' +
        'A2KH'#39' AS Department, 0 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102672'#39' AS EmployeeID, '#39'PHAM MINH TRUNG'#39' AS Name, '#39'A1A' +
        '2KTh-PR'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102703'#39' AS EmployeeID, '#39'PHAN THI PHI YEN'#39' AS Name, '#39'A1' +
        'A2 CBY. SQ'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102829'#39' AS EmployeeID, '#39'HO THI XUAN TUYEN'#39' AS Name, '#39'A' +
        '1A2KTh.TM'#39' AS Department, 47.6 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102894'#39' AS EmployeeID, '#39'NGUYEN HUYNH NHU'#39' AS Name, '#39'A1' +
        'A2KTh.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102895'#39' AS EmployeeID, '#39'HUYNH THI HONG DIEP'#39' AS Name, ' +
        #39'A1A2KTh.A'#39' AS Department, 0 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102900'#39' AS EmployeeID, '#39'TRAN LE NGOC TIN'#39' AS Name, '#39'A1' +
        'A2KTh. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102938'#39' AS EmployeeID, '#39'NGUYEN DAN THI'#39' AS Name, '#39'A1A2' +
        'PTN'#39' AS Department, 40 AS WorkingTime, 6 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102941'#39' AS EmployeeID, '#39'TRINH THI THUY QUYEN'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102969'#39' AS EmployeeID, '#39'PHAM THI TRUC LY'#39' AS Name, '#39'A1' +
        'A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'102979'#39' AS EmployeeID, '#39'THACH THI HONG MAI'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103305'#39' AS EmployeeID, '#39'HUYNH THI THANH TRUC'#39' AS Name,' +
        ' '#39'A1A2PTN'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103345'#39' AS EmployeeID, '#39'NGUYEN VAN PHONG'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103347'#39' AS EmployeeID, '#39'NGUYEN THI TUYET MAI'#39' AS Name,' +
        ' '#39'A1A2KVT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103515'#39' AS EmployeeID, '#39'PHAN NHU Y'#39' AS Name, '#39'A1A2KH'#39' ' +
        'AS Department, 32 AS WorkingTime, 3 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103526'#39' AS EmployeeID, '#39'DANG THI LE HANG'#39' AS Name, '#39'A1' +
        'A2KVT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103539'#39' AS EmployeeID, '#39'NGUYEN THI HUYNH NHU'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103540'#39' AS EmployeeID, '#39'NGUYEN YEN NHI'#39' AS Name, '#39'A1A2' +
        'KTh. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103541'#39' AS EmployeeID, '#39'DO THI THUY LOAN'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103543'#39' AS EmployeeID, '#39'NGUYEN VAN SUA'#39' AS Name, '#39'A1A2' +
        ' CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103581'#39' AS EmployeeID, '#39'PHAM THI KIEU'#39' AS Name, '#39'A1A2 ' +
        'CBY. MAY'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103797'#39' AS EmployeeID, '#39'LE THI THUY UYEN'#39' AS Name, '#39'A1' +
        'A2KTh.A'#39' AS Department, 40 AS WorkingTime, 2 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103805'#39' AS EmployeeID, '#39'TRAN THI KIM LIEN'#39' AS Name, '#39'A' +
        '1A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'103806'#39' AS EmployeeID, '#39'NGUYEN THI LAN PHUONG'#39' AS Name' +
        ', '#39'A1A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTi' +
        'me'
      '  UNION ALL'
      
        '  SELECT '#39'103877'#39' AS EmployeeID, '#39'BUI THI MY HANH'#39' AS Name, '#39'A1A' +
        '2KCSKVT'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104063'#39' AS EmployeeID, '#39'HO LINH CANH'#39' AS Name, '#39'A1A2KT' +
        'h-PR'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104065'#39' AS EmployeeID, '#39'TA THANH DUY'#39' AS Name, '#39'A1A2KT' +
        'h-SQ.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104067'#39' AS EmployeeID, '#39'LAM THI TUYET LAN'#39' AS Name, '#39'A' +
        '1A2KTh. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104076'#39' AS EmployeeID, '#39'NGUYEN NGOC QUYEN'#39' AS Name, '#39'A' +
        '1A2 MA'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104078'#39' AS EmployeeID, '#39'NGUYEN THI TU NHI'#39' AS Name, '#39'A' +
        '1A2KVT'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104084'#39' AS EmployeeID, '#39'TRAN THI THANH THUY'#39' AS Name, ' +
        #39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104218'#39' AS EmployeeID, '#39'TRUONG THI ANH THI'#39' AS Name, '#39 +
        'A1A2KTh. OP'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104253'#39' AS EmployeeID, '#39'THACH THI NGOC CAM'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104261'#39' AS EmployeeID, '#39'HUYNH KIM XUYEN'#39' AS Name, '#39'A1A' +
        '2TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104474'#39' AS EmployeeID, '#39'HUYNH HUU MAI'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104475'#39' AS EmployeeID, '#39'HUYNH THANH HAI'#39' AS Name, '#39'A1A' +
        '2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104501'#39' AS EmployeeID, '#39'TRAN PHUOC HIEN'#39' AS Name, '#39'A1A' +
        '2KTh. PMG'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104515'#39' AS EmployeeID, '#39'LU THI THUY TUYEN'#39' AS Name, '#39'A' +
        '1A2 MA'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104629'#39' AS EmployeeID, '#39'TRAN THI NHU Y'#39' AS Name, '#39'A1A2' +
        'KTh. OP'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104664'#39' AS EmployeeID, '#39'TRUONG HOAI PHU'#39' AS Name, '#39'A1A' +
        '2KTh. OP'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104730'#39' AS EmployeeID, '#39'BUI THI MY HANG'#39' AS Name, '#39'A1A' +
        '2KTh.GT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104749'#39' AS EmployeeID, '#39'LE NGOC DIEP'#39' AS Name, '#39'A1A2 C' +
        'BY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104750'#39' AS EmployeeID, '#39'NGUYEN THI TRUC LINH'#39' AS Name,' +
        ' '#39'A1A2 CBY. MAY'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104907'#39' AS EmployeeID, '#39'NGO THI NGOC TRAM'#39' AS Name, '#39'A' +
        '1A2KTh.GT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104908'#39' AS EmployeeID, '#39'TRAN NGOC TRINH'#39' AS Name, '#39'A1A' +
        '2KTh-KT.A'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104931'#39' AS EmployeeID, '#39'LE HUYNH KIM CO'#39' AS Name, '#39'A1A' +
        '2KTh. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'104934'#39' AS EmployeeID, '#39'NGUYEN NGOC LINH'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105015'#39' AS EmployeeID, '#39'TRAN VAN DIEM'#39' AS Name, '#39'A1A2 ' +
        'CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105063'#39' AS EmployeeID, '#39'NGUYEN THI PHUC LOC'#39' AS Name, ' +
        #39'A1A2 MA'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105075'#39' AS EmployeeID, '#39'LE THI CAM NHUNG'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 0 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105090'#39' AS EmployeeID, '#39'VO HOANG KHANG'#39' AS Name, '#39'A1A2' +
        'KHTH.KVT.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105198'#39' AS EmployeeID, '#39'BUI NGOC LOC'#39' AS Name, '#39'A1A2KT' +
        'h.BOM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105262'#39' AS EmployeeID, '#39'VAN THI THUY HANG'#39' AS Name, '#39'A' +
        '1A2KTh. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105267'#39' AS EmployeeID, '#39'NGUYEN THI BICH PHUONG'#39' AS Nam' +
        'e, '#39'A1A2KTh. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTim' +
        'e'
      '  UNION ALL'
      
        '  SELECT '#39'105268'#39' AS EmployeeID, '#39'NGUYEN THI BICH'#39' AS Name, '#39'A1A' +
        '2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105286'#39' AS EmployeeID, '#39'NGUYEN NGOC THAM'#39' AS Name, '#39'A1' +
        'A2 CBY. CHAT'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105443'#39' AS EmployeeID, '#39'NGUYEN THI KIM QUYEN'#39' AS Name,' +
        ' '#39'A1A2KVT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105541'#39' AS EmployeeID, '#39'VO THI YEN NGAN'#39' AS Name, '#39'A1A' +
        '2NV'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105740'#39' AS EmployeeID, '#39'NGO CHI MINH'#39' AS Name, '#39'A1A2KT' +
        'h-KT.A'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105869'#39' AS EmployeeID, '#39'LE MINH CHAU'#39' AS Name, '#39'A1A2KV' +
        'T'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105897'#39' AS EmployeeID, '#39'NGUYEN THI KIEU'#39' AS Name, '#39'A1A' +
        '2KCSKVT'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105983'#39' AS EmployeeID, '#39'NGUYEN HONG NHU'#39' AS Name, '#39'A1A' +
        '2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105984'#39' AS EmployeeID, '#39'PHAM MINH TIEN'#39' AS Name, '#39'A1A2' +
        'KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'105988'#39' AS EmployeeID, '#39'THAI KIM MY'#39' AS Name, '#39'A1A2KTh' +
        '.GT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106090'#39' AS EmployeeID, '#39'CHAU THI THU SUONG'#39' AS Name, '#39 +
        'A1A2 MA'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106182'#39' AS EmployeeID, '#39'NGUYEN THI KIM XUYEN'#39' AS Name,' +
        ' '#39'A1A2KTh. PMM'#39' AS Department, 16 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106204'#39' AS EmployeeID, '#39'BUI THANH HANG'#39' AS Name, '#39'A1A2' +
        ' CBY. MAY'#39' AS Department, 0 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106256'#39' AS EmployeeID, '#39'DUONG THI NGOC HUYEN'#39' AS Name,' +
        ' '#39'A1A2KTh. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106276'#39' AS EmployeeID, '#39'HUYNH THANH KIEU'#39' AS Name, '#39'A1' +
        'A2KCSKVT'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106356'#39' AS EmployeeID, '#39'TRAN THI NGOC DIEM'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 16 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106376'#39' AS EmployeeID, '#39'PHAM THI NHU Y'#39' AS Name, '#39'A1A2' +
        'KH'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106453'#39' AS EmployeeID, '#39'LE THI THUY'#39' AS Name, '#39'A1A2 CB' +
        'Y. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106462'#39' AS EmployeeID, '#39'PHAM KIM THANH'#39' AS Name, '#39'A1A2' +
        'PTN'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106534'#39' AS EmployeeID, '#39'TRAN KIM LUYEN'#39' AS Name, '#39'A1A2' +
        ' CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106536'#39' AS EmployeeID, '#39'NGUYEN THI NGOC DIEP'#39' AS Name,' +
        ' '#39'A1A2 CBY. MAY'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106559'#39' AS EmployeeID, '#39'NGUYEN VAN AI'#39' AS Name, '#39'A1A2K' +
        'VT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106636'#39' AS EmployeeID, '#39'BUI THI TRUC LAM'#39' AS Name, '#39'A1' +
        'A2KTh-KT.A'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106637'#39' AS EmployeeID, '#39'LE THANH CAM TIEN'#39' AS Name, '#39'A' +
        '1A2KTh.GT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106653'#39' AS EmployeeID, '#39'NGUYEN THI NGOC NHUNG'#39' AS Name' +
        ', '#39'A1A2 MA'#39' AS Department, 0 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106718'#39' AS EmployeeID, '#39'NGUYEN LE HIEN'#39' AS Name, '#39'A1A2' +
        'KTh.F'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106719'#39' AS EmployeeID, '#39'NGUYEN PHONG NHA'#39' AS Name, '#39'A1' +
        'A2KTh.F'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106721'#39' AS EmployeeID, '#39'BUI THI TU TRINH'#39' AS Name, '#39'A1' +
        'A2KTh.BOM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106827'#39' AS EmployeeID, '#39'DOAN MINH KHANG'#39' AS Name, '#39'A1A' +
        '2KTh.F'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106828'#39' AS EmployeeID, '#39'NGO THANH TRI'#39' AS Name, '#39'A1A2K' +
        'Th.F'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106858'#39' AS EmployeeID, '#39'PHAN THI BE TU'#39' AS Name, '#39'A1A2' +
        'KTh. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'106946'#39' AS EmployeeID, '#39'TRAN THI NHU Y'#39' AS Name, '#39'A1A2' +
        'KTh. PMC'#39' AS Department, 0 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107018'#39' AS EmployeeID, '#39'TRAN THI HUE TRINH'#39' AS Name, '#39 +
        'A1A2KHTH.KVT.PM'#39' AS Department, 0 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107127'#39' AS EmployeeID, '#39'NGO THI THANH TUYEN'#39' AS Name, ' +
        #39'A1A2 CBY. CHAT'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107144'#39' AS EmployeeID, '#39'LAM THI HONG THANH'#39' AS Name, '#39 +
        'A1A2 MA'#39' AS Department, 40 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107156'#39' AS EmployeeID, '#39'PHAM THI THUY'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107230'#39' AS EmployeeID, '#39'TRAN THI BE NGOC'#39' AS Name, '#39'A1' +
        'A2 MA'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107236'#39' AS EmployeeID, '#39'VO TRUNG HIEU'#39' AS Name, '#39'A1A2K' +
        'Th. PMM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107245'#39' AS EmployeeID, '#39'HO THI GIAU'#39' AS Name, '#39'A1A2 CB' +
        'Y. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107249'#39' AS EmployeeID, '#39'TRAN THI LAN PHUONG'#39' AS Name, ' +
        #39'A1A2KTh. OP'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107395'#39' AS EmployeeID, '#39'DUONG THI DIEP HIEU'#39' AS Name, ' +
        #39'A1A2NV'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107399'#39' AS EmployeeID, '#39'LE THI THANH TUYEN'#39' AS Name, '#39 +
        'A1A2 CBY. KHO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107429'#39' AS EmployeeID, '#39'NGUYEN THI HONG NHUNG'#39' AS Name' +
        ', '#39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107517'#39' AS EmployeeID, '#39'PHAN THI KIEU TIEN'#39' AS Name, '#39 +
        'A1A2KH'#39' AS Department, 32 AS WorkingTime, 1.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107626'#39' AS EmployeeID, '#39'PHAM NGOC HUNG'#39' AS Name, '#39'A1A2' +
        'KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107774'#39' AS EmployeeID, '#39'NGUYEN THI THU HIEN'#39' AS Name, ' +
        #39'A1A2KH'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'107946'#39' AS EmployeeID, '#39'LE TAN LUC'#39' AS Name, '#39'A1A2 CBY' +
        '. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108002'#39' AS EmployeeID, '#39'LE THI THAO QUYEN'#39' AS Name, '#39'A' +
        '1A2NV'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108127'#39' AS EmployeeID, '#39'LE NGOC THIET'#39' AS Name, '#39'A1A2K' +
        'CSKVT'#39' AS Department, 48 AS WorkingTime, 6 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108211'#39' AS EmployeeID, '#39'NGUYEN THI THUY'#39' AS Name, '#39'A1A' +
        '2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108272'#39' AS EmployeeID, '#39'NGUYEN PHUONG TRANG'#39' AS Name, ' +
        #39'A1A2KHTH.KVT.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTim' +
        'e'
      '  UNION ALL'
      
        '  SELECT '#39'108376'#39' AS EmployeeID, '#39'NGUYEN HUYNH MY HANH'#39' AS Name,' +
        ' '#39'A1A2KVT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108391'#39' AS EmployeeID, '#39'TRUONG THI MY THO'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108428'#39' AS EmployeeID, '#39'NGUYEN HOANG THAI'#39' AS Name, '#39'A' +
        '1A2PTN'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108431'#39' AS EmployeeID, '#39'HO THI HUYNH NHI'#39' AS Name, '#39'A1' +
        'A2PTN'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108457'#39' AS EmployeeID, '#39'TRUONG HOAI PHUONG'#39' AS Name, '#39 +
        'A1A2KH'#39' AS Department, 40 AS WorkingTime, 3 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108488'#39' AS EmployeeID, '#39'PHAM HOANG TUAN'#39' AS Name, '#39'A1A' +
        '2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108494'#39' AS EmployeeID, '#39'DINH THI THUY TRANG'#39' AS Name, ' +
        #39'A1A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108495'#39' AS EmployeeID, '#39'TRUONG THI PHUONG THANH'#39' AS Na' +
        'me, '#39'A1A2KTh. PMM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTi' +
        'me'
      '  UNION ALL'
      
        '  SELECT '#39'108496'#39' AS EmployeeID, '#39'NGUYEN VAN THUAN'#39' AS Name, '#39'A1' +
        'A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108506'#39' AS EmployeeID, '#39'NGUYEN THI TRUC LY'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108558'#39' AS EmployeeID, '#39'VO THI KIM HUONG'#39' AS Name, '#39'A1' +
        'A2KTh-SQ.PM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108559'#39' AS EmployeeID, '#39'NGUYEN THI MY HOA'#39' AS Name, '#39'A' +
        '1A2TM'#39' AS Department, 8 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108570'#39' AS EmployeeID, '#39'PHAN THI HONG PHUOC'#39' AS Name, ' +
        #39'A1A2PTN'#39' AS Department, 0 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108616'#39' AS EmployeeID, '#39'NGUYEN LE THANH HIEN'#39' AS Name,' +
        ' '#39'A1A2KTh. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108744'#39' AS EmployeeID, '#39'NGUYEN THI YEN LINH'#39' AS Name, ' +
        #39'A1A2KHTH.KVT.PM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTim' +
        'e'
      '  UNION ALL'
      
        '  SELECT '#39'108752'#39' AS EmployeeID, '#39'TRAN THI THU ANH'#39' AS Name, '#39'A1' +
        'A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108754'#39' AS EmployeeID, '#39'PHAM THI MY HONG'#39' AS Name, '#39'A1' +
        'A2KTh-PR'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108790'#39' AS EmployeeID, '#39'NGUYEN THI KIM LOAN'#39' AS Name, ' +
        #39'A1A2KTh. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108878'#39' AS EmployeeID, '#39'TRAN THI NGOC DIEU'#39' AS Name, '#39 +
        'A1A2KTh. PMC'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108879'#39' AS EmployeeID, '#39'LE LAM THI NGOC HANG'#39' AS Name,' +
        ' '#39'A1A2KHTH.KVT.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTi' +
        'me'
      '  UNION ALL'
      
        '  SELECT '#39'108925'#39' AS EmployeeID, '#39'PHAM THI NGOC TRAM'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'108933'#39' AS EmployeeID, '#39'NGUYEN CONG TIEN'#39' AS Name, '#39'A1' +
        'A2KVT'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109149'#39' AS EmployeeID, '#39'THAI MINH TRI'#39' AS Name, '#39'A1A2K' +
        'VT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109378'#39' AS EmployeeID, '#39'NGUYEN NGOC BICH'#39' AS Name, '#39'A1' +
        'A2KTh-KT.A'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109419'#39' AS EmployeeID, '#39'TRAN THI DIEM TRANG'#39' AS Name, ' +
        #39'A1A2 MA'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109425'#39' AS EmployeeID, '#39'GIANG MINH TRUNG'#39' AS Name, '#39'A1' +
        'A2KTh. PMG'#39' AS Department, 46 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109519'#39' AS EmployeeID, '#39'CHAU THI MY HANH'#39' AS Name, '#39'A1' +
        'A2KCSKVT'#39' AS Department, 48 AS WorkingTime, 6 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109540'#39' AS EmployeeID, '#39'MAI LE BAO ANH'#39' AS Name, '#39'A1A2' +
        'KCSVP'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109586'#39' AS EmployeeID, '#39'DUONG NGOC NGUYEN'#39' AS Name, '#39'A' +
        '1A2KVT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109604'#39' AS EmployeeID, '#39'PHAN HUYNH LINH'#39' AS Name, '#39'A1A' +
        '2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'10967'#39' AS EmployeeID, '#39'HUYNH THI BE MANH'#39' AS Name, '#39'A1' +
        'A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109924'#39' AS EmployeeID, '#39'NGUYEN THANH NGOAN'#39' AS Name, '#39 +
        'A1A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109970'#39' AS EmployeeID, '#39'NGUYEN THI HOANG ANH'#39' AS Name,' +
        ' '#39'A1A2PTN'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109971'#39' AS EmployeeID, '#39'NGUYEN THI HUYNH TRAN'#39' AS Name' +
        ', '#39'A1A2KH'#39' AS Department, 16 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'109972'#39' AS EmployeeID, '#39'PHAN THI BE NHI'#39' AS Name, '#39'A1A' +
        '2KCSVP'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110130'#39' AS EmployeeID, '#39'PHAN THI THU HIEN'#39' AS Name, '#39'A' +
        '1A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110193'#39' AS EmployeeID, '#39'PHAN TRONG NGHIA'#39' AS Name, '#39'A1' +
        'A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110277'#39' AS EmployeeID, '#39'NGUYEN THI HUE HONG'#39' AS Name, ' +
        #39'A1A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110414'#39' AS EmployeeID, '#39'VO VAN TUAN ANH'#39' AS Name, '#39'A1A' +
        '2KTh. PMM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110416'#39' AS EmployeeID, '#39'NGUYEN THI THIEN HUONG'#39' AS Nam' +
        'e, '#39'A1A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverT' +
        'ime'
      '  UNION ALL'
      
        '  SELECT '#39'110514'#39' AS EmployeeID, '#39'NGUYEN THI KIEU OANH'#39' AS Name,' +
        ' '#39'A1A2KTh-KT.A'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110558'#39' AS EmployeeID, '#39'NGUYEN THI ANH THU'#39' AS Name, '#39 +
        'A1A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110559'#39' AS EmployeeID, '#39'LE THI NGOC NGAN'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110560'#39' AS EmployeeID, '#39'TRAN THI CAM NGOC'#39' AS Name, '#39'A' +
        '1A2KTh. PMG'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110637'#39' AS EmployeeID, '#39'HUYNH TRUNG HAU'#39' AS Name, '#39'A1A' +
        '2KVT'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110645'#39' AS EmployeeID, '#39'THAI THI XUAN TRUC'#39' AS Name, '#39 +
        'A1A2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110646'#39' AS EmployeeID, '#39'LE THI KIM THOA'#39' AS Name, '#39'A1A' +
        '2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110692'#39' AS EmployeeID, '#39'TRAN MINH THU'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110693'#39' AS EmployeeID, '#39'TRAN KIEU DIEM'#39' AS Name, '#39'A1A2' +
        'KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110694'#39' AS EmployeeID, '#39'NGUYEN THANH BINH'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110702'#39' AS EmployeeID, '#39'NGUYEN THI THANH THAO'#39' AS Name' +
        ', '#39'A1A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110709'#39' AS EmployeeID, '#39'PHUNG QUANG PHUC'#39' AS Name, '#39'A1' +
        'A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110745'#39' AS EmployeeID, '#39'PHAM THI NGOI'#39' AS Name, '#39'A1A2K' +
        'Th. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110749'#39' AS EmployeeID, '#39'NGUYEN THI KIM LIEN'#39' AS Name, ' +
        #39'A1A2KTh. PMM'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110754'#39' AS EmployeeID, '#39'NGUYEN ANH TUYET'#39' AS Name, '#39'A1' +
        'A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110792'#39' AS EmployeeID, '#39'BUI NGOC ANH THU'#39' AS Name, '#39'A1' +
        'A2NV'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110800'#39' AS EmployeeID, '#39'DO THI THANH HUYEN'#39' AS Name, '#39 +
        'A1A2KHTH.KVT.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110933'#39' AS EmployeeID, '#39'PHAM THI MONG TRINH'#39' AS Name, ' +
        #39'A1A2 CBY. MAY'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110945'#39' AS EmployeeID, '#39'TRAN THI NGOC HUYEN'#39' AS Name, ' +
        #39'A1A2KTh. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110959'#39' AS EmployeeID, '#39'HUYNH PHUOC LOI'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110960'#39' AS EmployeeID, '#39'DUONG THI BICH NGAN'#39' AS Name, ' +
        #39'A1A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'110972'#39' AS EmployeeID, '#39'NGUYEN HOANG NGUYEN'#39' AS Name, ' +
        #39'A1A2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111011'#39' AS EmployeeID, '#39'NGUYEN TAN SE'#39' AS Name, '#39'A1A2K' +
        'VT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111014'#39' AS EmployeeID, '#39'NGUYEN THANH LUAN'#39' AS Name, '#39'A' +
        '1A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111250'#39' AS EmployeeID, '#39'NGUYEN THI TU MI'#39' AS Name, '#39'A1' +
        'A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111357'#39' AS EmployeeID, '#39'LUONG VAN VAN VU'#39' AS Name, '#39'A1' +
        'A2 CBY. KHO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111396'#39' AS EmployeeID, '#39'LAM THI KIM NGAN'#39' AS Name, '#39'A1' +
        'A2KH'#39' AS Department, 48 AS WorkingTime, 1.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111400'#39' AS EmployeeID, '#39'PHAM THI TRUC THUY'#39' AS Name, '#39 +
        'A1A2KH'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111401'#39' AS EmployeeID, '#39'HUYNH NGUYEN KIM CUONG'#39' AS Nam' +
        'e, '#39'A1A2KH'#39' AS Department, 40 AS WorkingTime, 4.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111409'#39' AS EmployeeID, '#39'HUYNH TRAN THU NGAN'#39' AS Name, ' +
        #39'A1A2KH'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111411'#39' AS EmployeeID, '#39'HO NGOC HAN'#39' AS Name, '#39'A1A2KTh' +
        '.A'#39' AS Department, 40 AS WorkingTime, 2 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111418'#39' AS EmployeeID, '#39'LE BAO NGAN'#39' AS Name, '#39'A1A2KTh' +
        '.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111679'#39' AS EmployeeID, '#39'LE HOANG NAM'#39' AS Name, '#39'A1A2 C' +
        'BY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111682'#39' AS EmployeeID, '#39'VO MINH NGHIA'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111685'#39' AS EmployeeID, '#39'NGUYEN THI HONG THO'#39' AS Name, ' +
        #39'A1A2KTh.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111687'#39' AS EmployeeID, '#39'TRAN HOANG VIET'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111691'#39' AS EmployeeID, '#39'TRAN KHANH DUY'#39' AS Name, '#39'A1A2' +
        ' CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111696'#39' AS EmployeeID, '#39'NGUYEN THI YEN NHI'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111697'#39' AS EmployeeID, '#39'HUYNH THI THUY DUONG'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111698'#39' AS EmployeeID, '#39'HO NGUYEN MINH NGUYET'#39' AS Name' +
        ', '#39'A1A2KTh.C'#39' AS Department, 48 AS WorkingTime, 4 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111810'#39' AS EmployeeID, '#39'NGUYEN HOANG ANH'#39' AS Name, '#39'A1' +
        'A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111861'#39' AS EmployeeID, '#39'LE YEN NHI'#39' AS Name, '#39'A1A2KTh.' +
        'A'#39' AS Department, 48 AS WorkingTime, 4 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111863'#39' AS EmployeeID, '#39'THAI HONG DUY'#39' AS Name, '#39'A1A2K' +
        'Th.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111864'#39' AS EmployeeID, '#39'NGUYEN QUOC DANG'#39' AS Name, '#39'A1' +
        'A2KTh.A'#39' AS Department, 48 AS WorkingTime, 4 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111881'#39' AS EmployeeID, '#39'LUU THANH TUAN'#39' AS Name, '#39'R3BL' +
        'KT'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'111883'#39' AS EmployeeID, '#39'THACH THI SA PHA'#39' AS Name, '#39'A1' +
        'A2KTh.D'#39' AS Department, 48 AS WorkingTime, 8 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112136'#39' AS EmployeeID, '#39'TANG CHI PHAT'#39' AS Name, '#39'A1A2K' +
        'Th. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112285'#39' AS EmployeeID, '#39'TRAN THI CAM TU'#39' AS Name, '#39'A1A' +
        '2 MA'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112337'#39' AS EmployeeID, '#39'NGUYEN VAN THANH'#39' AS Name, '#39'A1' +
        'A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112343'#39' AS EmployeeID, '#39'NGUYEN THANH VINH'#39' AS Name, '#39'A' +
        '1A2KVT'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112350'#39' AS EmployeeID, '#39'NGUYEN THI NGOC HAN'#39' AS Name, ' +
        #39'A1A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112365'#39' AS EmployeeID, '#39'VO HOANG HUY'#39' AS Name, '#39'A1A2 C' +
        'BY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112366'#39' AS EmployeeID, '#39'BUI THANH TUNG'#39' AS Name, '#39'A1A2' +
        ' CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112368'#39' AS EmployeeID, '#39'NGUYEN VAN HIEU'#39' AS Name, '#39'A1A' +
        '2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112396'#39' AS EmployeeID, '#39'PHAN VAN KY'#39' AS Name, '#39'A1A2 CB' +
        'Y. CHAT'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112414'#39' AS EmployeeID, '#39'LE KIM THOA'#39' AS Name, '#39'A1A2KTh' +
        '-PR'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112427'#39' AS EmployeeID, '#39'DAO THI HONG CAM'#39' AS Name, '#39'A1' +
        'A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112477'#39' AS EmployeeID, '#39'TRUONG YEN LINH'#39' AS Name, '#39'A1A' +
        '2KTh-PR'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112558'#39' AS EmployeeID, '#39'PHAN THANH LY'#39' AS Name, '#39'A1A2K' +
        'VT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112592'#39' AS EmployeeID, '#39'TRUONG NGOC THAO'#39' AS Name, '#39'A1' +
        'A2KTh-PR'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112593'#39' AS EmployeeID, '#39'NGO THI TUYET LEN'#39' AS Name, '#39'A' +
        '1A2KTh. PMG'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112594'#39' AS EmployeeID, '#39'TRAN THI TRUC LINH'#39' AS Name, '#39 +
        'A1A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112596'#39' AS EmployeeID, '#39'NGUYEN THI MONG DIEM'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112597'#39' AS EmployeeID, '#39'LE THI PHONG DUYEN'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112598'#39' AS EmployeeID, '#39'PHAM THI NGOC THU'#39' AS Name, '#39'A' +
        '1A2KTh. PMM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112600'#39' AS EmployeeID, '#39'PHAM NHUT MINH'#39' AS Name, '#39'A1A2' +
        'KTh. PMC'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112625'#39' AS EmployeeID, '#39'PHAN HOANG ANH'#39' AS Name, '#39'A1A2' +
        'KTh. PMG'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112627'#39' AS EmployeeID, '#39'NGO VAN LAM'#39' AS Name, '#39'A1A2 CB' +
        'Y. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112628'#39' AS EmployeeID, '#39'NGUYEN THU HA'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112636'#39' AS EmployeeID, '#39'HUYNH MINH THU'#39' AS Name, '#39'A1A2' +
        ' CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112710'#39' AS EmployeeID, '#39'NGUYEN THANH TOAN'#39' AS Name, '#39'A' +
        '1A2KTh. PMG'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112714'#39' AS EmployeeID, '#39'PHAN THI HIEU'#39' AS Name, '#39'A1A2 ' +
        'CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112720'#39' AS EmployeeID, '#39'LE THI NGOC DIEP'#39' AS Name, '#39'A1' +
        'A2KTh. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112722'#39' AS EmployeeID, '#39'NGUYEN THI HAN'#39' AS Name, '#39'A1A2' +
        'KTh. PMG'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112823'#39' AS EmployeeID, '#39'TRAN MINH TIEN'#39' AS Name, '#39'A1A2' +
        ' CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112835'#39' AS EmployeeID, '#39'TRAN NGOC PHUOC THAO'#39' AS Name,' +
        ' '#39'A1A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'112868'#39' AS EmployeeID, '#39'NGUYEN THI THUY LINH'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113045'#39' AS EmployeeID, '#39'PHAM BA THINH'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113142'#39' AS EmployeeID, '#39'PHAN THI KIM TUYEN'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113143'#39' AS EmployeeID, '#39'NGUYEN THI DIEM HUONG'#39' AS Name' +
        ', '#39'A1A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113145'#39' AS EmployeeID, '#39'LE THI BAO YEN'#39' AS Name, '#39'A1A2' +
        ' CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113177'#39' AS EmployeeID, '#39'LE GIA HUY'#39' AS Name, '#39'A1A2 CBY' +
        '. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113188'#39' AS EmployeeID, '#39'NGUYEN VAN DOAN'#39' AS Name, '#39'A1A' +
        '2KVT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113262'#39' AS EmployeeID, '#39'NGUYEN NGOC NGAN'#39' AS Name, '#39'A1' +
        'A2KTh. PMG'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113288'#39' AS EmployeeID, '#39'NGUYEN THANH PHONG'#39' AS Name, '#39 +
        'R3BLKT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113293'#39' AS EmployeeID, '#39'TRAN NHU HUYNH'#39' AS Name, '#39'A1A2' +
        'PTN'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113302'#39' AS EmployeeID, '#39'NGUYEN HOANG MINH'#39' AS Name, '#39'A' +
        '1A2KCSKVT'#39' AS Department, 40 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113305'#39' AS EmployeeID, '#39'HUYNH NHAT NAM'#39' AS Name, '#39'A1A2' +
        'KTh. PMG'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113323'#39' AS EmployeeID, '#39'PHAM NGOC HUYEN'#39' AS Name, '#39'A1A' +
        '2KTh-KT.E'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113325'#39' AS EmployeeID, '#39'PHAN HOANG DANG'#39' AS Name, '#39'A1A' +
        '2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113442'#39' AS EmployeeID, '#39'DO THI TRUC LINH'#39' AS Name, '#39'A1' +
        'A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113446'#39' AS EmployeeID, '#39'DUONG THI NGOC HAN'#39' AS Name, '#39 +
        'A1A2KTh-CE'#39' AS Department, 48 AS WorkingTime, 3 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113447'#39' AS EmployeeID, '#39'NGUYEN THI HUYEN'#39' AS Name, '#39'A1' +
        'A2KTh-CE'#39' AS Department, 48 AS WorkingTime, 3 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113451'#39' AS EmployeeID, '#39'NGUYEN THI NGOC HANG'#39' AS Name,' +
        ' '#39'A1A2 MA'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113501'#39' AS EmployeeID, '#39'LE THI MY TIEN'#39' AS Name, '#39'A1A2' +
        ' MA'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113512'#39' AS EmployeeID, '#39'HUYNH NGOC HAN'#39' AS Name, '#39'A1A2' +
        'KH'#39' AS Department, 48 AS WorkingTime, 1.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113513'#39' AS EmployeeID, '#39'NGUYEN THI CAM DUYEN'#39' AS Name,' +
        ' '#39'A1A2KTh.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113592'#39' AS EmployeeID, '#39'TRUONG NGOC NHU Y'#39' AS Name, '#39'A' +
        '1A2PTN'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113771'#39' AS EmployeeID, '#39'NGUYEN NGOC TAN'#39' AS Name, '#39'A1A' +
        '2KCSKVT'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113785'#39' AS EmployeeID, '#39'NGUYEN THI NGOC HAN'#39' AS Name, ' +
        #39'A1A2 MA'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113930'#39' AS EmployeeID, '#39'BUI THI TIEM'#39' AS Name, '#39'A1A2 C' +
        'BY. GO'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113940'#39' AS EmployeeID, '#39'NGO TRONG NHAN'#39' AS Name, '#39'A1A2' +
        'KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113942'#39' AS EmployeeID, '#39'PHAM QUOC VIET'#39' AS Name, '#39'A1A2' +
        ' CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113944'#39' AS EmployeeID, '#39'LE THI HONG DIEP'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'113946'#39' AS EmployeeID, '#39'DINH THI HOANG MINH THI'#39' AS Na' +
        'me, '#39'A1A2KTh. PMM'#39' AS Department, 32 AS WorkingTime, 0 AS OverTi' +
        'me'
      '  UNION ALL'
      
        '  SELECT '#39'113947'#39' AS EmployeeID, '#39'NGUYEN THI HONG TUOI'#39' AS Name,' +
        ' '#39'A1A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTim' +
        'e'
      '  UNION ALL'
      
        '  SELECT '#39'113949'#39' AS EmployeeID, '#39'PHAN THI BICH VAN'#39' AS Name, '#39'A' +
        '1A2KTh. PMG'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114030'#39' AS EmployeeID, '#39'HUYNH BA NHAN'#39' AS Name, '#39'A1A2 ' +
        'CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114158'#39' AS EmployeeID, '#39'TONG NGUYEN HONG ANH'#39' AS Name,' +
        ' '#39'A1A2KTh. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114175'#39' AS EmployeeID, '#39'TRAN THI NGOC DUYEN'#39' AS Name, ' +
        #39'A1A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114185'#39' AS EmployeeID, '#39'HANG DUY TAN'#39' AS Name, '#39'A1A2KT' +
        'h. PMM'#39' AS Department, 16 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114186'#39' AS EmployeeID, '#39'NGUYEN PHUOC THAI'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114247'#39' AS EmployeeID, '#39'NGUYEN THANH HUNG'#39' AS Name, '#39'A' +
        '1A2KH'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114378'#39' AS EmployeeID, '#39'PHAM HUYNH DIEM TRINH'#39' AS Name' +
        ', '#39'A1A2KH'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114537'#39' AS EmployeeID, '#39'HO THI CAM DUYEN'#39' AS Name, '#39'A1' +
        'A2KHTH.KVT.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114622'#39' AS EmployeeID, '#39'TRAN THI NGUYET ANH'#39' AS Name, ' +
        #39'A1A2KTh.D'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114623'#39' AS EmployeeID, '#39'TRAN THI HONG GAM'#39' AS Name, '#39'A' +
        '1A2KTh.D'#39' AS Department, 40 AS WorkingTime, 6 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114624'#39' AS EmployeeID, '#39'HUYNH NGOC NHU'#39' AS Name, '#39'A1A2' +
        'KTh-SQ.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114625'#39' AS EmployeeID, '#39'VO HOANG KIET'#39' AS Name, '#39'A1A2K' +
        'H'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114820'#39' AS EmployeeID, '#39'NGUYEN THI NGOC LINH'#39' AS Name,' +
        ' '#39'A1A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114822'#39' AS EmployeeID, '#39'TRAN THI TAM DOAN'#39' AS Name, '#39'A' +
        '1A2KTh. PMC'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114824'#39' AS EmployeeID, '#39'NGUYEN THI LE THAM'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114826'#39' AS EmployeeID, '#39'NGUYEN THI NGOC THAO'#39' AS Name,' +
        ' '#39'A1A2KTh. PMG'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114827'#39' AS EmployeeID, '#39'VO THANH HAI'#39' AS Name, '#39'A1A2 C' +
        'BY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114828'#39' AS EmployeeID, '#39'TRAN VU MINH'#39' AS Name, '#39'A1A2 C' +
        'BY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114829'#39' AS EmployeeID, '#39'HUYNH THANH NHANG'#39' AS Name, '#39'A' +
        '1A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114831'#39' AS EmployeeID, '#39'LE VAN PHAT'#39' AS Name, '#39'A1A2KTh' +
        '. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114832'#39' AS EmployeeID, '#39'DAO HUYNH HUNG QUOC'#39' AS Name, ' +
        #39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114842'#39' AS EmployeeID, '#39'NGUYEN CHI CUONG'#39' AS Name, '#39'R3' +
        'BLKT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114868'#39' AS EmployeeID, '#39'NGUYEN VIET TRUONG'#39' AS Name, '#39 +
        'A1A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114870'#39' AS EmployeeID, '#39'NGUYEN AI BUU'#39' AS Name, '#39'A1A2 ' +
        'CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114879'#39' AS EmployeeID, '#39'NGUYEN HUU KHANH'#39' AS Name, '#39'A1' +
        'A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114880'#39' AS EmployeeID, '#39'NGUYEN THI CAM HAN'#39' AS Name, '#39 +
        'A1A2 CBY. MAY'#39' AS Department, 42.5 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114903'#39' AS EmployeeID, '#39'DANG THI THANH HUYEN'#39' AS Name,' +
        ' '#39'A1A2TM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114944'#39' AS EmployeeID, '#39'PHAN THANH PHONG'#39' AS Name, '#39'A1' +
        'A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114946'#39' AS EmployeeID, '#39'BUI KHANH DUY'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114947'#39' AS EmployeeID, '#39'NGUYEN TIEU LONG'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'114988'#39' AS EmployeeID, '#39'LE THI TRUC GIANG'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115027'#39' AS EmployeeID, '#39'LUU GIA HAN'#39' AS Name, '#39'A1A2KTh' +
        '. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115082'#39' AS EmployeeID, '#39'HUYNH THI THUY'#39' AS Name, '#39'A1A2' +
        'KCSKVT'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115083'#39' AS EmployeeID, '#39'TRUONG VINH TIEN'#39' AS Name, '#39'A1' +
        'A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115087'#39' AS EmployeeID, '#39'LE HONG PHUNG'#39' AS Name, '#39'A1A2K' +
        'CSKVT'#39' AS Department, 40 AS WorkingTime, 6 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115090'#39' AS EmployeeID, '#39'NGUYEN THI CAM LUYEN'#39' AS Name,' +
        ' '#39'A1A2 MA'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115132'#39' AS EmployeeID, '#39'PHAN SIN DONG'#39' AS Name, '#39'A1A2K' +
        'CSKVT'#39' AS Department, 40 AS WorkingTime, 6 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115148'#39' AS EmployeeID, '#39'TRUONG MINH THUAN'#39' AS Name, '#39'A' +
        '1A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115185'#39' AS EmployeeID, '#39'PHAM DUY TAN'#39' AS Name, '#39'A1A2KV' +
        'T'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115219'#39' AS EmployeeID, '#39'NGUYEN MINH DAT'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115220'#39' AS EmployeeID, '#39'LE TRUNG HAI'#39' AS Name, '#39'A1A2 C' +
        'BY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115221'#39' AS EmployeeID, '#39'HO BE NGOAN'#39' AS Name, '#39'A1A2 CB' +
        'Y. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115223'#39' AS EmployeeID, '#39'NGUYEN BAO TRAN'#39' AS Name, '#39'A1A' +
        '2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115225'#39' AS EmployeeID, '#39'PHAM THI HONG TIEN'#39' AS Name, '#39 +
        'A1A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115234'#39' AS EmployeeID, '#39'NGUYEN VAN CHIEN'#39' AS Name, '#39'A1' +
        'A2KTh. PMM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115236'#39' AS EmployeeID, '#39'NGUYEN PHUONG TRANG'#39' AS Name, ' +
        #39'A1A2KTh-SQ.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115240'#39' AS EmployeeID, '#39'DO NGOC HANH DUYEN'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115243'#39' AS EmployeeID, '#39'PHAN THI HONG NHAN'#39' AS Name, '#39 +
        'A1A2KTh. PMC'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115276'#39' AS EmployeeID, '#39'VO THI ANH THI'#39' AS Name, '#39'A1A2' +
        'KTh-KT.A'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115277'#39' AS EmployeeID, '#39'PHAM THI NGOC TRAN'#39' AS Name, '#39 +
        'A1A2KTh-KT.A'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115291'#39' AS EmployeeID, '#39'HUYNH NGOC DUYEN'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115294'#39' AS EmployeeID, '#39'NGUYEN THI PHUONG THAO'#39' AS Nam' +
        'e, '#39'A1A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTi' +
        'me'
      '  UNION ALL'
      
        '  SELECT '#39'115295'#39' AS EmployeeID, '#39'BUI NGOC NHI'#39' AS Name, '#39'A1A2 C' +
        'BY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115298'#39' AS EmployeeID, '#39'NGUYEN KIM LIEN'#39' AS Name, '#39'A1A' +
        '2KTh. PMM'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115299'#39' AS EmployeeID, '#39'HUYNH THI CAM TU'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115304'#39' AS EmployeeID, '#39'NGUYEN THI NGOC THU'#39' AS Name, ' +
        #39'A1A2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115305'#39' AS EmployeeID, '#39'PHAM THI MY NHUNG'#39' AS Name, '#39'A' +
        '1A2KTh. PMC'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115306'#39' AS EmployeeID, '#39'NGUYEN THI THANH HIEN'#39' AS Name' +
        ', '#39'A1A2KTh. PMG'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115307'#39' AS EmployeeID, '#39'NGUYEN MINH THANG'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115308'#39' AS EmployeeID, '#39'HUYNH CHE LINH'#39' AS Name, '#39'A1A2' +
        ' CBY. GO'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115438'#39' AS EmployeeID, '#39'TRAN THI TUYET NHO'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115442'#39' AS EmployeeID, '#39'NGUYEN DUONG QUOC VIET'#39' AS Nam' +
        'e, '#39'A1A2KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115459'#39' AS EmployeeID, '#39'NGUYEN THI NGOC TRAM'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115463'#39' AS EmployeeID, '#39' NGUYEN THI TRAM ANH'#39' AS Name,' +
        ' '#39'A1A2 CBY. MAY'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115464'#39' AS EmployeeID, '#39'HUYNH THI HONG THUY'#39' AS Name, ' +
        #39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115465'#39' AS EmployeeID, '#39'NGUYEN THI HONG HUE'#39' AS Name, ' +
        #39'A1A2 CBY. GO'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115467'#39' AS EmployeeID, '#39'NGUYEN VAN QUY'#39' AS Name, '#39'A1A2' +
        ' CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115601'#39' AS EmployeeID, '#39'PHAM HUU LUAN'#39' AS Name, '#39'A1A2K' +
        'Th. PMG'#39' AS Department, 48 AS WorkingTime, 6 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115602'#39' AS EmployeeID, '#39'LE HOANG ANH'#39' AS Name, '#39'A1A2 C' +
        'BY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115607'#39' AS EmployeeID, '#39'TRUONG QUAN LINH'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115621'#39' AS EmployeeID, '#39'KIEN TRUONG GIANG'#39' AS Name, '#39'A' +
        '1A2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115622'#39' AS EmployeeID, '#39'NGUYEN THANH TIEN'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115653'#39' AS EmployeeID, '#39'TRAN VAN KHANG'#39' AS Name, '#39'A1A2' +
        ' CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115664'#39' AS EmployeeID, '#39'DANG NGOC TRINH'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115715'#39' AS EmployeeID, '#39'NGUYEN HUU NGHIA'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115716'#39' AS EmployeeID, '#39'LE CHI CAN'#39' AS Name, '#39'A1A2 CBY' +
        '. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115718'#39' AS EmployeeID, '#39'HUYNH THI LAN TUYEN'#39' AS Name, ' +
        #39'A1A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115731'#39' AS EmployeeID, '#39'TON THI THANH THUY'#39' AS Name, '#39 +
        'A1A2KTh. PMG'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115736'#39' AS EmployeeID, '#39'NGUYEN THANH BINH'#39' AS Name, '#39'A' +
        '1A2 CBY. MAY'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115793'#39' AS EmployeeID, '#39'VO TAN PHAT'#39' AS Name, '#39'A1A2 CB' +
        'Y. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115795'#39' AS EmployeeID, '#39'NGUYEN THI BE HUONG'#39' AS Name, ' +
        #39'A1A2 CBY. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115796'#39' AS EmployeeID, '#39'NGUYEN THI HUONG'#39' AS Name, '#39'A1' +
        'A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115800'#39' AS EmployeeID, '#39'PHAM THI TUYET NGAN'#39' AS Name, ' +
        #39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115821'#39' AS EmployeeID, '#39'NGUYEN HOANG LINH'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115823'#39' AS EmployeeID, '#39'NGO YEN TUYET'#39' AS Name, '#39'A1A2P' +
        'TN'#39' AS Department, 40 AS WorkingTime, 1.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115834'#39' AS EmployeeID, '#39'LE QUOC THANG'#39' AS Name, '#39'A1A2K' +
        'VT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115842'#39' AS EmployeeID, '#39'NGUYEN THI HUYNH NHU'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115845'#39' AS EmployeeID, '#39'PHAM HOANG DUNG'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115846'#39' AS EmployeeID, '#39'NGUYEN HOANG THUY AN'#39' AS Name,' +
        ' '#39'A1A2PTN'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115853'#39' AS EmployeeID, '#39'TRAN VAN NHUT'#39' AS Name, '#39'A1A2K' +
        'HTH.KVT.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115854'#39' AS EmployeeID, '#39'LE PHUOC LOI'#39' AS Name, '#39'A1A2 C' +
        'BY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115855'#39' AS EmployeeID, '#39'DOAN NGOC HAN'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115882'#39' AS EmployeeID, '#39'HO THI NHU Y'#39' AS Name, '#39'A1A2 C' +
        'BY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115891'#39' AS EmployeeID, '#39'NGUYEN THI TUYET VAN'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115892'#39' AS EmployeeID, '#39'THAI NGOC DIEM'#39' AS Name, '#39'A1A2' +
        ' CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115893'#39' AS EmployeeID, '#39'NGUYEN THANH HANG'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115930'#39' AS EmployeeID, '#39'HUYNH KHAI HUNG'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115931'#39' AS EmployeeID, '#39'NGUYEN THI THANH NHI'#39' AS Name,' +
        ' '#39'A1A2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTim' +
        'e'
      '  UNION ALL'
      
        '  SELECT '#39'115976'#39' AS EmployeeID, '#39'VO QUANG THE'#39' AS Name, '#39'A1A2KH' +
        'TH.KVT.PM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115982'#39' AS EmployeeID, '#39'DO THI THUY NHUNG'#39' AS Name, '#39'A' +
        '1A2 MA'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115983'#39' AS EmployeeID, '#39'THACH THI HOANG CHAU'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115984'#39' AS EmployeeID, '#39'NGUYEN THI NGOC HAN'#39' AS Name, ' +
        #39'A1A2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115992'#39' AS EmployeeID, '#39'NGUYEN VU BINH'#39' AS Name, '#39'A1A2' +
        'KTh.E'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115993'#39' AS EmployeeID, '#39'DANG HOANG NAM'#39' AS Name, '#39'A1A2' +
        'KTh-KT.E'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'115994'#39' AS EmployeeID, '#39'VO THI HOANG DIEM'#39' AS Name, '#39'A' +
        '1A2KTh-KT.E'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116018'#39' AS EmployeeID, '#39'LE PHUC DUY'#39' AS Name, '#39'A1A2 CB' +
        'Y. GO'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116060'#39' AS EmployeeID, '#39'TRAN THANH LOC'#39' AS Name, '#39'A1A2' +
        ' CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116260'#39' AS EmployeeID, '#39'TRAN DUY NGUYEN'#39' AS Name, '#39'R3B' +
        'LKT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116298'#39' AS EmployeeID, '#39'TRAN THI CAM TU'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116300'#39' AS EmployeeID, '#39'LE HOANG NGOC THAI'#39' AS Name, '#39 +
        'A1A2KTh.C'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116332'#39' AS EmployeeID, '#39'NGUYEN LY HUNG'#39' AS Name, '#39'A1A2' +
        'KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116378'#39' AS EmployeeID, '#39'NGUYEN THI HONG THAM'#39' AS Name,' +
        ' '#39'A1A2PTN'#39' AS Department, 40 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116427'#39' AS EmployeeID, '#39'NGUYEN KHANH TUONG'#39' AS Name, '#39 +
        'R3BLKT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116429'#39' AS EmployeeID, '#39'LE THANH VU'#39' AS Name, '#39'R3BLKT'#39 +
        ' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116457'#39' AS EmployeeID, '#39'MAI BE DIEU'#39' AS Name, '#39'A1A2KTh' +
        '. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116458'#39' AS EmployeeID, '#39'NGUYEN THI THUY LINH'#39' AS Name,' +
        ' '#39'A1A2KH'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116459'#39' AS EmployeeID, '#39'DUONG TRONG KHIEM'#39' AS Name, '#39'A' +
        '1A2NV'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116461'#39' AS EmployeeID, '#39'LE HOANG DIEU'#39' AS Name, '#39'A1A2K' +
        'CSKVT'#39' AS Department, 48 AS WorkingTime, 7.5 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116483'#39' AS EmployeeID, '#39'NGUYEN MINH TRUNG'#39' AS Name, '#39'A' +
        '1A2KTh. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116484'#39' AS EmployeeID, '#39'LE TRUNG CANG'#39' AS Name, '#39'A1A2K' +
        'Th. PMC'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116516'#39' AS EmployeeID, '#39'TRUONG VAN PHUONG'#39' AS Name, '#39'A' +
        '1A2KTh. PMM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116538'#39' AS EmployeeID, '#39'LE CAM TU'#39' AS Name, '#39'A1A2 MA'#39' ' +
        'AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116573'#39' AS EmployeeID, '#39'PHAM THANH THAI'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 16 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116574'#39' AS EmployeeID, '#39'DOAN THANH SU'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116575'#39' AS EmployeeID, '#39'TRAN THI TRUC LINH'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116576'#39' AS EmployeeID, '#39'THACH THI HUONG'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116579'#39' AS EmployeeID, '#39'LE THI HUYNH HOA'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116580'#39' AS EmployeeID, '#39'LUU MINH CHAU'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116596'#39' AS EmployeeID, '#39'TRAN MINH QUI'#39' AS Name, '#39'A1A2 ' +
        'CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116599'#39' AS EmployeeID, '#39'HO THI THU SUONG'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116600'#39' AS EmployeeID, '#39'NGUYEN THI THANH THUY'#39' AS Name' +
        ', '#39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116601'#39' AS EmployeeID, '#39'NGUYEN NGOC NHU Y'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116602'#39' AS EmployeeID, '#39'VO THI KIM NGAN'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116607'#39' AS EmployeeID, '#39'NGUYEN DUY TAN'#39' AS Name, '#39'A1A2' +
        'KTh-KT.E'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116624'#39' AS EmployeeID, '#39'TRUONG VAN BI BON'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116625'#39' AS EmployeeID, '#39'NGUYEN THI BE HAI'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116627'#39' AS EmployeeID, '#39'TRAN THI THAO'#39' AS Name, '#39'A1A2 ' +
        'MA'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116639'#39' AS EmployeeID, '#39'PHAM QUOC VUONG'#39' AS Name, '#39'A1A' +
        '2KVT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116646'#39' AS EmployeeID, '#39'TRAN HONG CAM TRI'#39' AS Name, '#39'A' +
        '1A2KVT'#39' AS Department, 32 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116653'#39' AS EmployeeID, '#39'HUYNH HA PHUONG NGAN'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 44 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116654'#39' AS EmployeeID, '#39'NGUYEN MINH SANG'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116655'#39' AS EmployeeID, '#39'TRAN THANH TINH'#39' AS Name, '#39'A1A' +
        '2 CBY. GO'#39' AS Department, 24 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116656'#39' AS EmployeeID, '#39'NGUYEN TRIEU GIA'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 42.5 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116657'#39' AS EmployeeID, '#39'BUI THI KIM UYEN'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116660'#39' AS EmployeeID, '#39'TRAN THI YEN PHUONG'#39' AS Name, ' +
        #39'A1A2 MA'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116684'#39' AS EmployeeID, '#39'NGUYEN THI NHI'#39' AS Name, '#39'A1A2' +
        'KVT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116688'#39' AS EmployeeID, '#39'CHAU THI KIM NGUYEN'#39' AS Name, ' +
        #39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116689'#39' AS EmployeeID, '#39'NGUYEN THI HONG HANH'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116690'#39' AS EmployeeID, '#39'NGUYEN THI HONG THUY'#39' AS Name,' +
        ' '#39'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116707'#39' AS EmployeeID, '#39'HA CAM THU NGOC'#39' AS Name, '#39'A1A' +
        '2TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116708'#39' AS EmployeeID, '#39'DO THI MY DUYEN'#39' AS Name, '#39'A1A' +
        '2KTh.TM'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116709'#39' AS EmployeeID, '#39'BUI THI MY NGOC'#39' AS Name, '#39'A1A' +
        '2KTh.C'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116900'#39' AS EmployeeID, '#39'TRAN THI THUY DUNG'#39' AS Name, '#39 +
        'A1A2 CBY. CHAT'#39' AS Department, 40 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116901'#39' AS EmployeeID, '#39'LE THI CAM THUAN'#39' AS Name, '#39'A1' +
        'A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116902'#39' AS EmployeeID, '#39'NGUYEN THUY KIEU'#39' AS Name, '#39'A1' +
        'A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116903'#39' AS EmployeeID, '#39'NGUYEN THI HONG THAM'#39' AS Name,' +
        ' '#39'A1A2 CBY. MAY'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116904'#39' AS EmployeeID, '#39'TRAN THI THANH TUYEN'#39' AS Name,' +
        ' '#39'A1A2KTh. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116905'#39' AS EmployeeID, '#39'LE THI BE BAY'#39' AS Name, '#39'A1A2K' +
        'Th. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116906'#39' AS EmployeeID, '#39'VO THI DIEU'#39' AS Name, '#39'A1A2KTh' +
        '. PMG'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116912'#39' AS EmployeeID, '#39'TRAN THI HUYNH NHU'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116913'#39' AS EmployeeID, '#39'PHAM THI THUY VAN'#39' AS Name, '#39'A' +
        '1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116914'#39' AS EmployeeID, '#39'HUYNH THI NGOC YEN'#39' AS Name, '#39 +
        'A1A2 CBY. GO'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      
        '  SELECT '#39'116915'#39' AS EmployeeID, '#39'LE HUU TIN'#39' AS Name, '#39'A1A2 CBY' +
        '. CHAT'#39' AS Department, 48 AS WorkingTime, 0 AS OverTime'
      '  UNION ALL'
      '  SELECT '#39'116918'#39' AS EmployeeID, '#39'VO HOANG VU'#39' AS Name, '#39'A1A2 ')
    Left = 48
    Top = 136
    object Query1EmployeeID: TStringField
      FieldName = 'EmployeeID'
      Size = 10
    end
    object Query1EngName: TStringField
      FieldName = 'EngName'
    end
    object Query1Name: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object Query1Department: TStringField
      FieldName = 'Department'
    end
    object Query1WorkingTime: TFloatField
      FieldName = 'WorkingTime'
    end
    object Query1OverTime: TFloatField
      FieldName = 'OverTime'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CommandTimeout = 0
    Parameters = <>
    Left = 1048
    Top = 128
    object ADOQuery1NV_MA: TStringField
      FieldName = 'NV_MA'
      Size = 10
    end
    object ADOQuery1QT_NGAY: TDateTimeField
      FieldName = 'QT_NGAY'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ADOQuery1CC_GIOBINHTHUONG: TFloatField
      FieldName = 'CC_GIOBINHTHUONG'
    end
    object ADOQuery1CC_GIOTANGCA: TFloatField
      FieldName = 'CC_GIOTANGCA'
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 1088
    Top = 168
  end
  object QryMonth: TQuery
    DatabaseName = 'DB'
    Left = 72
    Top = 288
    object StringField1: TStringField
      FieldName = 'EmployeeID'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'EngName'
    end
    object StringField3: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'Department'
    end
    object FloatField1: TFloatField
      FieldName = 'WorkingTime'
    end
    object FloatField2: TFloatField
      FieldName = 'OverTime'
    end
  end
  object DSMonth: TDataSource
    DataSet = QryMonth
    Left = 72
    Top = 256
  end
  object DSYear: TDataSource
    DataSet = QryYear
    Left = 112
    Top = 256
  end
  object QryYear: TQuery
    DatabaseName = 'DB'
    Left = 112
    Top = 288
    object StringField5: TStringField
      FieldName = 'EmployeeID'
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'EngName'
    end
    object StringField7: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'Department'
    end
    object FloatField3: TFloatField
      FieldName = 'WorkingTime'
    end
    object FloatField4: TFloatField
      FieldName = 'OverTime'
    end
  end
  object DSWeek: TDataSource
    DataSet = QryWeek
    Left = 40
    Top = 256
  end
  object QryWeek: TQuery
    DatabaseName = 'DB'
    Left = 40
    Top = 288
    object StringField9: TStringField
      FieldName = 'EmployeeID'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'EngName'
    end
    object StringField11: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object StringField12: TStringField
      FieldName = 'Department'
    end
    object FloatField5: TFloatField
      FieldName = 'WorkingTime'
    end
    object FloatField6: TFloatField
      FieldName = 'OverTime'
    end
  end
end
