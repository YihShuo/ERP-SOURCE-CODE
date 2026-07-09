object PrintingInk: TPrintingInk
  Left = 638
  Top = 134
  Width = 1167
  Height = 444
  Caption = 'PrintingInk'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 13
    Top = 176
    Width = 108
    Height = 16
    Alignment = taRightJustify
    Caption = 'Compouding(B25)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 1151
    Height = 405
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Pinting Ink'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1143
        Height = 217
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 29
          Top = 16
          Width = 44
          Height = 16
          Alignment = taRightJustify
          Caption = 'INK NO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 14
          Top = 80
          Width = 99
          Height = 16
          Alignment = taRightJustify
          Caption = 'Sque/times(A25)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 5
          Top = 104
          Width = 108
          Height = 16
          Alignment = taRightJustify
          Caption = 'Compouding(B25)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 623
          Top = 88
          Width = 90
          Height = 16
          Alignment = taRightJustify
          Caption = 'KG before(F25)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 634
          Top = 112
          Width = 79
          Height = 16
          Alignment = taRightJustify
          Caption = 'KG after(G25)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 835
          Top = 88
          Width = 70
          Height = 16
          Alignment = taRightJustify
          Caption = 'Output(H25)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 9
          Top = 128
          Width = 104
          Height = 16
          Alignment = taRightJustify
          Caption = 'Ink Unit Cost(C25)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 24
          Top = 152
          Width = 89
          Height = 16
          Alignment = taRightJustify
          Caption = 'Hardener(D25)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn4: TBitBtn
          Left = 488
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
          TabOrder = 0
          OnClick = BitBtn4Click
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BitBtn5: TBitBtn
          Left = 392
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn5Click
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BitBtn6: TBitBtn
          Left = 440
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Insert'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn6Click
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object Edit5: TEdit
          Left = 75
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
        object Edit8: TEdit
          Left = 115
          Top = 73
          Width = 350
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '6/3'
        end
        object Edit9: TEdit
          Left = 115
          Top = 97
          Width = 390
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = '92% (40% YC-280LIP-104, 60% YC-280-83) + 8% YC-280-5523'
        end
        object Edit10: TEdit
          Left = 715
          Top = 81
          Width = 94
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = '0.3767'
        end
        object Edit11: TEdit
          Left = 715
          Top = 105
          Width = 94
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = '0.2704'
        end
        object Edit12: TEdit
          Left = 907
          Top = 81
          Width = 94
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Text = '42'
        end
        object Edit1: TEdit
          Left = 115
          Top = 121
          Width = 390
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Text = '=40%*200+16.5*60%'
        end
        object Edit2: TEdit
          Left = 115
          Top = 145
          Width = 390
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Text = '25.36'
        end
      end
      object dbgrdh3: TDBGridEh
        Left = 0
        Top = 217
        Width = 1143
        Height = 160
        Align = alClient
        DataSource = ds21
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
            FieldName = 'InkNGlue_No'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Cost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'squeegees'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'times'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ink1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ink1_Name'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ink1_Cost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ink2'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ink2_Name'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ink2_Cost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ink3'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ink3_Name'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ink3_Cost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CompoudCost'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TotalKGBefore'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TotalKGAfter'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Output'
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
    object ts2: TTabSheet
      Caption = 'Ink Cost Library'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1143
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 26
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
        object lbl911: TLabel
          Left = 12
          Top = 40
          Width = 61
          Height = 16
          Alignment = taRightJustify
          Caption = 'INK Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn2: TBitBtn
          Left = 392
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn2Click
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object edt8: TEdit
          Left = 75
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
          TabOrder = 1
        end
        object edt811: TEdit
          Left = 75
          Top = 33
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
        end
      end
      object dbgrdh2: TDBGridEh
        Left = 0
        Top = 81
        Width = 1143
        Height = 296
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
      end
    end
  end
  object ds2: TDataSource
    DataSet = qry_INK
    Left = 348
    Top = 256
  end
  object Qry_List: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CostingPrintCostS.* from CostingPrintCostS')
    UpdateObject = updtsql11
    Left = 228
    Top = 216
    object Qry_ListInkNGlue_No: TIntegerField
      FieldName = 'InkNGlue_No'
      Origin = 'DB.CostingPrintCostS.InkNGlue_No'
    end
    object Qry_ListRound: TIntegerField
      FieldName = 'Round'
      Origin = 'DB.CostingPrintCostS.Round'
    end
    object Qry_ListCost: TCurrencyField
      FieldName = 'Cost'
      Origin = 'DB.CostingPrintCostS.Cost'
      currency = False
    end
    object Qry_Listsqueegees: TIntegerField
      FieldName = 'squeegees'
      Origin = 'DB.CostingPrintCostS.squeegees'
    end
    object Qry_Listtimes: TIntegerField
      FieldName = 'times'
      Origin = 'DB.CostingPrintCostS.times'
    end
    object Qry_ListInk1: TCurrencyField
      FieldName = 'Ink1'
      Origin = 'DB.CostingPrintCostS.Ink1'
      currency = False
    end
    object Qry_ListInk1_Name: TStringField
      FieldName = 'Ink1_Name'
      Origin = 'DB.CostingPrintCostS.Ink1_Name'
      FixedChar = True
    end
    object Qry_ListInk1_Cost: TCurrencyField
      FieldName = 'Ink1_Cost'
      Origin = 'DB.CostingPrintCostS.Ink1_Cost'
      currency = False
    end
    object Qry_ListInk2: TCurrencyField
      FieldName = 'Ink2'
      Origin = 'DB.CostingPrintCostS.Ink2'
      currency = False
    end
    object Qry_ListInk2_Name: TStringField
      FieldName = 'Ink2_Name'
      Origin = 'DB.CostingPrintCostS.Ink2_Name'
      FixedChar = True
    end
    object Qry_ListInk2_Cost: TCurrencyField
      FieldName = 'Ink2_Cost'
      Origin = 'DB.CostingPrintCostS.Ink2_Cost'
      currency = False
    end
    object Qry_ListInk3: TCurrencyField
      FieldName = 'Ink3'
      Origin = 'DB.CostingPrintCostS.Ink3'
      currency = False
    end
    object Qry_ListInk3_Name: TStringField
      FieldName = 'Ink3_Name'
      Origin = 'DB.CostingPrintCostS.Ink3_Name'
      FixedChar = True
    end
    object Qry_ListInk3_Cost: TCurrencyField
      FieldName = 'Ink3_Cost'
      Origin = 'DB.CostingPrintCostS.Ink3_Cost'
      currency = False
    end
    object Qry_ListCompoudCost: TCurrencyField
      FieldName = 'CompoudCost'
      Origin = 'DB.CostingPrintCostS.CompoudCost'
      currency = False
    end
    object Qry_ListTotalKGBefore: TCurrencyField
      FieldName = 'TotalKGBefore'
      Origin = 'DB.CostingPrintCostS.TotalKGBefore'
      currency = False
    end
    object Qry_ListTotalKGAfter: TCurrencyField
      FieldName = 'TotalKGAfter'
      Origin = 'DB.CostingPrintCostS.TotalKGAfter'
      currency = False
    end
    object Qry_ListOutput: TIntegerField
      FieldName = 'Output'
      Origin = 'DB.CostingPrintCostS.Output'
    end
    object Qry_ListUserName: TStringField
      FieldName = 'UserName'
      Origin = 'DB.CostingPrintCostS.UserName'
      FixedChar = True
      Size = 10
    end
    object Qry_ListUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
      Origin = 'DB.CostingPrintCostS.UserUpdateTime'
    end
  end
  object ds21: TDataSource
    DataSet = Qry_List
    Left = 236
    Top = 264
  end
  object updtsql11: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingPrintCostS'
      'set'
      '  InkNGlue_No = :InkNGlue_No,'
      '  Round = :Round,'
      '  Cost = :Cost,'
      '  squeegees = :squeegees,'
      '  times = :times,'
      '  Ink1 = :Ink1,'
      '  Ink1_Name = :Ink1_Name,'
      '  Ink1_Cost = :Ink1_Cost,'
      '  Ink2 = :Ink2,'
      '  Ink2_Name = :Ink2_Name,'
      '  Ink2_Cost = :Ink2_Cost,'
      '  Ink3 = :Ink3,'
      '  Ink3_Name = :Ink3_Name,'
      '  Ink3_Cost = :Ink3_Cost,'
      '  CompoudCost = :CompoudCost,'
      '  TotalKGBefore = :TotalKGBefore,'
      '  TotalKGAfter = :TotalKGAfter,'
      '  Output = :Output,'
      '  UserName = :UserName,'
      '  UserUpdateTime = :getdate()'
      'where'
      '  InkNGlue_No = :OLD_InkNGlue_No and'
      '  Round = :OLD_Round')
    InsertSQL.Strings = (
      'insert into CostingPrintCostS'
      
        '  (InkNGlue_No, Round, Cost, squeegees, times, Ink1, Ink1_Name, ' +
        'Ink1_Cost, '
      
        '   Ink2, Ink2_Name, Ink2_Cost, Ink3, Ink3_Name, Ink3_Cost, Compo' +
        'udCost, '
      
        '   TotalKGBefore, TotalKGAfter, Output, UserName, UserUpdateTime' +
        ')'
      'values'
      
        '  (:InkNGlue_No, :Round, :Cost, :squeegees, :times, :Ink1, :Ink1' +
        '_Name, '
      
        '   :Ink1_Cost, :Ink2, :Ink2_Name, :Ink2_Cost, :Ink3, :Ink3_Name,' +
        ' :Ink3_Cost, '
      
        '   :CompoudCost, :TotalKGBefore, :TotalKGAfter, :Output, :UserNa' +
        'me, getdate())')
    DeleteSQL.Strings = (
      'delete from CostingPrintCostS'
      'where'
      '  InkNGlue_No = :OLD_InkNGlue_No and'
      '  Round = :OLD_Round')
    Left = 240
    Top = 304
  end
  object TemQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ISNULL(MAX(InkNGlue_No), 0) + 1 AS NextNo from CostingPri' +
        'ntCostS')
    Left = 148
    Top = 304
  end
  object qry_INK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from'
      
        '(SELECT C.season, CP.Ink1_Name AS Ink_Name,CP.Ink1_Cost as Ink_C' +
        'ost'
      'FROM CostingPrintCost C'
      'LEFT JOIN CostingPrintCosts CP ON CP.InkNGlue_No = C.InkNGlue_No'
      'UNION ALL'
      
        'SELECT C.season, CP.Ink2_Name AS Ink_Name,CP.Ink2_Cost as Ink_Co' +
        'st'
      'FROM CostingPrintCost C'
      'LEFT JOIN CostingPrintCosts CP ON CP.InkNGlue_No = C.InkNGlue_No'
      'UNION ALL'
      
        'SELECT C.season, CP.Ink3_Name AS Ink_Name,CP.Ink3_Cost as Ink_Co' +
        'st'
      'FROM CostingPrintCost C'
      'LEFT JOIN CostingPrintCosts CP ON CP.InkNGlue_No = C.InkNGlue_No'
      ')A group by season,Ink_Name,Ink_Cost')
    Left = 348
    Top = 208
  end
end
