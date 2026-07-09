object ScanExport_Det: TScanExport_Det
  Left = 663
  Top = 273
  Width = 1016
  Height = 554
  BorderIcons = [biSystemMenu]
  Caption = 'ScanExport_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1000
    Height = 515
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = #26032#32048#26126#39636
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footers = <
          item
            FieldName = 'CARTONBAR'
            ValueType = fvtCount
          end>
        Title.Caption = #22806#31665#32232#34399'|CARTONBAR'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #25104#21697#20489'|CKBH'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'INDATE'
        Footers = <>
        Title.Caption = #20837#24235#26178#38291'|INDATE'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'EXEDATE'
        Footers = <>
        Title.Caption = #20986#36008#26085#26399'|EXEDATE'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #38617#25976'|Qty'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Title.Caption = #29376#24907'|SB'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'BSX'
        Footers = <>
        Title.Caption = 'Bien so xe'
      end
      item
        EditButtons = <>
        FieldName = 'CON_NO1'
        Footers = <>
        Title.Caption = #36008#27331#32232#34399'|CON_NO'
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Title.Caption = #24207#34399'|XH'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'sgw'
        Footers = <
          item
            DisplayFormat = '#.###'
            FieldName = 'sgw'
            ValueType = fvtSum
          end>
        Title.Caption = #27161#28310#37325#37327'|S Weight'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'rgw'
        Footers = <
          item
            DisplayFormat = '#.###'
            FieldName = 'rgw'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#37325#37327'|In Weight'
      end
      item
        EditButtons = <>
        FieldName = 'ogw'
        Footers = <
          item
            DisplayFormat = '#.###'
            FieldName = 'ogw'
            ValueType = fvtSum
          end>
        Title.Caption = #20986#36008#37325#37327'|Out Weight'
      end>
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = []
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      '??????????')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = '????'
    PageHeader.Font.Style = []
    Units = MM
    Left = 56
    Top = 72
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ScanExport.dsMain
    SQL.Strings = (
      'SELECT *,'
      '    CASE'
      '        WHEN CHARINDEX('#39';'#39', CON_NO) > 0 '
      '        THEN LEFT(CON_NO, CHARINDEX('#39';'#39', CON_NO) - 1) '
      '        ELSE '#39#39' '
      '    END AS BSX,'
      '    CASE'
      '        WHEN CHARINDEX('#39';'#39', CON_NO) > 0 '
      
        '        THEN SUBSTRING(CON_NO, CHARINDEX('#39';'#39', CON_NO) + 1, LEN(C' +
        'ON_NO)) '
      '        ELSE CON_NO '
      '    END AS CON_NO1'
      'from (select * from YWCP union all select * from YWCPOLD) YWCP'
      'where DDBH=:DDBH'
      'order by CartonBar')
    Left = 16
    Top = 72
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1CARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      Origin = 'DB.YWCP.CARTONBAR'
      FixedChar = True
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.YWCP.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1INDATE: TDateTimeField
      FieldName = 'INDATE'
      Origin = 'DB.YWCP.INDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1EXEDATE: TDateTimeField
      FieldName = 'EXEDATE'
      Origin = 'DB.YWCP.EXEDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCP.Qty'
      DisplayFormat = '##,#0'
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      Origin = 'DB.YWCP.SB'
      FixedChar = True
      Size = 1
    end
    object Query1CON_NO: TStringField
      FieldName = 'CON_NO'
      Origin = 'DB.YWCP.CON_NO'
      FixedChar = True
    end
    object Query1XH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWCP.XH'
      FixedChar = True
      Size = 3
    end
    object Query1sgw: TFloatField
      FieldName = 'sgw'
      Origin = 'DB.YWCP.sgw'
    end
    object Query1rgw: TFloatField
      FieldName = 'rgw'
      Origin = 'DB.YWCP.rgw'
    end
    object Query1ogw: TFloatField
      FieldName = 'ogw'
      Origin = 'DB.YWCP.ogw'
    end
    object Query1BSX: TStringField
      FieldName = 'BSX'
      FixedChar = True
    end
    object Query1CON_NO1: TStringField
      FieldName = 'CON_NO1'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 72
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
end
