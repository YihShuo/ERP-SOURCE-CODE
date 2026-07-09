object NotiChange: TNotiChange
  Left = 314
  Top = 187
  Width = 1305
  Height = 675
  Caption = 'Noti Change'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 72
    Align = alTop
    TabOrder = 0
    object bbb4: TBitBtn
      Left = 80
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bbb4Click
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
    object bbb5: TBitBtn
      Left = 128
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bbb5Click
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
    object bbb6: TBitBtn
      Left = 176
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bbb6Click
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
    object btExcel_Mat: TBitBtn
      Left = 224
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btExcel_MatClick
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 72
    Width = 1289
    Height = 564
    Align = alClient
    DataSource = DSNoti
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
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TestNo'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'stage'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Width = 70
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'NotiChangeNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'NO'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Serino'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'ApplicationDate'
        Footers = <>
        Title.Caption = 'Ngay nop don'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DescriptionBeforeChange'
        Footers = <>
        Title.Caption = 'Mo ta truoc thay doi'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DescriptionAfterChange'
        Footers = <>
        Title.Caption = 'Mo ta sau thay doi'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ReasonChange'
        Footers = <>
        Title.Caption = 'Ly do'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ProposalDepartment'
        Footers = <>
        Title.Caption = 'Don vi de xuat|ID'
        Width = 80
        OnEditButtonClick = DBGridEh1Columns11EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'ProposalDepartmentName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Don vi de xuat| Ten'
      end
      item
        EditButtons = <>
        FieldName = 'ResponsibleDepartment'
        Footers = <>
        Title.Caption = 'Don vi chiu trach nhiem|ID'
        Width = 80
        OnEditButtonClick = DBGridEh1Columns13EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'ResponsibleDepartmentName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Don vi chiu trach nhiem|Ten'
      end
      item
        EditButtons = <>
        FieldName = 'UnitManager'
        Footers = <>
        Title.Caption = 'Chu quan don vi|ID'
        Width = 80
        OnEditButtonClick = DBGridEh1Columns15EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'UnitManagerName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Chu quan don vi|Ten'
      end
      item
        EditButtons = <>
        FieldName = 'ManageRelatedUnits'
        Footers = <>
        Title.Caption = 'Chu quan don vi lien quan|ID'
        Width = 80
        OnEditButtonClick = DBGridEh1Columns17EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'ManageRelatedUnitsName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Chu quan don vi lien quan|Ten'
      end
      item
        EditButtons = <>
        FieldName = 'IDLeader'
        Footers = <>
        Title.Caption = 'To truong|ID'
        Width = 80
        OnEditButtonClick = DBGridEh1Columns19EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'IDLeaderName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'To truong|Ten'
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Width = 80
      end>
  end
  object QryNoti: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQLNoti
    Left = 224
    Top = 160
    object QryNotiTestNo: TStringField
      FieldName = 'TestNo'
    end
    object QryNotiFD: TStringField
      FieldName = 'FD'
    end
    object QryNotistage: TStringField
      FieldName = 'stage'
    end
    object QryNotiXieMing: TStringField
      FieldName = 'XieMing'
    end
    object QryNotiArticle: TStringField
      FieldName = 'Article'
    end
    object QryNotiNotiChangeNO: TStringField
      FieldName = 'NotiChangeNO'
    end
    object QryNotiSerino: TIntegerField
      FieldName = 'Serino'
    end
    object QryNotiApplicationDate: TDateTimeField
      FieldName = 'ApplicationDate'
    end
    object QryNotiDescriptionBeforeChange: TStringField
      FieldName = 'DescriptionBeforeChange'
    end
    object QryNotiDescriptionAfterChange: TStringField
      FieldName = 'DescriptionAfterChange'
    end
    object QryNotiReasonChange: TStringField
      FieldName = 'ReasonChange'
    end
    object QryNotiProposalDepartment: TStringField
      FieldName = 'ProposalDepartment'
    end
    object QryNotiResponsibleDepartment: TStringField
      FieldName = 'ResponsibleDepartment'
    end
    object QryNotiUnitManager: TStringField
      FieldName = 'UnitManager'
    end
    object QryNotiManageRelatedUnits: TStringField
      FieldName = 'ManageRelatedUnits'
    end
    object QryNotiIDLeader: TStringField
      FieldName = 'IDLeader'
    end
    object QryNotiUserID: TStringField
      FieldName = 'UserID'
    end
    object QryNotiUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object QryNoticheckdata: TIntegerField
      FieldName = 'checkdata'
    end
    object QryNotiflowflag: TStringField
      FieldName = 'flowflag'
    end
    object QryNotiYN: TStringField
      FieldName = 'YN'
    end
    object QryNotiProposalDepartmentName: TStringField
      FieldName = 'ProposalDepartmentName'
    end
    object QryNotiResponsibleDepartmentName: TStringField
      FieldName = 'ResponsibleDepartmentName'
    end
    object QryNotiUnitManagerName: TStringField
      FieldName = 'UnitManagerName'
    end
    object QryNotiManageRelatedUnitsName: TStringField
      FieldName = 'ManageRelatedUnitsName'
    end
    object QryNotiIDLeaderName: TStringField
      FieldName = 'IDLeaderName'
    end
  end
  object DSNoti: TDataSource
    DataSet = QryNoti
    Left = 224
    Top = 192
  end
  object UpdateSQLNoti: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE Shoetest_NotiChange'
      'SET'
      '  ApplicationDate = :ApplicationDate,'
      '  DescriptionBeforeChange = :DescriptionBeforeChange,'
      '  DescriptionAfterChange = :DescriptionAfterChange,'
      '  ReasonChange = :ReasonChange,'
      '  ProposalDepartment = :ProposalDepartment,'
      '  ProposalDepartmentName = :ProposalDepartmentName,'
      '  ResponsibleDepartment = :ResponsibleDepartment,'
      '  ResponsibleDepartmentName = :ResponsibleDepartmentName,'
      '  UnitManager = :UnitManager,'
      '  UnitManagerName = :UnitManagerName,'
      '  ManageRelatedUnits = :ManageRelatedUnits,'
      '  ManageRelatedUnitsName = :ManageRelatedUnitsName,'
      '  IDLeader = :IDLeader,'
      '  IDLeaderName = :IDLeaderName,'
      '  UserID = :UserID,'
      '  USERDATE = :USERDATE,'
      '  flowflag = :flowflag,'
      '  YN = :YN'
      'WHERE'
      '  TestNo = :OLD_TestNo'
      '  AND NotiChangeNO = :OLD_NotiChangeNO;')
    InsertSQL.Strings = (
      'INSERT INTO Shoetest_NotiChange'
      
        '  (NotiChangeNO, TestNo, ApplicationDate, DescriptionBeforeChang' +
        'e, DescriptionAfterChange,'
      
        '   ReasonChange, ProposalDepartment, ProposalDepartmentName, Res' +
        'ponsibleDepartment, ResponsibleDepartmentName, UnitManager, Unit' +
        'ManagerName,'
      
        '   ManageRelatedUnits, ManageRelatedUnitsName, IDLeader, IDLeade' +
        'rName, UserID, USERDATE, flowflag, YN)'
      'VALUES'
      
        '  (:NotiChangeNO, :TestNo, :ApplicationDate, :DescriptionBeforeC' +
        'hange, :DescriptionAfterChange, '
      
        '   :ReasonChange, :ProposalDepartment, :ProposalDepartmentName, ' +
        ':ResponsibleDepartment, :ResponsibleDepartmentName, :UnitManager' +
        ', :UnitManagerName,'
      
        '   :ManageRelatedUnits, :ManageRelatedUnitsName, :IDLeader, :IDL' +
        'eaderName, :UserID, :USERDATE, :flowflag, :YN);')
    Left = 224
    Top = 224
  end
  object QueryTemp: TQuery
    DatabaseName = 'DB'
    Left = 265
    Top = 193
  end
end
