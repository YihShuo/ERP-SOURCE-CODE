object Baophe: TBaophe
  Left = 460
  Top = 194
  Width = 1305
  Height = 675
  Caption = 'Baophe'
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
  object BaoPhe: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Bao Phe'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 73
        Width = 1281
        Height = 535
        Align = alClient
        DataSource = DS1
        EvenRowColor = clYellow
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ID'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DonVi'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TenHoaChat'
            Footers = <>
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'SoLuong'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NguoiNhap'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NgayNhap'
            Footers = <>
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 73
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 480
          Top = 8
          Width = 41
          Height = 16
          Caption = 'So KG:'
        end
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 69
          Height = 16
          Caption = 'Phong Keo:'
        end
        object Label3: TLabel
          Left = 240
          Top = 8
          Width = 41
          Height = 16
          Caption = 'Don vi:'
        end
        object Label4: TLabel
          Left = 8
          Top = 40
          Width = 59
          Height = 16
          Caption = 'Hoa Chat:'
        end
        object Label5: TLabel
          Left = 728
          Top = 8
          Width = 45
          Height = 16
          Caption = 'kg_limit'
        end
        object Query: TButton
          Left = 912
          Top = 29
          Width = 113
          Height = 33
          Hint = #39023#31034#26597#35426
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = QueryClick
        end
        object Edit1: TEdit
          Left = 552
          Top = 0
          Width = 145
          Height = 24
          Color = clYellow
          TabOrder = 1
        end
        object Button2: TButton
          Left = 464
          Top = 29
          Width = 113
          Height = 33
          Hint = #39023#31034#26597#35426
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button2Click
        end
        object ComboBox1: TComboBox
          Left = 80
          Top = 0
          Width = 145
          Height = 24
          ItemHeight = 16
          TabOrder = 3
          OnChange = ComboBox1Change
          Items.Strings = (
            ''
            'Xuong_A'
            'Xuong_B')
        end
        object ComboBox3: TComboBox
          Left = 80
          Top = 32
          Width = 377
          Height = 24
          ItemHeight = 16
          TabOrder = 4
          OnChange = ComboBox3Change
        end
        object ComboBox2: TComboBox
          Left = 288
          Top = 0
          Width = 145
          Height = 24
          ItemHeight = 16
          TabOrder = 5
          OnChange = ComboBox2Change
        end
        object mofidy: TButton
          Left = 576
          Top = 29
          Width = 113
          Height = 33
          Hint = #39023#31034#26597#35426
          Caption = 'Modify'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = mofidyClick
        end
        object Delete: TButton
          Left = 688
          Top = 29
          Width = 113
          Height = 33
          Hint = #39023#31034#26597#35426
          Caption = 'Delete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = DeleteClick
        end
        object Cancel: TButton
          Left = 800
          Top = 29
          Width = 113
          Height = 33
          Hint = #39023#31034#26597#35426
          Caption = 'Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = CancelClick
        end
        object All: TCheckBox
          Left = 1032
          Top = 48
          Width = 33
          Height = 17
          Caption = 'All'
          TabOrder = 9
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Thong Ke'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 73
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 69
          Height = 16
          Caption = 'Phong Keo:'
        end
        object Label6: TLabel
          Left = 8
          Top = 32
          Width = 59
          Height = 16
          Caption = 'Thoi gian:'
        end
        object Button1: TButton
          Left = 232
          Top = 5
          Width = 113
          Height = 33
          Hint = #39023#31034#26597#35426
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object cbx4: TComboBox
          Left = 80
          Top = 0
          Width = 145
          Height = 24
          ItemHeight = 16
          TabOrder = 1
          OnChange = ComboBox1Change
          Items.Strings = (
            ''
            'Xuong_A'
            'Xuong_B')
        end
        object All1: TCheckBox
          Left = 352
          Top = 24
          Width = 33
          Height = 17
          Caption = 'All'
          TabOrder = 2
        end
        object DTP1: TDateTimePicker
          Left = 80
          Top = 24
          Width = 146
          Height = 24
          Date = 46211.406029849540000000
          Format = 'yyyy-MM'
          Time = 46211.406029849540000000
          TabOrder = 3
        end
        object Button3: TButton
          Left = 400
          Top = 5
          Width = 81
          Height = 33
          Hint = #39023#31034#26597#35426
          Caption = 'Excel XA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 488
          Top = 5
          Width = 81
          Height = 33
          Hint = #39023#31034#26597#35426
          Caption = 'Excel XB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = Button4Click
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 73
        Width = 1281
        Height = 535
        Align = alClient
        DataSource = DS2
        EvenRowColor = clYellow
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
        OnGetCellParams = DBGridEh2GetCellParams
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '    BP.ID, '
      '    BP.DepID AS DonVi, '
      '    F.name AS TenHoaChat, '
      '    BP.Weight AS SoLuong, '
      '    BP.Userid AS NguoiNhap, '
      '    BP.Userdate AS NgayNhap'
      'FROM CH_BP BP'
      'LEFT JOIN CH_Formula F '
      '    ON BP.ID_Formula = F.id'
      'WHERE BP.YN = 1'
      'ORDER BY BP.Userdate DESC;')
    Left = 24
    Top = 144
    object Query1ID: TAutoIncField
      FieldName = 'ID'
    end
    object Query1DonVi: TStringField
      FieldName = 'DonVi'
      FixedChar = True
    end
    object Query1TenHoaChat: TStringField
      FieldName = 'TenHoaChat'
      FixedChar = True
      Size = 250
    end
    object Query1SoLuong: TFloatField
      FieldName = 'SoLuong'
    end
    object Query1NguoiNhap: TStringField
      FieldName = 'NguoiNhap'
      FixedChar = True
      Size = 10
    end
    object Query1NgayNhap: TDateTimeField
      FieldName = 'NgayNhap'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 64
    Top = 144
  end
  object Up: TUpdateSQL
    ModifySQL.Strings = (
      'update Ch_formula'
      'set'
      '  HC1 = :HC1,'
      '  HC2 = :HC2,'
      '  HC3 = :HC3,'
      '  TL1 = :TL1,'
      '  TL2 = :TL2,'
      '  TL3 = :TL3,'
      '  Name = :Name'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into Ch_formula'
      '  (ID, HC1, HC2, HC3, TL1, TL2, TL3, Name)'
      'values'
      '  (:ID, :HC1, :HC2, :HC3, :TL1, :TL2, :TL3, :Name)')
    DeleteSQL.Strings = (
      'delete from Ch_formula'
      'where'
      '  ID = :OLD_ID and'
      '  HC1 = :OLD_HC1 and'
      '  HC2 = :OLD_HC2 and'
      '  HC3 = :OLD_HC3 and'
      '  TL1 = :OLD_TL1 and'
      '  TL2 = :OLD_TL2 and'
      '  TL3 = :OLD_TL3 and'
      '  Name = :OLD_Name')
    Left = 60
    Top = 184
  end
  object temp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  * from Ch_BP')
    UpdateObject = Up
    Left = 24
    Top = 184
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  * from Ch_BP')
    Left = 24
    Top = 224
    object AutoIncField1: TAutoIncField
      FieldName = 'ID'
      Origin = 'DB.CH_BP.ID'
    end
    object StringField1: TStringField
      FieldName = 'DepID'
      Origin = 'DB.CH_BP.DepID'
      FixedChar = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID_Formula'
      Origin = 'DB.CH_BP.ID_Formula'
    end
    object FloatField1: TFloatField
      FieldName = 'Weight'
      Origin = 'DB.CH_BP.Weight'
    end
    object StringField2: TStringField
      FieldName = 'Userid'
      Origin = 'DB.CH_BP.Userid'
      FixedChar = True
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Userdate'
      Origin = 'DB.CH_BP.Userdate'
    end
    object BooleanField1: TBooleanField
      FieldName = 'YN'
      Origin = 'DB.CH_BP.YN'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  * from Ch_BP')
    Left = 64
    Top = 224
  end
  object DS2: TDataSource
    DataSet = Query4
    Left = 472
    Top = 160
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '    BP.ID, '
      '    BP.DepID AS DonVi, '
      '    F.name AS TenHoaChat, '
      '    BP.Weight AS SoLuong, '
      '    BP.Userid AS NguoiNhap, '
      '    BP.Userdate AS NgayNhap'
      'FROM CH_BP BP'
      'LEFT JOIN CH_Formula F '
      '    ON BP.ID_Formula = F.id'
      'WHERE BP.YN = 1'
      'ORDER BY BP.Userdate DESC;')
    Left = 472
    Top = 184
  end
end
