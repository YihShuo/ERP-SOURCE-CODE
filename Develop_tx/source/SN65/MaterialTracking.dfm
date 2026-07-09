object MaterialTracking1: TMaterialTracking1
  Left = 1147
  Top = 322
  Width = 1305
  Height = 675
  Caption = 'MaterialTracking'
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
  object MaterialTracking1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    Align = alClient
    Caption = 'MaterialTracking'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1287
      Height = 52
      Align = alTop
      TabOrder = 0
      object season: TComboBox
        Left = 13
        Top = 20
        Width = 118
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = 'season'
      end
      object Button1: TButton
        Left = 215
        Top = 20
        Width = 60
        Height = 20
        Caption = 'Caculate'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 143
        Top = 20
        Width = 61
        Height = 20
        Caption = 'Query'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 53
      Width = 1287
      Height = 582
      Align = alClient
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 1285
        Height = 580
        Align = alClient
        DataSource = DataSource1
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
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'COLUMN1'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'jijie'
            Footers = <>
            Title.Caption = 'Season'
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'admindate'
            Footers = <>
            Width = 182
          end>
      end
      object Memo1: TMemo
        Left = 117
        Top = 208
        Width = 150
        Height = 72
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
        Visible = False
      end
      object Memo2: TMemo
        Left = 98
        Top = 299
        Width = 150
        Height = 72
        Lines.Strings = (
          'Memo2')
        TabOrder = 2
        Visible = False
      end
      object Memo3: TMemo
        Left = 364
        Top = 189
        Width = 150
        Height = 72
        Lines.Strings = (
          'Memo3')
        TabOrder = 3
        Visible = False
      end
      object Memo4: TMemo
        Left = 377
        Top = 286
        Width = 150
        Height = 72
        Lines.Strings = (
          'Memo4')
        TabOrder = 4
        Visible = False
      end
    end
  end
  object startcfm: TQuery
    DatabaseName = 'dB'
    Left = 97
    Top = 105
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 185
    Top = 105
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select '#39'Uppers'#39',jijie,main.Stage,SRDet_ML.admindate from (select' +
        ' kfxxzl.jijie,ypzl.kfjd as Stage from kfxxzl'
      
        'left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao ' +
        '= kfxxzl.shehao '
      'where jijie='#39'20S'#39' and kfjd is not null and kfjd<>'#39#39
      'group by kfxxzl.jijie,ypzl.kfjd)main '
      
        'left join (select season,stage,admindate from SRDet_ML group by ' +
        'season,stage,admindate )SRDet_ML on SRDet_ML.season=main.jijie a' +
        'nd SRDet_ML.stage=main.Stage '
      'union  '
      
        'select '#39'Stitching'#39',jijie,main.Stage,SRDet_FML.admindate from (se' +
        'lect kfxxzl.jijie,ypzl.kfjd as Stage from kfxxzl'
      
        'left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao ' +
        '= kfxxzl.shehao '
      'where jijie='#39'20S'#39' and kfjd is not null and kfjd<>'#39#39
      'group by kfxxzl.jijie,ypzl.kfjd)main'
      
        'left join (select season,stage,admindate from SRDet_FML group by' +
        ' season,stage,admindate )SRDet_FML on SRDet_FML.season=main.jiji' +
        'e and SRDet_FML.stage=main.Stage ')
    Left = 233
    Top = 257
    object Query2COLUMN1: TStringField
      FieldName = 'COLUMN1'
      FixedChar = True
      Size = 9
    end
    object Query2jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object Query2Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object Query2admindate: TStringField
      FieldName = 'admindate'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query2
    Left = 233
    Top = 209
  end
end
